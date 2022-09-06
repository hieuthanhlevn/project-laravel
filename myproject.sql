-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2022 at 06:42 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$PWL7w2fbvK23D9m03/bmyeqIo96qZzDvtSRpSqfS9f9Zz5KmYIEg.', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `category_id`, `post_title`, `post_slug`, `post_image`, `post_details`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ciza thay đổi phong cách thương hiệu', 'ciza-thay-đổi-phong-cách-thương-hiệu', 'upload/post/1732414294861095.jpg', '<p>Thương hiệu Ciza dần chuyển hướng sang phong c&aacute;ch thời trang thể thao để đến gần hơn với kh&aacute;ch h&agrave;ng mục ti&ecirc;u.</p>\r\n\r\n<p>Trung th&agrave;nh với phong c&aacute;ch thiết kế casual với slogan &quot;More than comfortable&quot; từ những ng&agrave;y đầu th&agrave;nh lập, Ciza tập trung v&agrave;o những thiết kế đơn giản, chọn chất liệu v&agrave; phom d&aacute;ng theo ti&ecirc;u ch&iacute; thoải m&aacute;i cho người sử dụng. Sau ba năm th&agrave;nh lập v&agrave; ph&aacute;t triển, nh&atilde;n h&agrave;ng n&agrave;y t&aacute;i tạo thương hiệu nhưng vẫn giữ nguy&ecirc;n tinh thần n&agrave;y.</p>\r\n\r\n<p>CEO Ciza - Thắng Trần cho biết, tư duy, th&oacute;i quen của người ti&ecirc;u d&ugrave;ng ng&agrave;nh thời trang &iacute;t nhiều c&oacute; sự thay đổi sau Covid 19. Họ lựa chọn mua sắm những sản phẩm mang t&iacute;nh ứng dụng cao, ph&ugrave; hợp để sử dụng h&agrave;ng ng&agrave;y. B&ecirc;n cạnh đ&oacute;, vấn đề sức khỏe cũng l&agrave; ưu ti&ecirc;n h&agrave;ng đầu.</p>\r\n\r\n<p>Theo &ocirc;ng, tại Việt Nam, hầu hết nam giới đều gặp kh&oacute; khăn trong việc quản l&yacute; thời gian cho c&aacute;c hoạt động thể chất. Đ&oacute; ch&iacute;nh l&agrave; l&yacute; do nh&atilde;n h&agrave;ng chuyển hướng sang phong c&aacute;ch thể thao, hướng người sử dụng tới lối sống chất lượng cao, khuyến kh&iacute;ch hoạt động thể chất, sống năng động v&agrave; khỏe mạnh hơn.</p>\r\n\r\n<p>Lấy thể thao l&agrave;m d&ograve;ng sản phẩm chủ đạo, thương hiệu cung cấp cho người những bộ trang phục ph&ugrave; hợp sử dụng với mọi ho&agrave;n cảnh như đi l&agrave;m, đi chơi v&agrave; tập luyện thể thao.</p>\r\n\r\n<p><img alt=\"Lối sống năng động là nguồn cảm hứng cho CIZA trong sản xuất sản phẩm. Ảnh: CIZA\" src=\"https://i1-giaitri.vnecdn.net/2022/04/08/image001-6722-1649414823.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=gCyibm4McWFdVMOkM-qJ0Q\" /></p>\r\n\r\n<p>Lối sống năng động l&agrave; nguồn cảm hứng cho Ciza trong sản xuất sản phẩm.</p>\r\n\r\n<p>Đơn vị gặp kh&ocirc;ng &iacute;t kh&oacute; khăn khi đưa ra quyết định về việc thay đổi phong c&aacute;ch thương hiệu. CEO Thắng Trần chia sẻ, nhiều người cho rằng việc thay đổi n&agrave;y sẽ khiến thương hiệu lặp lại b&agrave;i to&aacute;n khởi nghiệp c&aacute;ch đ&acirc;y ba năm, l&atilde;ng ph&iacute; t&agrave;i nguy&ecirc;n v&agrave; thời gian. Điều đ&oacute; v&ocirc; t&igrave;nh tạo &aacute;p lực kh&ocirc;ng nhỏ đối với đội ngũ.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, h&atilde;ng vẫn ki&ecirc;n tr&igrave; b&aacute;m đuổi mục ti&ecirc;u của m&igrave;nh bằng sự quyết t&acirc;m v&agrave; ki&ecirc;n tr&igrave;. &Ocirc;ng cho rằng việc chuyển m&igrave;nh theo phong c&aacute;ch thời trang thể thao kh&ocirc;ng l&agrave;m mất đi bản sắc thương hiệu đ&atilde; tạo dựng, m&agrave; l&agrave; một bước tiến mới để đ&oacute;n đầu xu hướng ti&ecirc;u d&ugrave;ng v&agrave; thị trường vốn cạnh tranh khốc liệt.</p>\r\n\r\n<p>Để ph&ugrave; hợp với mục ti&ecirc;u theo đuổi của thương hiệu, Ciza thay đổi bộ nhận diện thương hiệu quen thuộc. Từ logo đơn giản l&agrave; chữ Ciza với gam m&agrave;u trắng, x&aacute;m, đen, nh&atilde;n h&agrave;ng l&agrave;m mới to&agrave;n bộ với logo v&agrave; m&agrave;u chủ đạo đỏ, trắng v&agrave; xanh navy nhằm thể hiện tinh thần thể thao.</p>\r\n\r\n<p><img alt=\"Bộ nhận diện thương hiệu CIZA dùng ba gam màu trắng, đỏ, xanh navy. Ảnh: CIZA\" src=\"https://i1-giaitri.vnecdn.net/2022/04/08/image002-5492-1649414823.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=qXgx1lY4Zt6mPiZ-nKtFQw\" /></p>\r\n\r\n<p>Bộ nhận diện thương hiệu Ciza d&ugrave;ng ba gam m&agrave;u trắng, đỏ, xanh navy.</p>\r\n\r\n<p>Bộ sưu tập h&egrave; 2022 sắp xuất hiện v&agrave;o th&aacute;ng 4 sẽ thể hiện r&otilde; n&eacute;t sự thay đổi n&agrave;y qua thiết kế &aacute;o polo, đồ bộ, quần jogger v&agrave; &aacute;o thun. Điểm nhấn trong kiểu d&aacute;ng, m&agrave;u sắc sẽ g&oacute;p phần gi&uacute;p thương hiệu &quot;F5&quot; sản phẩm.</p>\r\n\r\n<p>B&ecirc;n cạnh mẫu m&atilde; v&agrave; m&agrave;u sắc, đơn vị duy tr&igrave; ti&ecirc;u ch&iacute; sử dụng chất liệu tạo sự thoải m&aacute;i tối đa cho người sử dụng. Việc quản l&yacute; chuỗi cung ứng từ sợi, vải v&agrave; những nguy&ecirc;n phụ liệu gi&uacute;p doanh nghiệp l&agrave;m chủ chất lượng đầu ra. Thương hiệu ưu ti&ecirc;n lựa chọn những loại vải thun, cotton, dệt kim cao cấp v&agrave; rayon th&acirc;n thiện với m&ocirc;i trường. Những chất liệu n&agrave;y kh&ocirc;ng chỉ mềm nhẹ, tho&aacute;ng kh&iacute; m&agrave; c&ograve;n gi&uacute;p thiết kế đứng d&aacute;ng hơn.</p>', '2022-05-09 22:03:38', NULL),
(2, 1, 'Loạt sản phẩm thời trang hàng hiệu nam đồng giảm 50%', 'loạt-sản-phẩm-thời-trang-hàng-hiệu-nam-đồng-giảm-50%', 'upload/post/1732414505369879.jpg', '<p>Gi&agrave;y da nam, đồng hồ nam của Pierre Cardin, thắt lưng Oscar ch&iacute;nh h&atilde;ng đang b&aacute;n đồng mức ưu đ&atilde;i 50% tr&ecirc;n Shop VnExpress.</p>\r\n\r\n<p><img alt=\"Đồng hồ nam Pierre Cardin CPI.2038 mặt mặt tròn, đường kính 44 mm, lắp kính khoáng chịu lực, chống trày xước. Đồng hồ thiết kế 6 kim. Dây thép không gỉ, khóa cài dễ dàng. Khả năng chống nước 3 ATM, có thể đeo khi rửa tay, đi mưa. Sản phẩm bảo hành 2 năm toàn cầu, ưu đãi 50% duy nhất ngày hôm nay còn 2,6 triệu đồng.\" src=\"https://i1-giadinh.vnecdn.net/2021/11/19/2-8697-1637297426.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=fKpEQGX3aOkAIj_oGjy_YQ\" /></p>\r\n\r\n<p><a href=\"https://shop.vnexpress.net/dong-ho-nam-pierre-cardin-chinh-hang-cpi-2038-bao-hanh-2-nam-toan-cau-may-pin-thep-khong-gi-186046.html?utm_source=PR&amp;utm_medium=VnExpress.net&amp;utm_campaign=1911_Phukiennam_PierreCardin_Thang112021#c:1_Tr%E1%BA%AFng%23s1:i61_Freesize\" rel=\"dofollow\" target=\"_blank\">Đồng hồ nam Pierre Cardin CPI.2038</a>&nbsp;mặt tr&ograve;n, đường k&iacute;nh 44 mm, lắp k&iacute;nh kho&aacute;ng chịu lực, chống tr&agrave;y xước. Đồng hồ thiết kế 6 kim. D&acirc;y th&eacute;p kh&ocirc;ng gỉ, kh&oacute;a c&agrave;i dễ d&agrave;ng. Vỏ m&aacute;y cũng bằng th&eacute;p kh&ocirc;ng gỉ, kiểu m&aacute;y Quazt. Khả năng chống nước 3 ATM, c&oacute; thể đeo khi rửa tay, đi mưa. Sản phẩm bảo h&agrave;nh 2 năm to&agrave;n cầu, ưu đ&atilde;i 50% duy nhất ng&agrave;y h&ocirc;m nay c&ograve;n 2,6 triệu đồng.</p>\r\n\r\n<p><img alt=\"Đồng hồ nam Pierre Cardin CPI.20 màu đen, mặt tròn, đường kính 44 mm, lắp kính khoáng chịu lực, chống trày xước. Đồng hồ thiết kế 6 kim. Dây thép không gỉ, khóa cài dễ dàng. Vỏ máy cũng bằng thép không gỉ, kiểu máy Quazt. Khả năng chống nước 3 ATM, có thể đeo khi rửa tay, đi mưa. Sản phẩm bảo hành 2 năm toàn cầu, ưu đãi 50% duy nhất ngày hôm nay còn 2,6 triệu đồng.\" src=\"https://i1-giadinh.vnecdn.net/2021/11/19/3-1637297223-1637297251-4470-1637297427.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=NK4w4W8NbJhtJzWSt6MBAA\" /></p>\r\n\r\n<p><a href=\"https://shop.vnexpress.net/dong-ho-nam-pierre-cardin-chinh-hang-cpi-2031-bao-hanh-2-nam-toan-cau-may-pin-thep-khong-gi-186041.html?utm_source=PR&amp;utm_medium=VnExpress.net&amp;utm_campaign=1911_Phukiennam_PierreCardin_Thang112021#c:1_%C4%90en%23s1:i61_Freesize\" rel=\"dofollow\" target=\"_blank\">Đồng hồ nam Pierre Cardin CPI.2031</a>&nbsp;m&agrave;u đen, mặt tr&ograve;n, đường k&iacute;nh 44 mm, lắp k&iacute;nh kho&aacute;ng chịu lực, chống tr&agrave;y xước. Đồng hồ thiết kế 6 kim. D&acirc;y th&eacute;p kh&ocirc;ng gỉ, kh&oacute;a c&agrave;i dễ d&agrave;ng. Vỏ m&aacute;y cũng bằng th&eacute;p kh&ocirc;ng gỉ, kiểu m&aacute;y Quazt. Khả năng chống nước 3 ATM, c&oacute; thể đeo khi rửa tay, đi mưa. Sản phẩm bảo h&agrave;nh 2 năm to&agrave;n cầu, ưu đ&atilde;i 50% duy nhất ng&agrave;y h&ocirc;m nay c&ograve;n 2,6 triệu đồng.</p>\r\n\r\n<p><img alt=\"Giày lười Pierre Cardin PCMFWLE322BRW có thân trên làm từ da bò, màu nâu, có thể làm sạch bằng xi đánh giày, lotion dưỡng da và dùng khăn ẩm sạch để lau sản phẩm. Sản phẩm có đủ các size từ 39 đến 43, hiện được ưu đãi 50% còn 1,495 triệu đồng.\" src=\"https://i1-giadinh.vnecdn.net/2021/11/19/4-1637297636-1637297645-7992-1637300830.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=EybB15JolJiRG0GaI9BPuA\" /></p>\r\n\r\n<p><a href=\"https://shop.vnexpress.net/giay-luoi-da-pierre-cardin-pcmfwle322brw-mau-nau-179539.html?utm_source=PR&amp;utm_medium=VnExpress.net&amp;utm_campaign=1911_Phukiennam_PierreCardin_Thang112021#c:1_N%C3%A2u%23s1:i14_43\" rel=\"dofollow\" target=\"_blank\">Gi&agrave;y lười Pierre Cardin PCMFWLE322BRW</a>&nbsp;c&oacute; th&acirc;n tr&ecirc;n l&agrave;m từ da b&ograve;, m&agrave;u n&acirc;u, c&oacute; thể l&agrave;m sạch bằng xi đ&aacute;nh gi&agrave;y, lotion dưỡng da v&agrave; d&ugrave;ng khăn ẩm sạch để lau. Sản phẩm c&oacute; đủ c&aacute;c size từ 39 đến 43, hiện được ưu đ&atilde;i 50% c&ograve;n 1,495 triệu đồng.</p>\r\n\r\n<p><img alt=\"Giày lười Pierre Cardin PCMFWLE713BLK  có thân trên làm từ da, màu đen, có thể làm sạch bằng xi đánh giày, lotion dưỡng da và dùng khăn ẩm sạch để lau sản phẩm. Đế giầy được làm từ cao su tránh trơn trượt, thiết kế ôm chân tự tin khi cất bước. Thiết kế dạng dây buộc, phù hợp với nơi công sở hay gặp mặt đối tác. Sản phẩm có đủ các size từ 39 đến 43, hiện được ưu đãi 50% còn 1,495 triệu đồng.\" src=\"https://i1-giadinh.vnecdn.net/2021/11/19/5-1637298116-1637298127-3002-1637300830.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=n9tl7zpNvhADqIjww1_RGw\" /></p>\r\n\r\n<p><a href=\"https://shop.vnexpress.net/giay-tay-nam-pierre-cardin-pcmfwle713blk-mau-den-175157.html?utm_source=PR&amp;utm_medium=VnExpress.net&amp;utm_campaign=1911_Phukiennam_PierreCardin_Thang112021#c:1_%C4%90en%23s1:i13_42\" rel=\"dofollow\" target=\"_blank\">Gi&agrave;y lười Pierre Cardin PCMFWLE713BLK</a>&nbsp;c&oacute; th&acirc;n tr&ecirc;n l&agrave;m từ da, m&agrave;u đen, c&oacute; thể l&agrave;m sạch bằng xi đ&aacute;nh gi&agrave;y, lotion dưỡng da v&agrave; d&ugrave;ng khăn ẩm sạch để lau. Đế giầy được l&agrave;m từ cao su tr&aacute;nh trơn trượt. Thiết kế &ocirc;m ch&acirc;n, dạng d&acirc;y buộc, ph&ugrave; hợp cho qu&yacute; &ocirc;ng tại c&ocirc;ng sở hay gặp mặt đối t&aacute;c. Sản phẩm c&oacute; đủ c&aacute;c size từ 39 đến 43, hiện được ưu đ&atilde;i 50% c&ograve;n 1,495 triệu đồng.</p>\r\n\r\n<p><img alt=\"Thắt lưng nam OCMBLAD001 được nhà sản xuất cẩn thận từng công đoạn từ khâu chọn chất liệu da, đường may mũi chỉ cho đến công đoạn hoàn thành sản phẩm, phù hợp với hầu hết quý ông mọi lứa tuổi dự các sự kiện quan trọng. Thắt lưng dài 130 cm, rộng 33 mm, khóa tự động. Sản phẩm có các màu bạc, vàng đồng, đen, đang được ưu đãi 50% còn 995.000 đồng.\" src=\"https://i1-giadinh.vnecdn.net/2021/11/19/2-2646-1637300831.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=OSx4nkJc5Tu-9YOdPe3xMw\" /></p>\r\n\r\n<p><a href=\"https://shop.vnexpress.net/that-lung-nam-ocmblad001-182222.html?utm_source=PR&amp;utm_medium=VnExpress.net&amp;utm_campaign=1911_Phukiennam_PierreCardin_Thang112021#c:3_V%C3%A0ng%20%C4%91%E1%BB%93ng%23s1:i2_M\" rel=\"dofollow\" target=\"_blank\">Thắt lưng nam Oscar cOCMBLAD001</a>&nbsp;được nh&agrave; sản xuất cẩn thận từng c&ocirc;ng đoạn từ kh&acirc;u chọn chất liệu da, đường may mũi chỉ cho đến c&ocirc;ng đoạn ho&agrave;n th&agrave;nh. Sản phẩm ph&ugrave; hợp với hầu hết qu&yacute; &ocirc;ng mọi lứa tuổi trong c&aacute;c sự kiện quan trọng. Thắt lưng d&agrave;i 130 cm, rộng 33 mm, kh&oacute;a tự động. Sản phẩm c&oacute; c&aacute;c m&agrave;u bạc, v&agrave;ng đồng, đen, đang được ưu đ&atilde;i 50% c&ograve;n 995.000 đồng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Thắt lưng nam Oscar OCMBLPD002 làm từ da bò, àu phù hợp với hầu hết quý ông mọi lứa tuổi dự các sự kiện quan trọng. Thắt lưng dài 130 cm, rộng 33 mm. Khóa cài bằng kim loại màu vàng đồng. Sản phẩm đang được ưu đãi 50% còn 995.000 đồng.\" src=\"https://i1-giadinh.vnecdn.net/2021/11/19/9-8440-1637300831.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=sIOhHbTh4n0cD6usXsIvlA\" /></p>\r\n\r\n<p><a href=\"https://shop.vnexpress.net/phu-kien-thoi-trang?utm_source=PR&amp;utm_medium=VnExpress.net&amp;utm_campaign=1911_Phukiennam_PierreCardin_Thang112021\" rel=\"dofollow\" target=\"_blank\">Thắt lưng nam Oscar OCMBLPD002</a>&nbsp;l&agrave;m từ da b&ograve;, tăng sự sang trọng, lịch l&atilde;m cho người mang. Thắt lưng d&agrave;i 130 cm, rộng 33 mm. Kh&oacute;a c&agrave;i bằng kim loại m&agrave;u v&agrave;ng đồng. Sản phẩm đang được ưu đ&atilde;i 50% c&ograve;n 995.000 đồng.</p>\r\n\r\n<p>Ngo&agrave;i c&aacute;c sản phẩm tr&ecirc;n, tại Shop VnExpress c&ograve;n nhiều phụ kiện thời trang như đồng hồ, thắt lưng, gi&agrave;y, k&iacute;nh mắt, mũ... d&agrave;nh cho nam giới của c&aacute;c thương hiệu kh&aacute;c. Tham khảo th&ecirc;m&nbsp;<a href=\"https://shop.vnexpress.net/phu-kien-thoi-trang?utm_source=PR&amp;utm_medium=VnExpress.net&amp;utm_campaign=1911_Phukiennam_PierreCardin_Thang112021\" rel=\"dofollow\" target=\"_blank\">tại đ&acirc;y.</a></p>', '2022-05-09 22:06:59', NULL),
(3, 1, 'Trang phục hè năng động cho nam', 'trang-phục-hè-năng-động-cho-nam', 'upload/post/1732414619754489.jpg', '<p>C&aacute;c kiểu quần jogger, quần thun lửng, &aacute;o ph&ocirc;ng in h&igrave;nh trẻ trung, k&iacute;ch thước rộng r&atilde;i... gi&uacute;p nam giới thoải m&aacute;i vận động, thư gi&atilde;n khi sinh hoạt tại nh&agrave;.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ chị em m&agrave; c&aacute;nh m&agrave;y r&acirc;u cũng c&oacute; nhu cầu &quot;mặc đẹp&quot; ở nh&agrave;. Trang phục phải tho&aacute;ng m&aacute;t, c&oacute; thể mặc khi tập thể thao hay lịch sự khi dạo chơi c&ugrave;ng bạn b&egrave;.</p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; một số kiểu &aacute;o ph&ocirc;ng, quần lửng, quần thể thao hay quần jogger với kiểu d&aacute;ng đơn giản, đa năng, dễ phối với nhiều phụ kiện, d&agrave;nh cho nam.</p>\r\n\r\n<p><img alt=\"Quần short nam Orange Factory Equid UEP9L406 làm từ chất liệu polyester phối cotton thoáng mát. Vải thấm hút tốt, không quá dày, tạo cảm giác thoải mái khi mặc. Kiểu quần cơ bản, đơn giản với màu đen trơn, dễ dàng kết hợp với áo sơ mi, áo thun, áo ba lỗ... diện khi dạo phố hay dã ngoại cùng bạn bè vào dịp cuối tuần. Quần có giá chỉ 99.000 đồng trên Shop VnExpress.\" src=\"https://i1-giadinh.vnecdn.net/2020/04/29/qu-9836-1588162986.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=lBg3tA0ja--Orpy-F8a66w\" /></p>\r\n\r\n<p><a href=\"https://shop.vnexpress.net/sieu-sale-quan-short-nam-orange-factory-equid-uep9l406-den-149387.html?utm_source=PR&amp;utm_medium=VnExpress.net&amp;utm_campaign=workfromhome_04_2020&amp;utm_content=thoitrang#c:1_%C4%90en\" rel=\"dofollow\" target=\"_blank\">Quần short nam Orange Factory Equid UEP9L406</a>&nbsp;l&agrave;m từ chất liệu polyester phối cotton tho&aacute;ng m&aacute;t. Vải thấm h&uacute;t tốt, kh&ocirc;ng qu&aacute; d&agrave;y, tạo cảm gi&aacute;c thoải m&aacute;i khi mặc. Kiểu quần cơ bản, đơn giản với m&agrave;u đen trơn, dễ d&agrave;ng kết hợp với &aacute;o sơ mi, &aacute;o thun, &aacute;o ba lỗ... diện khi dạo phố hay d&atilde; ngoại c&ugrave;ng bạn b&egrave; v&agrave;o dịp cuối tuần. Quần c&oacute; gi&aacute; chỉ 99.000 đồng tr&ecirc;n Shop VnExpress.</p>\r\n\r\n<p><img alt=\"Áo thun trơn Gabo Fashion ATI0001 với hai màu cơ bản trắng, đen.\" src=\"https://i1-giadinh.vnecdn.net/2020/04/29/cc5ea16952e95e7390029c1850e272-8188-3278-1588162986.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=BaiyheKVYUazfXqXBOgdGQ\" /></p>\r\n\r\n<p><a href=\"https://shop.vnexpress.net/ao-thun-tron-2-mau-trang-den-gabo-fashion-ati0001-142075.html?utm_source=PR&amp;utm_medium=VnExpress.net&amp;utm_campaign=workfromhome_04_2020&amp;utm_content=thoitrang\" rel=\"dofollow\" target=\"_blank\">&Aacute;o thun trơn Gabo Fashion ATI0001</a>&nbsp;với hai m&agrave;u cơ bản trắng, đen.&nbsp;Chất liệu thun cotton, co gi&atilde;n bốn chiều, cho người mặc dễ vận động. &Aacute;o phối với quần jean, thun, kaki... đều được. Chất liệu tho&aacute;ng m&aacute;t, dễ chịu, thấm h&uacute;t mồ h&ocirc;i tốt, th&iacute;ch hợp cho những ng&agrave;y h&egrave; oi bức. Sản phẩm c&oacute; gi&aacute; ưu đ&atilde;i 50%, giảm c&ograve;n 100.000 đồng.</p>\r\n\r\n<p><img alt=\"Quần short thể thao nam phối dây kéo Dokafashion, kết hợp lưng thun bản rộng, thêm phần linh hoạt và thoải mái cho người mặc. Chất thun lạnh co giãn bốn chiều với phấn khóa kéo túi dọc hai bên thân quần, tạo điểm nhấn cá tính. Quần có giá 110.000 đồng trên Shop VnExpress, tặng kèm một quần lót nam.\" src=\"https://i1-giadinh.vnecdn.net/2020/04/29/5dd4ba9b7bd9e-qu-n-i-nam-dokaf-1405-8724-1588162986.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=641eHOpk_6g--6ATunWBxw\" /></p>\r\n\r\n<p><a href=\"https://shop.vnexpress.net/quan-short-the-thao-nam-phoi-day-keo-lung-thun-ban-rong-hieu-dokafashion-black-sot01-tang-1-quan-lot-nam-142184.html?utm_source=PR&amp;utm_medium=VnExpress.net&amp;utm_campaign=workfromhome_04_2020&amp;utm_content=thoitrang\" rel=\"dofollow\" target=\"_blank\">Quần short thể thao nam phối d&acirc;y k&eacute;o Dokafashion</a>, kết hợp lưng thun bản rộng, th&ecirc;m phần linh hoạt cho người mặc. Chất thun lạnh co gi&atilde;n bốn chiều với phấn&nbsp;kh&oacute;a k&eacute;o t&uacute;i dọc hai b&ecirc;n th&acirc;n quần, tạo điểm nhấn c&aacute; t&iacute;nh. Quần c&oacute; gi&aacute; 110.000 đồng tr&ecirc;n Shop VnExpress, tặng k&egrave;m một quần l&oacute;t nam.</p>\r\n\r\n<p><img alt=\"Áo thun nam The Cosmo Joy Tee TC1021065R2BE dạng cổ tròn, tay ngắn, được may từ chất liệu 100% cotton, thấm hút mồ hôi tốt, cho cảm giác thoải mái, thoáng mát dù vận động cả ngày. Phái mạnh có thể tùy thích kết hợp cùng quần jeans dài hoặc quần shorts cho phong cách thời trang năng động, hoặc phối cùng áo vest khoác ngoài và giày sneakers cho thêm phần lịch lãm. Áo có giá 129.000 đồng.\" src=\"https://i1-giadinh.vnecdn.net/2020/04/29/hd-1636-1588162987.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=SxZ47FMqfVv-f_0crWJqtw\" /></p>\r\n\r\n<p><a href=\"https://shop.vnexpress.net/ao-thun-nam-the-cosmo-joy-tee-mau-be-tc1021065r2be-152327.html?utm_source=PR&amp;utm_medium=VnExpress.net&amp;utm_campaign=workfromhome_04_2020&amp;utm_content=thoitrang#c:1_Kem%23s1:i2_S\" rel=\"dofollow\" target=\"_blank\">&Aacute;o thun nam The Cosmo Joy Tee TC1021065R2BE</a>&nbsp;dạng&nbsp;cổ tr&ograve;n, tay ngắn, được may từ chất liệu cotton, thấm h&uacute;t mồ h&ocirc;i tốt, cho cảm gi&aacute;c tho&aacute;ng m&aacute;t d&ugrave; vận động cả ng&agrave;y. Ph&aacute;i mạnh c&oacute; thể t&ugrave;y th&iacute;ch kết hợp c&ugrave;ng quần jeans d&agrave;i hoặc quần shorts cho phong c&aacute;ch thời trang năng động, hoặc phối c&ugrave;ng &aacute;o vest kho&aacute;c ngo&agrave;i v&agrave; gi&agrave;y sneakers cho th&ecirc;m phần lịch l&atilde;m. &Aacute;o c&oacute; gi&aacute; 129.000 đồng.</p>\r\n\r\n<p><img alt=\"Áo thun nam polo cổ dệt Pigofashion AHT15 với 6 màu sắc năng động, trẻ trung cho các chàng thoải mái lựa chọn.\" src=\"https://i1-giadinh.vnecdn.net/2020/04/29/5d108a2766532-IMG-2159-Copy-9871-1588162987.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=rVgqJ_RzIfiWOYb03RnSfg\" /></p>\r\n\r\n<p><a href=\"https://shop.vnexpress.net/ao-thun-nam-polo-co-det-chuan-phong-cach-pigofashion-aht15-mau-xanh-vit-113865.html?utm_source=PR&amp;utm_medium=VnExpress.net&amp;utm_campaign=workfromhome_04_2020&amp;utm_content=thoitrang#c:1_Xanh%20c%E1%BB%95%20v%E1%BB%8Bt\" rel=\"dofollow\" target=\"_blank\">&Aacute;o thun nam polo cổ dệt Pigofashion AHT15</a>&nbsp;với 6 m&agrave;u sắc năng động, trẻ trung cho c&aacute;c ch&agrave;ng.&nbsp;Thiết kế cổ bẻ xẻ trụ đơn giản, to&aacute;t l&ecirc;n sự năng động, khỏe khoắn nhưng vẫn kh&ocirc;ng k&eacute;m phần s&agrave;nh điệu.&nbsp;Chất liệu thun mềm mại, th&ocirc;ng tho&aacute;ng v&agrave; co gi&atilde;n khi mặc. &Aacute;o c&oacute; gi&aacute; 149.000 đồng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Quần dài jogger nam thương hiệu Dokafashion có giá ưu đãi 41% trên Shop VnExpress, giảm còn 178.000 đồng (giá gốc 300.000 đồng). Chất liệu vải kaki co giãn, tạo sự thoải mái cho người mặc khi vận động, đi lại hoặc chơi thể thao. Quần có ba màu kem, đen, xám cho phái mạnh thoải mái lựa chọn.\" src=\"https://i1-giadinh.vnecdn.net/2020/04/29/adsf-6194-1588162987.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=mOx4bV1iEHq2fEZncVoWnw\" /></p>\r\n\r\n<p><a href=\"https://shop.vnexpress.net/quan-dai-jogger-nam-kaki-cao-cap-thuong-hieu-dokafashion-sotkk02-146764.html?utm_source=PR&amp;utm_medium=VnExpress.net&amp;utm_campaign=workfromhome_04_2020&amp;utm_content=thoitrang\" rel=\"dofollow\" target=\"_blank\">Quần d&agrave;i jogger nam thương hiệu Dokafashion</a>&nbsp;c&oacute; gi&aacute; ưu đ&atilde;i 41% tr&ecirc;n Shop VnExpress, giảm c&ograve;n 178.000 đồng (gi&aacute; gốc 300.000 đồng). Chất liệu&nbsp;vải kaki co gi&atilde;n, tạo sự thoải m&aacute;i cho người mặc khi vận động, đi lại hoặc chơi thể thao. Quần c&oacute; ba m&agrave;u kem, đen, x&aacute;m.</p>\r\n\r\n<p>Chương tr&igrave;nh ưu đ&atilde;i &quot;Ở nh&agrave; cũng phải đẹp&quot; tr&ecirc;n Shop VnExpress &aacute;p dụng cho c&aacute;c mặt h&agrave;ng thời trang ch&iacute;nh h&atilde;ng, giảm gi&aacute; l&ecirc;n đến 50%. Người ti&ecirc;u d&ugrave;ng nhập m&atilde; TT009, giảm th&ecirc;m 9% cho đơn h&agrave;ng từ 400.000 đồng, giảm tối đa 50.000 đồng. Chương tr&igrave;nh &aacute;p dụng đến hết 30/4. Xem th&ecirc;m th&ocirc;ng tin v&agrave; tham khảo c&aacute;c mặt h&agrave;ng thời trang kh&aacute;c&nbsp;<a href=\"https://shop.vnexpress.net/event/sieu-sale-thoi-trang-o-nha-cung-dep.html?utm_source=PR&amp;utm_medium=VnExpress.net&amp;utm_campaign=workfromhome_04_2020&amp;utm_content=thoitrang\" rel=\"dofollow\" target=\"_blank\">tại đ&acirc;y</a>.</p>', '2022-05-09 22:08:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_categories`
--

CREATE TABLE `blog_post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_post_categories`
--

INSERT INTO `blog_post_categories` (`id`, `blog_category_name`, `blog_category_slug`, `created_at`, `updated_at`) VALUES
(1, 'Thời trang', 'thời-trang', '2022-05-09 22:03:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `brand_image`, `created_at`, `updated_at`) VALUES
(1, 'Coolmate', 'coolmate', 'upload/brand/1730606637629588.jpg', NULL, NULL),
(2, 'Owen', 'owen', 'upload/brand/1730606662490778.jpg', NULL, NULL),
(3, 'Rman', 'rman', 'upload/brand/1730607231043582.jpg', NULL, NULL),
(4, 'KAMONG', 'kamong', 'upload/brand/1730607675545574.jpg', NULL, NULL),
(5, 'KAMONG', 'kamong', 'upload/brand/1730607676028389.jpg', NULL, NULL),
(6, 'Mivino', 'mivino', 'upload/brand/1730608304103926.jpg', NULL, NULL),
(7, 'No brand', 'no-brand', 'upload/brand/1730610661188117.jpg', NULL, NULL),
(8, 'Chelsea', 'chelsea', 'upload/brand/1731162629480533.jpg', NULL, NULL),
(9, 'Ulzzang', 'ulzzang', 'upload/brand/1731163802904514.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `category_icon`, `created_at`, `updated_at`) VALUES
(1, 'Thời Trang Nam', 'thời-trang-nam', 'fa fa-mars-stroke', NULL, '2022-04-26 02:07:32'),
(2, 'Thời Trang Nữ', 'thời-trang-nữ', 'fa fa-venus', NULL, '2022-04-26 02:07:17'),
(3, 'Giày Dép', 'giày-dép', 'fa fa-american-sign-language-interpreting', NULL, '2022-04-20 00:33:15'),
(4, 'Phụ Kiện', 'phụ-kiện', 'fa fa-life-ring', NULL, '2022-04-20 00:33:24'),
(5, 'Trẻ Em', 'trẻ-em', 'fa fa-sign-language', NULL, '2022-04-20 00:33:34');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'GIAMGIA1', 25, '2022-04-30', 1, '2022-04-20 00:57:33', '2022-04-20 00:57:33'),
(2, 'GIAMGIA', 5, '2022-07-22', 1, '2022-04-25 21:30:30', '2022-04-25 21:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_02_24_025231_create_sessions_table', 1),
(7, '2022_02_24_032324_create_admins_table', 1),
(8, '2022_02_26_143204_create_brands_table', 1),
(9, '2022_02_28_092206_create_categories_table', 1),
(10, '2022_03_02_014553_create_sub_categories_table', 1),
(11, '2022_03_02_072403_create_sub_sub_categories_table', 1),
(12, '2022_03_03_040730_create_products_table', 1),
(13, '2022_03_03_041643_create_multi_imgs_table', 1),
(14, '2022_03_08_065607_create_sliders_table', 1),
(15, '2022_03_22_065613_create_wishlists_table', 1),
(16, '2022_03_25_021144_create_coupons_table', 1),
(17, '2022_04_06_040551_create_orders_table', 1),
(18, '2022_04_06_040749_create_order_items_table', 1),
(19, '2022_04_23_094149_create_carts_table', 2),
(20, '2022_05_10_015943_create_blog_posts_table', 3),
(21, '2022_05_10_020302_create_blog_post_categories_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(10, 2, 'upload/products/multi-image/1730607518734274.jpeg', '2022-04-19 23:25:42', NULL),
(11, 2, 'upload/products/multi-image/1730607519084888.jpeg', '2022-04-19 23:25:43', NULL),
(12, 2, 'upload/products/multi-image/1730607519481159.jpeg', '2022-04-19 23:25:43', NULL),
(13, 2, 'upload/products/multi-image/1730607519899019.jpeg', '2022-04-19 23:25:43', NULL),
(14, 2, 'upload/products/multi-image/1730607520191865.jpeg', '2022-04-19 23:25:44', NULL),
(15, 2, 'upload/products/multi-image/1730607520580301.jpeg', '2022-04-19 23:25:44', NULL),
(16, 2, 'upload/products/multi-image/1730607520979644.jpeg', '2022-04-19 23:25:44', NULL),
(17, 2, 'upload/products/multi-image/1730607521360383.jpeg', '2022-04-19 23:25:45', NULL),
(18, 2, 'upload/products/multi-image/1730607521775763.jpeg', '2022-04-19 23:25:45', NULL),
(19, 3, 'upload/products/multi-image/1730607880447643.jpeg', '2022-04-19 23:31:27', NULL),
(20, 3, 'upload/products/multi-image/1730607880824084.jpeg', '2022-04-19 23:31:28', NULL),
(21, 3, 'upload/products/multi-image/1730607881268301.jpeg', '2022-04-19 23:31:28', NULL),
(22, 3, 'upload/products/multi-image/1730607881767686.jpeg', '2022-04-19 23:31:28', NULL),
(23, 3, 'upload/products/multi-image/1730607882197164.jpeg', '2022-04-19 23:31:29', NULL),
(24, 3, 'upload/products/multi-image/1730607882563116.jpeg', '2022-04-19 23:31:29', NULL),
(25, 3, 'upload/products/multi-image/1730607882929702.jpeg', '2022-04-19 23:31:30', NULL),
(26, 3, 'upload/products/multi-image/1730607883307251.jpeg', '2022-04-19 23:31:30', NULL),
(27, 3, 'upload/products/multi-image/1730607883822508.jpeg', '2022-04-19 23:31:30', NULL),
(37, 5, 'upload/products/multi-image/1730608598444300.jpeg', '2022-04-19 23:42:52', NULL),
(38, 5, 'upload/products/multi-image/1730608598766142.jpeg', '2022-04-19 23:42:52', NULL),
(39, 5, 'upload/products/multi-image/1730608599087816.jpeg', '2022-04-19 23:42:53', NULL),
(40, 5, 'upload/products/multi-image/1730608599448080.jpeg', '2022-04-19 23:42:53', NULL),
(41, 5, 'upload/products/multi-image/1730608599691510.jpeg', '2022-04-19 23:42:53', NULL),
(42, 5, 'upload/products/multi-image/1730608600069289.jpeg', '2022-04-19 23:42:53', NULL),
(43, 5, 'upload/products/multi-image/1730608600450371.jpeg', '2022-04-19 23:42:54', NULL),
(44, 5, 'upload/products/multi-image/1730608600683983.jpeg', '2022-04-19 23:42:54', NULL),
(45, 5, 'upload/products/multi-image/1730608600927550.jpeg', '2022-04-19 23:42:54', NULL),
(46, 6, 'upload/products/multi-image/1730608973455912.jpeg', '2022-04-19 23:48:49', NULL),
(47, 6, 'upload/products/multi-image/1730608973748868.jpeg', '2022-04-19 23:48:50', NULL),
(48, 6, 'upload/products/multi-image/1730608973992262.jpeg', '2022-04-19 23:48:50', NULL),
(49, 6, 'upload/products/multi-image/1730608974292179.jpeg', '2022-04-19 23:48:50', NULL),
(50, 6, 'upload/products/multi-image/1730608974524444.jpeg', '2022-04-19 23:48:50', NULL),
(51, 6, 'upload/products/multi-image/1730608974862247.jpeg', '2022-04-19 23:48:51', NULL),
(52, 6, 'upload/products/multi-image/1730608975105575.jpeg', '2022-04-19 23:48:51', NULL),
(53, 6, 'upload/products/multi-image/1730608975339431.jpeg', '2022-04-19 23:48:51', NULL),
(54, 6, 'upload/products/multi-image/1730608975560558.jpeg', '2022-04-19 23:48:51', NULL),
(55, 7, 'upload/products/multi-image/1730609352448178.jpeg', '2022-04-19 23:54:51', NULL),
(56, 7, 'upload/products/multi-image/1730609352814366.jpeg', '2022-04-19 23:54:51', NULL),
(57, 7, 'upload/products/multi-image/1730609353158208.jpeg', '2022-04-19 23:54:52', NULL),
(58, 7, 'upload/products/multi-image/1730609353550860.jpeg', '2022-04-19 23:54:52', NULL),
(59, 7, 'upload/products/multi-image/1730609353894826.jpeg', '2022-04-19 23:54:52', NULL),
(60, 8, 'upload/products/multi-image/1730610870137799.jpeg', '2022-04-20 00:18:58', NULL),
(61, 8, 'upload/products/multi-image/1730610870469029.jpeg', '2022-04-20 00:18:59', NULL),
(62, 8, 'upload/products/multi-image/1730610870739396.jpeg', '2022-04-20 00:18:59', NULL),
(63, 8, 'upload/products/multi-image/1730610871059249.jpeg', '2022-04-20 00:18:59', NULL),
(64, 8, 'upload/products/multi-image/1730610871458460.jpeg', '2022-04-20 00:19:00', NULL),
(65, 8, 'upload/products/multi-image/1730610871720202.jpeg', '2022-04-20 00:19:00', NULL),
(66, 8, 'upload/products/multi-image/1730610872063961.jpeg', '2022-04-20 00:19:00', NULL),
(67, 8, 'upload/products/multi-image/1730610872319354.jpeg', '2022-04-20 00:19:00', NULL),
(68, 8, 'upload/products/multi-image/1730610872627546.jpeg', '2022-04-20 00:19:01', NULL),
(69, 9, 'upload/products/multi-image/1730612532048820.jpeg', '2022-04-20 00:45:23', NULL),
(70, 9, 'upload/products/multi-image/1730612532398960.jpeg', '2022-04-20 00:45:24', NULL),
(71, 9, 'upload/products/multi-image/1730612532829005.jpeg', '2022-04-20 00:45:24', NULL),
(72, 9, 'upload/products/multi-image/1730612533118169.jpeg', '2022-04-20 00:45:24', NULL),
(73, 9, 'upload/products/multi-image/1730612533440364.jpeg', '2022-04-20 00:45:25', NULL),
(74, 9, 'upload/products/multi-image/1730612533766091.jpeg', '2022-04-20 00:45:25', NULL),
(75, 9, 'upload/products/multi-image/1730612534149451.jpeg', '2022-04-20 00:45:25', NULL),
(76, 9, 'upload/products/multi-image/1730612534563508.jpeg', '2022-04-20 00:45:26', NULL),
(77, 9, 'upload/products/multi-image/1730612534912563.jpeg', '2022-04-20 00:45:26', NULL),
(78, 10, 'upload/products/multi-image/1731162871333404.jpeg', '2022-04-26 02:32:48', NULL),
(79, 10, 'upload/products/multi-image/1731162871814536.jpeg', '2022-04-26 02:32:48', NULL),
(80, 10, 'upload/products/multi-image/1731162872366906.jpeg', '2022-04-26 02:32:49', NULL),
(81, 10, 'upload/products/multi-image/1731162872750941.jpeg', '2022-04-26 02:32:49', NULL),
(82, 10, 'upload/products/multi-image/1731162873094435.jpeg', '2022-04-26 02:32:49', NULL),
(83, 10, 'upload/products/multi-image/1731162873438443.jpeg', '2022-04-26 02:32:50', NULL),
(84, 10, 'upload/products/multi-image/1731162873819956.jpeg', '2022-04-26 02:32:50', NULL),
(85, 10, 'upload/products/multi-image/1731162874194652.jpeg', '2022-04-26 02:32:50', NULL),
(86, 10, 'upload/products/multi-image/1731162874507775.jpeg', '2022-04-26 02:32:51', NULL),
(87, 11, 'upload/products/multi-image/1731163199726351.jpeg', '2022-04-26 02:38:01', NULL),
(88, 11, 'upload/products/multi-image/1731163200074666.jpeg', '2022-04-26 02:38:01', NULL),
(89, 11, 'upload/products/multi-image/1731163200447770.jpeg', '2022-04-26 02:38:02', NULL),
(90, 11, 'upload/products/multi-image/1731163200900660.jpeg', '2022-04-26 02:38:02', NULL),
(91, 11, 'upload/products/multi-image/1731163201279866.jpeg', '2022-04-26 02:38:02', NULL),
(92, 11, 'upload/products/multi-image/1731163201750141.jpeg', '2022-04-26 02:38:03', NULL),
(93, 11, 'upload/products/multi-image/1731163202049746.jpeg', '2022-04-26 02:38:03', NULL),
(94, 11, 'upload/products/multi-image/1731163202382432.jpeg', '2022-04-26 02:38:03', NULL),
(95, 11, 'upload/products/multi-image/1731163202874824.jpeg', '2022-04-26 02:38:04', NULL),
(96, 12, 'upload/products/multi-image/1731163707619618.jpeg', '2022-04-26 02:46:05', NULL),
(97, 12, 'upload/products/multi-image/1731163707930161.jpeg', '2022-04-26 02:46:06', NULL),
(98, 12, 'upload/products/multi-image/1731163708279486.jpeg', '2022-04-26 02:46:06', NULL),
(99, 12, 'upload/products/multi-image/1731163708582993.jpeg', '2022-04-26 02:46:06', NULL),
(100, 12, 'upload/products/multi-image/1731163708921915.jpeg', '2022-04-26 02:46:07', NULL),
(101, 12, 'upload/products/multi-image/1731163709503301.jpeg', '2022-04-26 02:46:07', NULL),
(102, 12, 'upload/products/multi-image/1731163709847111.jpeg', '2022-04-26 02:46:07', NULL),
(103, 12, 'upload/products/multi-image/1731163710209567.jpeg', '2022-04-26 02:46:08', NULL),
(104, 12, 'upload/products/multi-image/1731163710525155.jpeg', '2022-04-26 02:46:08', NULL),
(105, 13, 'upload/products/multi-image/1731164136643996.jpeg', '2022-04-26 02:52:54', NULL),
(106, 13, 'upload/products/multi-image/1731164137125107.jpeg', '2022-04-26 02:52:55', NULL),
(107, 13, 'upload/products/multi-image/1731164137617752.jpeg', '2022-04-26 02:52:55', NULL),
(108, 13, 'upload/products/multi-image/1731164137967637.jpeg', '2022-04-26 02:52:56', NULL),
(109, 13, 'upload/products/multi-image/1731164138305408.jpeg', '2022-04-26 02:52:56', NULL),
(110, 14, 'upload/products/multi-image/1731164498160529.jpeg', '2022-04-26 02:58:39', NULL),
(111, 14, 'upload/products/multi-image/1731164498565291.jpeg', '2022-04-26 02:58:40', NULL),
(112, 14, 'upload/products/multi-image/1731164498995906.jpeg', '2022-04-26 02:58:40', NULL),
(113, 14, 'upload/products/multi-image/1731164499611940.jpeg', '2022-04-26 02:58:41', NULL),
(114, 14, 'upload/products/multi-image/1731164500071675.jpeg', '2022-04-26 02:58:41', NULL),
(115, 14, 'upload/products/multi-image/1731164500459727.jpeg', '2022-04-26 02:58:41', NULL),
(116, 14, 'upload/products/multi-image/1731164500792871.jpeg', '2022-04-26 02:58:42', NULL),
(117, 14, 'upload/products/multi-image/1731164501107372.jpeg', '2022-04-26 02:58:42', NULL),
(118, 14, 'upload/products/multi-image/1731164501456459.jpeg', '2022-04-26 02:58:42', NULL),
(119, 15, 'upload/products/multi-image/1731165052662521.jpeg', '2022-04-26 03:07:28', NULL),
(120, 15, 'upload/products/multi-image/1731165053105970.jpeg', '2022-04-26 03:07:28', NULL),
(121, 15, 'upload/products/multi-image/1731165053607849.jpeg', '2022-04-26 03:07:29', NULL),
(122, 15, 'upload/products/multi-image/1731165053953924.jpeg', '2022-04-26 03:07:29', NULL),
(123, 15, 'upload/products/multi-image/1731165054317897.jpeg', '2022-04-26 03:07:30', NULL),
(124, 15, 'upload/products/multi-image/1731165054691438.jpeg', '2022-04-26 03:07:30', NULL),
(125, 15, 'upload/products/multi-image/1731165055166848.jpeg', '2022-04-26 03:07:30', NULL),
(126, 15, 'upload/products/multi-image/1731165055523824.jpeg', '2022-04-26 03:07:31', NULL),
(127, 15, 'upload/products/multi-image/1731165055926885.jpeg', '2022-04-26 03:07:31', NULL),
(128, 16, 'upload/products/multi-image/1731165296419603.jpeg', '2022-04-26 03:11:21', NULL),
(129, 16, 'upload/products/multi-image/1731165296967111.jpeg', '2022-04-26 03:11:21', NULL),
(130, 16, 'upload/products/multi-image/1731165297336113.jpeg', '2022-04-26 03:11:21', NULL),
(131, 16, 'upload/products/multi-image/1731165297646510.jpeg', '2022-04-26 03:11:22', NULL),
(132, 16, 'upload/products/multi-image/1731165298164575.jpeg', '2022-04-26 03:11:22', NULL),
(133, 16, 'upload/products/multi-image/1731165298482780.jpeg', '2022-04-26 03:11:22', NULL),
(134, 16, 'upload/products/multi-image/1731165298917492.jpeg', '2022-04-26 03:11:23', NULL),
(135, 16, 'upload/products/multi-image/1731165299252612.jpeg', '2022-04-26 03:11:23', NULL),
(136, 16, 'upload/products/multi-image/1731165299574912.jpeg', '2022-04-26 03:11:24', NULL),
(137, 17, 'upload/products/multi-image/1731165848371469.jpeg', '2022-04-26 03:20:07', NULL),
(138, 17, 'upload/products/multi-image/1731165848759596.jpeg', '2022-04-26 03:20:07', NULL),
(139, 17, 'upload/products/multi-image/1731165849125713.jpeg', '2022-04-26 03:20:08', NULL),
(140, 17, 'upload/products/multi-image/1731165849673654.jpeg', '2022-04-26 03:20:08', NULL),
(141, 17, 'upload/products/multi-image/1731165850051201.jpeg', '2022-04-26 03:20:08', NULL),
(142, 17, 'upload/products/multi-image/1731165850454719.jpeg', '2022-04-26 03:20:09', NULL),
(143, 17, 'upload/products/multi-image/1731165850787176.jpeg', '2022-04-26 03:20:09', NULL),
(144, 18, 'upload/products/multi-image/1731166211714525.jpeg', '2022-04-26 03:25:53', NULL),
(145, 18, 'upload/products/multi-image/1731166211993428.jpeg', '2022-04-26 03:25:54', NULL),
(146, 18, 'upload/products/multi-image/1731166212319167.jpeg', '2022-04-26 03:25:54', NULL),
(147, 18, 'upload/products/multi-image/1731166212541056.jpeg', '2022-04-26 03:25:54', NULL),
(148, 18, 'upload/products/multi-image/1731166212774564.jpeg', '2022-04-26 03:25:54', NULL),
(149, 18, 'upload/products/multi-image/1731166213096558.jpeg', '2022-04-26 03:25:55', NULL),
(150, 18, 'upload/products/multi-image/1731166213388607.jpeg', '2022-04-26 03:25:55', NULL),
(151, 18, 'upload/products/multi-image/1731166213597803.jpeg', '2022-04-26 03:25:55', NULL),
(152, 18, 'upload/products/multi-image/1731166213843590.jpeg', '2022-04-26 03:25:55', NULL),
(153, 19, 'upload/products/multi-image/1731166476082498.jpeg', '2022-04-26 03:30:05', NULL),
(154, 19, 'upload/products/multi-image/1731166476456163.jpeg', '2022-04-26 03:30:06', NULL),
(155, 19, 'upload/products/multi-image/1731166476963364.jpeg', '2022-04-26 03:30:06', NULL),
(156, 19, 'upload/products/multi-image/1731166477407807.jpeg', '2022-04-26 03:30:07', NULL),
(157, 19, 'upload/products/multi-image/1731166477766392.jpeg', '2022-04-26 03:30:07', NULL),
(158, 19, 'upload/products/multi-image/1731166478210259.jpeg', '2022-04-26 03:30:07', NULL),
(159, 20, 'upload/products/multi-image/1731166664982322.jpeg', '2022-04-26 03:33:06', NULL),
(160, 20, 'upload/products/multi-image/1731166665418931.jpeg', '2022-04-26 03:33:06', NULL),
(161, 20, 'upload/products/multi-image/1731166665884803.jpeg', '2022-04-26 03:33:07', NULL),
(162, 20, 'upload/products/multi-image/1731166666332591.jpeg', '2022-04-26 03:33:07', NULL),
(163, 20, 'upload/products/multi-image/1731166666676822.jpeg', '2022-04-26 03:33:07', NULL),
(164, 20, 'upload/products/multi-image/1731166667078711.jpeg', '2022-04-26 03:33:08', NULL),
(165, 20, 'upload/products/multi-image/1731166667501865.jpeg', '2022-04-26 03:33:08', NULL),
(166, 20, 'upload/products/multi-image/1731166667823702.jpeg', '2022-04-26 03:33:08', NULL),
(167, 20, 'upload/products/multi-image/1731166668222655.jpeg', '2022-04-26 03:33:09', NULL),
(168, 21, 'upload/products/multi-image/1731166925174330.jpeg', '2022-04-26 03:37:14', NULL),
(169, 21, 'upload/products/multi-image/1731166925600117.jpeg', '2022-04-26 03:37:14', NULL),
(170, 21, 'upload/products/multi-image/1731166925919567.jpeg', '2022-04-26 03:37:15', NULL),
(171, 21, 'upload/products/multi-image/1731166926445962.jpeg', '2022-04-26 03:37:15', NULL),
(172, 21, 'upload/products/multi-image/1731166926880515.jpeg', '2022-04-26 03:37:15', NULL),
(173, 21, 'upload/products/multi-image/1731166927268927.jpeg', '2022-04-26 03:37:16', NULL),
(174, 21, 'upload/products/multi-image/1731166927647742.jpeg', '2022-04-26 03:37:16', NULL),
(175, 21, 'upload/products/multi-image/1731166928060969.jpeg', '2022-04-26 03:37:17', NULL),
(176, 21, 'upload/products/multi-image/1731166928597870.jpeg', '2022-04-26 03:37:17', NULL),
(183, 23, 'upload/products/multi-image/1731167409775046.jpeg', '2022-04-26 03:44:56', NULL),
(184, 23, 'upload/products/multi-image/1731167410070197.jpeg', '2022-04-26 03:44:56', NULL),
(185, 23, 'upload/products/multi-image/1731167410384300.jpeg', '2022-04-26 03:44:56', NULL),
(186, 23, 'upload/products/multi-image/1731167410810189.jpeg', '2022-04-26 03:44:57', NULL),
(187, 23, 'upload/products/multi-image/1731167411094925.jpeg', '2022-04-26 03:44:57', NULL),
(188, 23, 'upload/products/multi-image/1731167411464868.jpeg', '2022-04-26 03:44:58', NULL),
(189, 24, 'upload/products/multi-image/1731167709931192.jpeg', '2022-04-26 03:49:42', NULL),
(190, 24, 'upload/products/multi-image/1731167710408717.jpeg', '2022-04-26 03:49:43', NULL),
(191, 24, 'upload/products/multi-image/1731167710829651.jpeg', '2022-04-26 03:49:43', NULL),
(192, 24, 'upload/products/multi-image/1731167711400259.jpeg', '2022-04-26 03:49:44', NULL),
(193, 24, 'upload/products/multi-image/1731167711892949.jpeg', '2022-04-26 03:49:44', NULL),
(194, 24, 'upload/products/multi-image/1731167712369599.jpeg', '2022-04-26 03:49:45', NULL),
(195, 24, 'upload/products/multi-image/1731167712957370.jpeg', '2022-04-26 03:49:45', NULL),
(196, 24, 'upload/products/multi-image/1731167713346081.jpeg', '2022-04-26 03:49:45', NULL),
(197, 24, 'upload/products/multi-image/1731167713876198.jpeg', '2022-04-26 03:49:46', NULL),
(198, 25, 'upload/products/multi-image/1731182700096353.jpeg', '2022-04-26 07:47:58', NULL),
(199, 25, 'upload/products/multi-image/1731182700488343.jpeg', '2022-04-26 07:47:58', NULL),
(200, 25, 'upload/products/multi-image/1731182700943288.jpeg', '2022-04-26 07:47:59', NULL),
(201, 25, 'upload/products/multi-image/1731182701424458.jpeg', '2022-04-26 07:47:59', NULL),
(202, 25, 'upload/products/multi-image/1731182701746662.jpeg', '2022-04-26 07:47:59', NULL),
(203, 25, 'upload/products/multi-image/1731182702255663.jpeg', '2022-04-26 07:48:00', NULL),
(204, 25, 'upload/products/multi-image/1731182702711186.jpeg', '2022-04-26 07:48:00', NULL),
(205, 25, 'upload/products/multi-image/1731182703066143.jpeg', '2022-04-26 07:48:01', NULL),
(206, 25, 'upload/products/multi-image/1731182703496679.jpeg', '2022-04-26 07:48:01', NULL),
(207, 26, 'upload/products/multi-image/1731182837243919.jpeg', '2022-04-26 07:50:09', NULL),
(208, 26, 'upload/products/multi-image/1731182837703395.jpeg', '2022-04-26 07:50:09', NULL),
(209, 26, 'upload/products/multi-image/1731182838219365.jpeg', '2022-04-26 07:50:10', NULL),
(210, 26, 'upload/products/multi-image/1731182838667223.jpeg', '2022-04-26 07:50:10', NULL),
(211, 26, 'upload/products/multi-image/1731182839111256.jpeg', '2022-04-26 07:50:11', NULL),
(212, 26, 'upload/products/multi-image/1731182839692609.jpeg', '2022-04-26 07:50:11', NULL),
(213, 26, 'upload/products/multi-image/1731182840063273.jpeg', '2022-04-26 07:50:11', NULL),
(214, 26, 'upload/products/multi-image/1731182840584292.jpeg', '2022-04-26 07:50:12', NULL),
(215, 26, 'upload/products/multi-image/1731182841021189.jpeg', '2022-04-26 07:50:12', NULL),
(216, 27, 'upload/products/multi-image/1731182983749456.jpeg', '2022-04-26 07:52:28', NULL),
(217, 27, 'upload/products/multi-image/1731182984169886.jpeg', '2022-04-26 07:52:29', NULL),
(218, 27, 'upload/products/multi-image/1731182984702497.jpeg', '2022-04-26 07:52:29', NULL),
(219, 27, 'upload/products/multi-image/1731182985150988.jpeg', '2022-04-26 07:52:30', NULL),
(220, 27, 'upload/products/multi-image/1731182985661227.jpeg', '2022-04-26 07:52:30', NULL),
(221, 27, 'upload/products/multi-image/1731182986149206.jpeg', '2022-04-26 07:52:31', NULL),
(222, 27, 'upload/products/multi-image/1731182986536006.jpeg', '2022-04-26 07:52:31', NULL),
(223, 27, 'upload/products/multi-image/1731182986901244.jpeg', '2022-04-26 07:52:31', NULL),
(224, 27, 'upload/products/multi-image/1731182987151919.jpeg', '2022-04-26 07:52:32', NULL),
(225, 28, 'upload/products/multi-image/1731183138341500.jpeg', '2022-04-26 07:54:56', NULL),
(226, 28, 'upload/products/multi-image/1731183138803441.jpeg', '2022-04-26 07:54:56', NULL),
(227, 28, 'upload/products/multi-image/1731183139169046.jpeg', '2022-04-26 07:54:57', NULL),
(228, 28, 'upload/products/multi-image/1731183139577786.jpeg', '2022-04-26 07:54:57', NULL),
(229, 28, 'upload/products/multi-image/1731183139943604.jpeg', '2022-04-26 07:54:57', NULL),
(230, 28, 'upload/products/multi-image/1731183140531230.jpeg', '2022-04-26 07:54:58', NULL),
(231, 28, 'upload/products/multi-image/1731183141041683.jpeg', '2022-04-26 07:54:58', NULL),
(232, 28, 'upload/products/multi-image/1731183141467924.jpeg', '2022-04-26 07:54:59', NULL),
(233, 28, 'upload/products/multi-image/1731183142000108.jpeg', '2022-04-26 07:54:59', NULL),
(234, 29, 'upload/products/multi-image/1731183373719657.jpeg', '2022-04-26 07:58:40', NULL),
(235, 29, 'upload/products/multi-image/1731183373963808.jpeg', '2022-04-26 07:58:41', NULL),
(236, 29, 'upload/products/multi-image/1731183374533819.jpeg', '2022-04-26 07:58:41', NULL),
(237, 29, 'upload/products/multi-image/1731183374848458.jpeg', '2022-04-26 07:58:41', NULL),
(238, 29, 'upload/products/multi-image/1731183375148341.jpeg', '2022-04-26 07:58:42', NULL),
(239, 29, 'upload/products/multi-image/1731183375474281.jpeg', '2022-04-26 07:58:42', NULL),
(240, 29, 'upload/products/multi-image/1731183375804221.jpeg', '2022-04-26 07:58:42', NULL),
(241, 29, 'upload/products/multi-image/1731183376139473.jpeg', '2022-04-26 07:58:43', NULL),
(242, 30, 'upload/products/multi-image/1731183557164467.jpeg', '2022-04-26 08:01:35', NULL),
(243, 30, 'upload/products/multi-image/1731183557571415.jpeg', '2022-04-26 08:01:36', NULL),
(244, 30, 'upload/products/multi-image/1731183558086323.jpeg', '2022-04-26 08:01:36', NULL),
(245, 30, 'upload/products/multi-image/1731183558456441.jpeg', '2022-04-26 08:01:37', NULL),
(246, 30, 'upload/products/multi-image/1731183558944813.jpeg', '2022-04-26 08:01:37', NULL),
(247, 30, 'upload/products/multi-image/1731183559433165.jpeg', '2022-04-26 08:01:37', NULL),
(248, 30, 'upload/products/multi-image/1731183559873416.jpeg', '2022-04-26 08:01:38', NULL),
(249, 30, 'upload/products/multi-image/1731183560291514.jpeg', '2022-04-26 08:01:38', NULL),
(250, 30, 'upload/products/multi-image/1731183560684034.jpeg', '2022-04-26 08:01:39', NULL),
(251, 31, 'upload/products/multi-image/1731183738555832.jpeg', '2022-04-26 08:04:28', NULL),
(252, 31, 'upload/products/multi-image/1731183738896727.jpeg', '2022-04-26 08:04:29', NULL),
(253, 31, 'upload/products/multi-image/1731183739337002.jpeg', '2022-04-26 08:04:29', NULL),
(254, 31, 'upload/products/multi-image/1731183739755096.jpeg', '2022-04-26 08:04:30', NULL),
(255, 31, 'upload/products/multi-image/1731183740239694.jpeg', '2022-04-26 08:04:30', NULL),
(256, 31, 'upload/products/multi-image/1731183740691303.jpeg', '2022-04-26 08:04:30', NULL),
(257, 31, 'upload/products/multi-image/1731183741072218.jpeg', '2022-04-26 08:04:31', NULL),
(258, 31, 'upload/products/multi-image/1731183741627482.jpeg', '2022-04-26 08:04:31', NULL),
(259, 31, 'upload/products/multi-image/1731183742082371.jpeg', '2022-04-26 08:04:32', NULL),
(260, 32, 'upload/products/multi-image/1731183889833915.jpeg', '2022-04-26 08:06:52', NULL),
(261, 32, 'upload/products/multi-image/1731183890170860.jpeg', '2022-04-26 08:06:53', NULL),
(262, 32, 'upload/products/multi-image/1731183890463328.jpeg', '2022-04-26 08:06:53', NULL),
(263, 32, 'upload/products/multi-image/1731183890929668.jpeg', '2022-04-26 08:06:54', NULL),
(264, 32, 'upload/products/multi-image/1731183891288355.jpeg', '2022-04-26 08:06:54', NULL),
(265, 32, 'upload/products/multi-image/1731183891795269.jpeg', '2022-04-26 08:06:54', NULL),
(266, 33, 'upload/products/multi-image/1731184259492245.jpeg', '2022-04-26 08:12:45', NULL),
(267, 33, 'upload/products/multi-image/1731184259987953.jpeg', '2022-04-26 08:12:45', NULL),
(268, 33, 'upload/products/multi-image/1731184260522730.jpeg', '2022-04-26 08:12:46', NULL),
(269, 33, 'upload/products/multi-image/1731184260816700.jpeg', '2022-04-26 08:12:46', NULL),
(270, 33, 'upload/products/multi-image/1731184261116948.jpeg', '2022-04-26 08:12:47', NULL),
(271, 33, 'upload/products/multi-image/1731184261627703.jpeg', '2022-04-26 08:12:47', NULL),
(272, 33, 'upload/products/multi-image/1731184261941660.jpeg', '2022-04-26 08:12:47', NULL),
(273, 33, 'upload/products/multi-image/1731184262419553.jpeg', '2022-04-26 08:12:48', NULL),
(274, 33, 'upload/products/multi-image/1731184262911460.jpeg', '2022-04-26 08:12:48', NULL),
(275, 34, 'upload/products/multi-image/1731184656658461.jpeg', '2022-04-26 08:19:04', NULL),
(276, 34, 'upload/products/multi-image/1731184657077173.jpeg', '2022-04-26 08:19:04', NULL),
(277, 34, 'upload/products/multi-image/1731184657524236.jpeg', '2022-04-26 08:19:05', NULL),
(278, 34, 'upload/products/multi-image/1731184657849957.jpeg', '2022-04-26 08:19:05', NULL),
(279, 34, 'upload/products/multi-image/1731184658083241.jpeg', '2022-04-26 08:19:05', NULL),
(280, 34, 'upload/products/multi-image/1731184658349437.jpeg', '2022-04-26 08:19:05', NULL),
(281, 34, 'upload/products/multi-image/1731184658842646.jpeg', '2022-04-26 08:19:06', NULL),
(282, 34, 'upload/products/multi-image/1731184659074621.jpeg', '2022-04-26 08:19:06', NULL),
(283, 35, 'upload/products/multi-image/1731184862017783.jpeg', '2022-04-26 08:22:20', NULL),
(284, 35, 'upload/products/multi-image/1731184862376922.jpeg', '2022-04-26 08:22:20', NULL),
(285, 35, 'upload/products/multi-image/1731184862801382.jpeg', '2022-04-26 08:22:20', NULL),
(286, 35, 'upload/products/multi-image/1731184863156565.jpeg', '2022-04-26 08:22:21', NULL),
(287, 35, 'upload/products/multi-image/1731184863646336.jpeg', '2022-04-26 08:22:21', NULL),
(288, 35, 'upload/products/multi-image/1731184864067805.jpeg', '2022-04-26 08:22:22', NULL),
(289, 35, 'upload/products/multi-image/1731184864460110.jpeg', '2022-04-26 08:22:22', NULL),
(290, 35, 'upload/products/multi-image/1731184865028012.jpeg', '2022-04-26 08:22:23', NULL),
(291, 35, 'upload/products/multi-image/1731184865496496.jpeg', '2022-04-26 08:22:23', NULL),
(292, 36, 'upload/products/multi-image/1731185274877362.jpeg', '2022-04-26 08:28:53', NULL),
(293, 36, 'upload/products/multi-image/1731185275403311.jpeg', '2022-04-26 08:28:54', NULL),
(294, 36, 'upload/products/multi-image/1731185275727069.jpeg', '2022-04-26 08:28:54', NULL),
(295, 36, 'upload/products/multi-image/1731185276049007.jpeg', '2022-04-26 08:28:54', NULL),
(296, 36, 'upload/products/multi-image/1731185276549976.jpeg', '2022-04-26 08:28:55', NULL),
(297, 36, 'upload/products/multi-image/1731185276930141.jpeg', '2022-04-26 08:28:55', NULL),
(298, 36, 'upload/products/multi-image/1731185277508741.jpeg', '2022-04-26 08:28:56', NULL),
(299, 36, 'upload/products/multi-image/1731185277897064.jpeg', '2022-04-26 08:28:56', NULL),
(300, 37, 'upload/products/multi-image/1731186233067694.jpeg', '2022-04-26 08:44:07', NULL),
(301, 37, 'upload/products/multi-image/1731186233456657.jpeg', '2022-04-26 08:44:08', NULL),
(302, 37, 'upload/products/multi-image/1731186233804096.jpeg', '2022-04-26 08:44:08', NULL),
(303, 37, 'upload/products/multi-image/1731186234326341.jpeg', '2022-04-26 08:44:08', NULL),
(304, 37, 'upload/products/multi-image/1731186234647669.jpeg', '2022-04-26 08:44:09', NULL),
(305, 37, 'upload/products/multi-image/1731186235039551.jpeg', '2022-04-26 08:44:09', NULL),
(306, 37, 'upload/products/multi-image/1731186235506566.jpeg', '2022-04-26 08:44:10', NULL),
(307, 37, 'upload/products/multi-image/1731186235876033.jpeg', '2022-04-26 08:44:10', NULL),
(308, 37, 'upload/products/multi-image/1731186236176103.jpeg', '2022-04-26 08:44:10', NULL),
(309, 38, 'upload/products/multi-image/1731186550323417.jpeg', '2022-04-26 08:49:10', NULL),
(310, 38, 'upload/products/multi-image/1731186550604985.jpeg', '2022-04-26 08:49:10', NULL),
(311, 38, 'upload/products/multi-image/1731186550949373.jpeg', '2022-04-26 08:49:10', NULL),
(312, 38, 'upload/products/multi-image/1731186551315158.jpeg', '2022-04-26 08:49:11', NULL),
(313, 38, 'upload/products/multi-image/1731186551630615.jpeg', '2022-04-26 08:49:11', NULL),
(314, 38, 'upload/products/multi-image/1731186551907234.jpeg', '2022-04-26 08:49:11', NULL),
(315, 38, 'upload/products/multi-image/1731186552118499.jpeg', '2022-04-26 08:49:11', NULL),
(316, 38, 'upload/products/multi-image/1731186552373476.jpeg', '2022-04-26 08:49:12', NULL),
(317, 38, 'upload/products/multi-image/1731186552767092.jpeg', '2022-04-26 08:49:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `street_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `street_id`, `district_id`, `city_id`, `name`, `email`, `phone`, `post_code`, `notes`, `payment_type`, `payment_method`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `return_date`, `return_order`, `return_reason`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 'Thôn quang châu', 'Hòa Châu - Hòa Vang', 'Đà Nẵng', 'Hiếu Thanh Lê', 'hieuthanhle.vn@gmail.com', '0999999999', NULL, NULL, 'Tiền mặt', 'Thanh toán khi nhận hàng', 125000, NULL, 'EOS54022781', '20/03/2022', 'March', '2022', NULL, NULL, NULL, 'đã giao', '2022-04-20 00:54:46', '2022-04-20 00:55:39'),
(4, 1, '18/49 Khu Phố 1', 'Bình Hưng Hoà A, Bình Tân', 'Thành phố Hồ Chí Minh', 'Hiếu Thanh Lê', 'hieuthanhle.vn@gmail.com', '0999999999', NULL, 'Gần QL1A', 'Tiền mặt', 'Thanh toán khi nhận hàng', 343500, NULL, 'EOS89179413', '20/03/2022', 'March', '2022', '27/04/2022', '1', 'Tôi cần hoàn trả đơn hàng này sản phẩm có lỗi', 'đã giao', '2022-04-20 01:00:55', '2022-04-26 20:23:02'),
(5, 2, 'DUY XUYÊN', 'ĐIỆN BÀN', 'QUẢNG NAM', 'LÊ DẠNG', 'dangle9999@gmail.com', '07949899999', NULL, NULL, 'Tiền mặt', 'Thanh toán khi nhận hàng', 419250, NULL, 'EOS65284464', '20/04/2022', 'April', '2022', '20/04/2022', '1', 'tôi cần hoàn trả đơn hàng này', 'đã giao', '2022-04-20 03:26:14', '2022-04-20 03:31:50'),
(6, 3, '18/49 Khu Phố 1', 'Bình Hưng Hoà A, Bình Tân', 'Đà Nẵng', 'LÊ TUẤN', 'anhtuandn@gmail.com', '079999999', NULL, NULL, 'Tiền mặt', 'Thanh toán khi nhận hàng', 229000, NULL, 'EOS17673439', '20/04/2022', 'April', '2022', '20/04/2022', '2', 'hoàn trả đơn hàng này vì size không vừa', 'đã giao', '2022-04-20 05:26:59', '2022-04-20 07:18:43'),
(7, 4, '10 ĐỐNG ĐA', 'BA ĐÌNH', 'HÀ NỘI', 'User', 'user@gmail.com', '0123456789', NULL, NULL, 'Tiền mặt', 'Thanh toán khi nhận hàng', 375000, NULL, 'EOS65107202', '22/04/2022', 'April', '2022', NULL, NULL, NULL, 'đã hủy', '2022-04-22 09:08:18', '2022-04-28 23:24:40'),
(8, 4, '10 ĐỐNG ĐA', 'BA ĐÌNH', 'HÀ NỘI', 'User', 'user@gmail.com', '0123456789', NULL, NULL, 'Tiền mặt', 'Thanh toán khi nhận hàng', 199000, NULL, 'EOS77052010', '22/04/2022', 'April', '2022', NULL, NULL, NULL, 'đã hủy', '2022-04-22 09:23:22', '2022-04-25 09:13:18'),
(9, 4, '10 ĐỐNG ĐA 1', 'BA ĐÌNH', 'HÀ NỘI', 'User', 'user@gmail.com', '0123456789', NULL, NULL, 'Tiền mặt', 'Thanh toán khi nhận hàng', 16000, NULL, 'EOS41146674', '22/04/2022', 'April', '2022', NULL, NULL, NULL, 'đã giao', '2022-04-22 09:24:41', '2022-05-09 22:17:07'),
(10, 4, 'La bông', 'Hòa Tiến, Hòa Vang', 'Đà Nẵng', 'User', 'user@gmail.com', '0123456789', NULL, NULL, 'Tiền mặt', 'Thanh toán khi nhận hàng', 593000, NULL, 'EOS33954061', '23/04/2022', 'April', '2022', NULL, NULL, NULL, 'đã giao', '2022-04-23 02:03:31', '2022-04-25 09:15:19'),
(11, 4, 'Thôn quang châu', 'Hòa Châu - Hòa Vang', 'Đà Nẵng', 'User', 'user@gmail.com', '0123456789', NULL, NULL, 'Tiền mặt', 'Thanh toán khi nhận hàng', 250000, NULL, 'EOS27942531', '27/04/2022', 'April', '2022', NULL, NULL, NULL, 'đang giao', '2022-04-26 20:16:48', '2022-05-09 22:16:59'),
(13, 4, 'Tiên phước 2', 'Duy Xuyên', 'Quảng Nam', 'User', 'user@gmail.com', '0123456789', NULL, NULL, 'Tiền mặt', 'Thanh toán khi nhận hàng', 725000, NULL, 'EOS51958351', '10/05/2022', 'May', '2022', '10/05/2022', '2', 'Sản phẩm này bị lỗi nên tôi cần trả lại đơn hàng này', 'đã giao', '2022-05-09 22:11:06', '2022-05-09 22:20:47'),
(14, 4, 'THỌ QUANG 2', 'SƠN TRÀ', 'ĐÀ NẴNG', 'User', 'user@gmail.com', '0123456789', NULL, NULL, 'Tiền mặt', 'Thanh toán khi nhận hàng', 359100, NULL, 'EOS26619464', '10/05/2022', 'May', '2022', '10/05/2022', '1', 'Sản phẩm không như mô tả, t cần hoàn trả lại đơn hàng này', 'đã giao', '2022-05-09 22:12:00', '2022-05-09 22:18:48'),
(15, 4, '6781 nguyễn trứ', 'Quận 2', 'Hồ Chí Minh', 'User', 'user@gmail.com', '0123456789', NULL, NULL, 'Tiền mặt', 'Thanh toán khi nhận hàng', 95000, NULL, 'EOS65481386', '10/05/2022', 'May', '2022', NULL, NULL, NULL, 'đang giao', '2022-05-09 22:12:27', '2022-07-10 21:39:52'),
(16, 1, '88 La lông', 'Hòa tiến - hòa vang', 'Đà Nẵng', 'Hiếu Thanh Lê', 'hieuthanhle.vn@gmail.com', '0999999999', NULL, NULL, 'Tiền mặt', 'Thanh toán khi nhận hàng', 128000, NULL, 'EOS10390561', '10/05/2022', 'May', '2022', NULL, NULL, NULL, 'chờ xác nhận', '2022-05-09 22:25:17', NULL),
(17, 1, '120 Bình đa', 'Thanh chương', 'HÀ NỘI', 'Hiếu Thanh Lê', 'hieuthanhle.vn@gmail.com', '0999999999', NULL, NULL, 'Tiền mặt', 'Thanh toán khi nhận hàng', 184000, NULL, 'EOS82662784', '10/05/2022', 'May', '2022', NULL, NULL, NULL, 'xác nhận', '2022-05-09 22:26:36', '2022-07-10 21:39:46'),
(18, 1, 'THỌ QUANG 2', 'Duy Xuyên', 'HÀ NỘI', 'Hiếu Thanh Lê', 'hieuthanhle.vn@gmail.com', '0999999999', NULL, NULL, 'Tiền mặt', 'Thanh toán khi nhận hàng', 96000, NULL, 'EOS98556614', '10/05/2022', 'May', '2022', NULL, NULL, NULL, 'xác nhận', '2022-05-09 22:27:18', '2022-07-10 21:39:41'),
(19, 1, 'HOA CA', 'CAM LE', 'DA NANG', 'Hiếu Thanh Lê', 'hieuthanhle.vn@gmail.com', '0999999999', NULL, NULL, 'Tiền mặt', 'Thanh toán khi nhận hàng', 1255000, NULL, 'EOS26344718', '11/07/2022', 'July', '2022', NULL, NULL, NULL, 'chờ xác nhận', '2022-07-10 21:35:56', NULL),
(20, 1, 'HOA XUAN', 'CAM LE', 'DA NANG', 'Hiếu Thanh Lê', 'hieuthanhle.vn@gmail.com', '0999999999', NULL, NULL, 'Tiền mặt', 'Thanh toán khi nhận hàng', 1439250, NULL, 'EOS68573287', '11/07/2022', 'July', '2022', NULL, NULL, NULL, 'đã giao', '2022-07-10 21:38:03', '2022-07-10 21:39:15');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(2, 3, 1, 'Đen', 'L', '1', 125000, '2022-04-20 00:54:51', NULL),
(3, 4, 7, 'Đen', 'M', '1', 180000, '2022-04-20 01:01:01', NULL),
(4, 4, 7, 'Đen', 'XL', '1', 180000, '2022-04-20 01:01:01', NULL),
(5, 4, 6, 'Trắng', 'XXL', '2', 49000, '2022-04-20 01:01:01', NULL),
(6, 5, 8, 'Trắng', 'XL', '1', 199000, '2022-04-20 03:26:19', NULL),
(7, 5, 7, 'Đen', 'XXL', '1', 180000, '2022-04-20 03:26:19', NULL),
(8, 5, 7, 'Trắng', 'XL', '1', 180000, '2022-04-20 03:26:19', NULL),
(9, 6, 7, 'Đen', 'XXL', '1', 180000, '2022-04-20 05:27:10', NULL),
(10, 6, 6, 'Trắng', 'M', '1', 49000, '2022-04-20 05:27:11', NULL),
(11, 7, 9, 'Đen', '37', '1', 195000, '2022-04-22 09:08:26', NULL),
(12, 7, 7, 'Đen', 'M', '1', 180000, '2022-04-22 09:08:26', NULL),
(13, 8, 8, 'Trắng', 'M', '1', 199000, '2022-04-22 09:23:28', NULL),
(14, 9, 5, 'Đen', 'Mẫu TL1', '1', 16000, '2022-04-22 09:24:46', NULL),
(15, 10, 9, 'Đen', '37', '1', 195000, '2022-04-23 02:03:38', NULL),
(16, 10, 8, 'Đen', 'M', '1', 199000, '2022-04-23 02:03:38', NULL),
(17, 10, 8, 'Trắng', 'M', '1', 199000, '2022-04-23 02:03:38', NULL),
(18, 11, 15, 'Đen', 'XL', '1', 250000, '2022-04-26 20:16:55', NULL),
(19, 13, 15, 'Đen', 'M', '1', 250000, '2022-05-09 22:11:11', NULL),
(20, 13, 38, 'Trắng', NULL, '1', 35000, '2022-05-09 22:11:11', NULL),
(21, 13, 36, 'Trắng', '9-12kg', '4', 110000, '2022-05-09 22:11:11', NULL),
(22, 14, 7, 'Đen', 'M', '1', 180000, '2022-05-09 22:12:04', NULL),
(23, 14, 6, 'Trắng', 'M', '1', 49000, '2022-05-09 22:12:04', NULL),
(24, 14, 25, 'Đen', '28', '1', 149000, '2022-05-09 22:12:04', NULL),
(25, 15, 35, 'Đen', NULL, '1', 95000, '2022-05-09 22:12:32', NULL),
(26, 16, 29, 'Đen', 'S', '1', 74000, '2022-05-09 22:25:22', NULL),
(27, 16, 31, 'Đen', 'S', '1', 54000, '2022-05-09 22:25:22', NULL),
(28, 18, 37, 'Đen', NULL, '1', 96000, '2022-05-09 22:27:22', NULL),
(29, 19, 38, 'Trắng', NULL, '5', 35000, '2022-07-10 21:36:01', NULL),
(30, 19, 7, 'Đen', 'M', '6', 180000, '2022-07-10 21:36:01', NULL),
(31, 20, 38, 'Đen', NULL, '3', 35000, '2022-07-10 21:38:08', NULL),
(32, 20, 36, 'Nâu', '15-17kg', '3', 110000, '2022-07-10 21:38:08', NULL),
(33, 20, 7, 'Đen', 'L', '6', 180000, '2022-07-10 21:38:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thambnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name`, `product_slug`, `product_code`, `product_qty`, `product_tags`, `product_size`, `product_color`, `selling_price`, `discount_price`, `short_descp`, `long_descp`, `product_thambnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 1, 1, 2, 'Áo Polo Nam cổ bẻ thun basic cộc tay vải cá sấu cotton', 'Áo-polo-nam-cổ-bẻ-thun-basic-cộc-tay-vải-cá-sấu-cotton', '14304', '100', 'Áo polo,polo nam', 'M,L,XL,XXL', 'Đen,Than,Trắng,Be', '180000', '99000', 'Áo Polo Nam cổ bẻ thun basic cộc tay vải cá sấu cotton , Áo phông thêu gấu phong cách trẻ trung chuẩn form', '<p><strong>* &nbsp;CHI TIẾT:</strong><br />\r\n&Aacute;o Polo Nam, &Aacute;o Thun Nam C&oacute; Cổ Th&ecirc;u Gấu - Chất Cotton D&agrave;y Dặn, Co Gi&atilde;n, Mềm Mịn - R-MAN độ su&ocirc;ng vừa, thoải m&aacute;i, đồng thời vẫn đảm bảo vừa vặn số đo h&igrave;nh thể. Nam nữ đều mang được.</p>\r\n\r\n<p>- Thiết kế cổ đức lịch sự v&agrave; chỉn chu. Điểm nhấn đặc biệt của &aacute;o nằm ở họa tiết h&igrave;nh cực kh&aacute;c biệt được th&ecirc;u ở phần l&aacute; ngực. Nhiều m&agrave;u sắc lựa chọn, gi&uacute;p &aacute;o dễ kết hợp với c&aacute;c trang phục kh&aacute;c.<br />\r\n<strong>* &nbsp;CHẤT LIỆU</strong><br />\r\n&nbsp; &nbsp; + Chất vải 95% Cotton v&agrave; 5 % Spandex cho độ &nbsp;d&agrave;y dặn,co gi&atilde;n tốt v&agrave; quan trọng độ bền m&agrave;u cao<br />\r\n&nbsp; &nbsp; + Quay m&aacute;y giặt thoải m&aacute;i, kh&ocirc;ng đổ l&ocirc;ng hay bay m&agrave;u, thấm h&uacute;t mồ h&ocirc;i v&agrave; kh&ocirc;ng g&ograve; b&oacute; khi vận động<br />\r\n&nbsp; &nbsp; + Thiệt kế cấu tr&uacute;c lỗ tho&aacute;ng, mắt vải to tạo sự tho&aacute;ng m&aacute;t cho người mặc.<br />\r\n&nbsp; &nbsp; + Đặc biệt sợi Cotton pha Hạt C&agrave; ph&ecirc; gi&uacute;p chống tia UV v&agrave; kh&aacute;ng khuẩn.<br />\r\n<strong>* &nbsp;M&Agrave;U SẮC</strong><br />\r\n&nbsp; + &Aacute;o c&oacute; 3 m&agrave;u: Than, Trắng, Đen<br />\r\n&nbsp; + Size : M - L - &nbsp;XL - XXL<br />\r\n&nbsp; &nbsp;M: 45 - 59kg<br />\r\n&nbsp; &nbsp;L: 59- 67kg<br />\r\n&nbsp; &nbsp;XL: &nbsp;67 - 75kg<br />\r\n&nbsp; &nbsp;XXL: 75 - 85kg<br />\r\nTuỳ chiều cao, c&acirc;n nặng c&aacute;c bạn c&oacute; thể ib Shop để tư vấn size chuẩn nhất nh&eacute; &lt;3</p>\r\n\r\n<p><strong>* Hướng dẫn sử dụng v&agrave; bảo quản &Aacute;o polo nam nữ :</strong><br />\r\n+ &nbsp; Giặt m&aacute;y ở chế độ nhẹ, nhiệt độ thường.<br />\r\n+ &nbsp; Kh&ocirc;ng sử dụng ho&aacute; chất tẩy c&oacute; chứa Clo.<br />\r\n+ &nbsp; Phơi trong b&oacute;ng m&aacute;t.<br />\r\n+ &nbsp; Sấy kh&ocirc; ở nhiệt độ thường.<br />\r\n+ &nbsp; L&agrave; ở nhiệt độ thấp hơn 110 độ C.<br />\r\n+ &nbsp; Giặt với sản phẩm c&ugrave;ng m&agrave;u.<br />\r\n+ &nbsp; Lộn mặt tr&aacute;i khi phơi tr&aacute;nh bị phai m&agrave;u<br />\r\n&nbsp;</p>', 'upload/products/thambnail/1730607518057201.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-20 03:21:10', '2022-04-23 02:34:27'),
(3, 4, 2, 3, 7, 'Áo blazer nữ tay dài KAMONG phong cách công sở', 'Áo-blazer-nữ-tay-dài-kamong-phong-cách-công-sở', '24135', '50', 'Áo blazer,blazer nữ,KAMONG', 'S,M,L', 'Kem,Đen,Xám,Hồng,Nâu', '289000', '249000', 'Áo blazer nữ KAMONG tay ngắn dáng áo khoác Vest công sở cơ bản', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM:&nbsp;</strong><br />\r\n&Aacute;o blazer nữ KAMONG tay ngắn d&aacute;ng &aacute;o kho&aacute;c Vest c&ocirc;ng sở cơ bản<br />\r\n-------------------------<br />\r\n-Chất liệu &aacute;o kho&aacute;c vest : Tuyết mưa 1 lớp - H&agrave;ng loại 1</p>\r\n\r\n<p>-M&agrave;u sắc : Hồng ruốt - Kem- Đen - X&aacute;m &nbsp;( M&agrave;u sắc c&oacute; thể ch&ecirc;nh lệch so với thực tế 5% do &aacute;nh s&aacute;ng v&agrave; c&aacute;c thiết bị hiển thị m&agrave;u kh&aacute;c nhau )</p>\r\n\r\n<p>-Size : S-M-L</p>\r\n\r\n<p>-Kiểu d&aacute;ng : D&aacute;ng &aacute;o Blazer tay d&agrave;i su&ocirc;ng.<br />\r\nC&oacute; thể phối với quần short ngắn, đ&oacute;ng th&ugrave;ng, &aacute;o 2 d&acirc;y, &Aacute;o 3 lỗ ,... rất năng động v&agrave; c&aacute; t&iacute;nh ạ&nbsp;<br />\r\n--------------------------<br />\r\n<strong>BẢNG TH&Ocirc;NG SỐ SIZE: </strong>&nbsp;( Tuỳ thuộc v&agrave;o chiều cao v&agrave; d&aacute;ng người c&aacute;c bạn tham khảo th&ocirc;ng số hoặc inbox Shop tư vấn r&otilde; hơn nh&eacute; ạ )<br />\r\nSize &nbsp; &nbsp; &nbsp; &nbsp;Vai &nbsp; &nbsp; &nbsp; &nbsp; Ngực &nbsp; &nbsp; &nbsp; D&agrave;i &aacute;o &nbsp; &nbsp; &nbsp;Cửa tay &nbsp; &nbsp; &nbsp; C&acirc;n nặng<br />\r\nS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 35cm &nbsp; &nbsp; &nbsp; 94cm &nbsp; &nbsp; &nbsp; 65cm &nbsp; &nbsp; &nbsp; &nbsp;25cm &nbsp; &nbsp; &nbsp; &nbsp; 48-53kg<br />\r\nM &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;36cm &nbsp; &nbsp; &nbsp;98cm. &nbsp; &nbsp; &nbsp;65cm &nbsp; &nbsp; &nbsp; &nbsp;26cm &nbsp; &nbsp; &nbsp; &nbsp; 53-58kg<br />\r\nL &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;37cm &nbsp; &nbsp; &nbsp; &nbsp;102cm &nbsp; &nbsp; &nbsp;66cm &nbsp; &nbsp; &nbsp; &nbsp;27cm &nbsp; &nbsp; &nbsp; &nbsp; 58-65kg<br />\r\n* Lưu &yacute;: &nbsp;D&agrave;i tay 53cm<br />\r\nBảng size mang t&iacute;nh chất tham khảo, Tuỳ thuộc v&agrave;o d&aacute;ng người v&agrave; sở th&iacute;ch rộng - &ocirc;m n&ecirc;n chị em vui l&ograve;ng tham khảo th&ocirc;ng số để chọn size ph&ugrave; hợp với m&igrave;nh ạ.</p>', 'upload/products/thambnail/1730607879674124.jpeg', NULL, 1, NULL, 1, 1, '2022-04-19 23:31:26', NULL),
(5, 6, 4, 7, 8, 'Thắt lưng da nữ Mivino dây lưng nữ thời trang cao cấp TL1', 'thắt-lưng-da-nữ-mivino-dây-lưng-nữ-thời-trang-cao-cấp-tl1', '12452147', '29', 'Thắt lưng,thắt lưng nữ', 'Mẫu TL1,Mẫu TL2,Mẫu TL3', 'Đen,Xám', '32000', '16000', 'Thắt lưng da nữ Mivino dây lưng nữ thời trang cao cấp TL1\r\nThắt lưng, dây nịt là một phụ kiện không thể thiếu đối với các bạn nữ . Chúng là một phần trong gần như tất cả những bộ đồ mang phong cách chuyên nghiệp, được sử dụng như một phụ kiện thời trang để bộc lộ hoặc hoàn thiện vẻ ngoài của bạn.', '<p><strong>Th&ocirc;ng tin sản phẩm: </strong>Thắt lưng da nữ Mivino d&acirc;y lưng nữ thời trang cao cấp TL1<br />\r\n&nbsp;- Loại sản phẩm: D&acirc;y lưng, Thắt lưng thời trang.<br />\r\n&nbsp;- Đối tượng sử dụng: Phụ nữ.<br />\r\n&nbsp;- Chất liệu: da PU mềm, đ&agrave;n hồi, c&oacute; lỗ đục sẵn, kh&oacute;a vu&ocirc;ng kh&oacute;a tr&ograve;n<br />\r\n&nbsp;- Free size c&acirc;n nặng 40 - 65kg, v&ograve;ng bụng 90 đổ lại<br />\r\n&nbsp;- C&aacute;c điểm nổi bật: Thiết kế v&ograve;ng tr&ograve;n, mảnh, dễ phối đồ.<br />\r\n&nbsp;- M&agrave;u sắc: &nbsp;M&agrave;u đen<br />\r\n&nbsp;- Kiểu d&aacute;ng: Đơn giản, c&aacute; t&iacute;nh</p>\r\n\r\n<p><strong>Ưu điểm của sản phẩm: </strong>Thắt lưng da nữ Mivino d&acirc;y lưng nữ thời trang cao cấp TL1<br />\r\n- Cố định, giữ v&aacute;y hoặc quần tr&aacute;nh việc tuột ra khỏi vị tr&iacute; cố định.<br />\r\n- Được sản xuất bằng chất liệu da mềm, n&ecirc;n khi sử dụng sẽ tạo cảm gi&aacute;c thoải m&aacute;i cho người d&ugrave;ng<br />\r\n- C&oacute; thể điều chỉnh t&ugrave;y theo v&ograve;ng eo của người sử dụng.&nbsp;<br />\r\n- Ngo&agrave;i việc cố định giữ v&aacute;y, quần tr&aacute;nh việc tuột khỏi vị tr&iacute; cố định Thắt lưng l&agrave; phụ kiện gi&uacute;p bạn c&oacute; c&aacute;c phong c&aacute;ch mới mẻ, trẻ trung hơn.<br />\r\n- &nbsp;Ph&ugrave; hợp với nhiều phong c&aacute;ch, nhiều sự kiện của người d&ugrave;ng, c&oacute; thể sử dụng h&agrave;ng ng&agrave;y.<br />\r\n- Thắt lưng phối c&ugrave;ng quần short, quần jean, quần ống su&ocirc;ng, baggy, ch&acirc;n v&aacute;y, &aacute;o blazer...rất nhiều kiểu biến tấu đẹp lạ.</p>', 'upload/products/thambnail/1730608598020079.jpeg', NULL, 1, NULL, 1, 1, '2022-04-19 23:42:51', '2022-05-09 22:17:07'),
(6, 1, 1, 1, 1, 'Áo thun nam cổ tròn , áo phông ngắn tay trơn basic chất vải cotton co dãn', 'Áo-thun-nam-cổ-tròn-,-áo-phông-ngắn-tay-trơn-basic-chất-vải-cotton-co-dãn', '5242345', '56', 'Áo thun nam,cổ tròn', 'M,L,XL,XXL', 'Trắng,Đen,Xám,Vàng,Hồng,Đỏ', '59000', '49000', '+ hình ảnh sản phẩm áo thun nam là ảnh thật do shop tư chụp \r\n+ chất liệu vải cotton , áo phông được kiểm tra kĩ  , cẩn thận và tư vấn nhiệt tình \r\n+ Hàng có sẵn , giao hàng ngay khi nhận được đơn\r\n+ Hoàn tiền nếu sản phẩm áo thun nam ngắn tay không giống với mô tả.\r\n+ Chấp nhận đổi áo phông cổ tròn khi size không vừa', '<p><strong>&nbsp;Chi tiết sản phẩm &aacute;o thun : </strong>chất vải cotton compact : độ co d&atilde;n tốt , thấm h&uacute;t mồ h&ocirc;i , chống nhăn v&agrave; độ bền m&agrave;u cao - gồm nhiều m&agrave;u v&agrave; form &aacute;o regural fit thoải m&aacute;i vận động - tỉ mỉ trong từng đường may - khi giặt &aacute;o kh&ocirc;ng bị x&ugrave; l&ocirc;ng hay bay m&agrave;u - thấm h&uacute;t mồ h&ocirc;i tốt v&agrave; thoải m&aacute;i khi vận động mạnh rất dễ phối đồ &nbsp;, theo nhiều phong c&aacute;ch kh&aacute;c nhau&nbsp;<br />\r\n--------------------------------------<br />\r\n<strong>* Hướng dẫn sử dụng v&agrave; bảo quản &Aacute;o thun nam cổ tr&ograve;n :</strong><br />\r\n+ Kh&ocirc;ng được d&ugrave;ng ho&aacute; chất tẩy trắng<br />\r\n+ lộn mặt tr&aacute;i khi phơi&nbsp;<br />\r\n+ Hạn chế sử dụng m&aacute;y sấy v&agrave; m&aacute;y ủi &nbsp;, &nbsp;ở nhiệt độ th&iacute;ch hợp&nbsp;<br />\r\n+ Giặt &aacute;o thun ở nhiệt độ b&igrave;nh thường , với đồ c&oacute; m&agrave;u tương th&iacute;ch&nbsp;<br />\r\n*C&aacute;ch chọn size &aacute;o theo chiều cao v&agrave; c&acirc;n nặng :<br />\r\n+ size M 1m55-1m65 &nbsp; 50- 56kg&nbsp;<br />\r\n+size L &nbsp;1m60- 1m70 &nbsp; &nbsp;57-64kg<br />\r\n+size XL 1m65-1m78 &nbsp; &nbsp;65-72kg<br />\r\n+size 2XL 1m70-1m80 &nbsp; 73-82kg&nbsp;<br />\r\n+size 3xl &nbsp; &nbsp;1m75-1m85 &nbsp; 83-90kg<br />\r\nmẹo nhỏ : &nbsp;c&oacute; bụng lấy l&ecirc;n 1 size &nbsp;hoặc kh&aacute;ch y&ecirc;u c&oacute; thể ib trực tiếp với shop để được tư vận chọn size &aacute;o thun chuẩn nhất ạ<br />\r\n-----------------------------&nbsp;<br />\r\n&nbsp;FASHION ELEGANT &nbsp;đặt lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu với c&aacute;c ch&iacute;nh s&aacute;ch 100% c&oacute; lợi ch&iacute;nh đ&aacute;ng cho kh&aacute;ch h&agrave;ng:<br />\r\n✔ Đổi trả h&agrave;ng thoải m&aacute;i: miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn th&igrave; shop đều cho đổi trả d&ugrave; sau 7 ng&agrave;y nhận h&agrave;ng<br />\r\n✔ Thời gian giao h&agrave;ng: từ 1-5 ng&agrave;y t&ugrave;y tỉnh, huyện hay nội th&agrave;nh Giao nội tỉnh HCM &ndash; HN thường nhanh hơn, tỉnh v&agrave; huyện thường l&acirc;u hơn 1 ch&uacute;t.<br />\r\n✔ Đảm bảo sẽ kh&ocirc;ng gặp rủi ro khi mua h&agrave;ng tại shop của ch&uacute;ng t&ocirc;i.<br />\r\n✔ Th&ocirc;ng tin phản hồi của bạn l&agrave; v&ocirc; c&ugrave;ng quan trọng đối với ch&uacute;ng t&ocirc;i. Nếu bạn h&agrave;i l&ograve;ng với sản phẩm v&agrave; dịch vụ của ch&uacute;ng t&ocirc;i, vui l&ograve;ng bỏ ra &iacute;t ph&uacute;t để đ&aacute;nh gi&aacute; 5* cho shop, ch&uacute;ng t&ocirc;i sẽ phục vụ bạn đ&uacute;ng với chuẩn 5* đ&oacute;. Chớ vội đ&aacute;nh gi&aacute; 3* 2* 1* h&atilde;y trao đổi với shop trước về tất cả những vấn đề l&agrave;m bạn kh&ocirc;ng h&agrave;i l&ograve;ng, shop sẵn s&agrave;ng trao đổi v&agrave; giải quyết vấn đề với bạn bất cứ khi n&agrave;o.</p>', 'upload/products/thambnail/1730608973217807.jpeg', NULL, 1, 1, 1, 1, '2022-04-19 23:48:49', '2022-05-09 22:18:19'),
(7, 1, 1, 1, 2, 'Áo Polo Nam Thêu Cá Sấu Có Cổ Vải Dày Không Xù Lông', 'Áo-polo-nam-thêu-cá-sấu-có-cổ-vải-dày-không-xù-lông', '57432489', '58', 'Áo Polo Nam,Polo nam', 'M,L,XL,XXL', 'Đen,Trắng', '250000', '180000', 'CHỈ BÁN HÀNG CHẤT LƯỢNG Khách hàng cũng như bản thân mình khi đi mua hang\r\n - Chỉ mong mua được hàng tốt, giá cả phải chăng, chủ Shop bán hàng có tâm, áo đẹp như hình nên Shop phục vụ khách hàng cũng như phục vụ cho chính mình vậy', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM </strong>&Aacute;o Thun Trơn Nam C&aacute; Sấu C&oacute; Cổ Vải D&agrave;y Kh&ocirc;ng X&ugrave; L&ocirc;ng<br />\r\n&nbsp;- H&Agrave;NG ĐẸP Y H&Igrave;NH&nbsp;<br />\r\n-Thiết kế thời trang ph&ugrave; hợp xu hướng hiện nay&nbsp;<br />\r\n- Kiểu d&aacute;ng đa phong c&aacute;ch&nbsp;<br />\r\n- Đường may tinh tế sắc sảo&nbsp;<br />\r\n- được thi&ecirc;́t k&ecirc;́ đẹp, chu&acirc;̉n form, đường may sắc xảo, vải cotton dày, mịn, th&acirc;́m hút m&ocirc;̀ h&ocirc;i tạo sự thoải mái khi mặc!<br />\r\n&nbsp;- Dễ d&agrave;ng phối trang phục , th&iacute;ch hợp đi chơi đi l&agrave;m đi dạo phố&nbsp;<br />\r\n- Thích hợp cho sự k&ecirc;́t hợp với qu&acirc;̀n jean, sọt,legging...&nbsp;<br />\r\n- uy t&iacute;n đảm bảo nhất thị trường Xưởng may nhận may v&agrave; in theo y&ecirc;u cầu.&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>HƯỚNG DẪN CHỌN CHỌN SIZE PH&Ugrave; HỢP</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp;Size M: c&acirc;n nặng từ 48 kg - 53 kg, chiều cao từ 1m48 đến 1m67</li>\r\n	<li>&nbsp;Size L: c&acirc;n nặng từ 53 kg - 60 kg, chiều cao từ 1m68 đến 1m72&nbsp;</li>\r\n	<li>Size XL: c&acirc;n nặng từ 60 kg -67 kg , chiều cao từ 1m70 đến 1m78</li>\r\n	<li>&nbsp;Size XXL. c&acirc;n nặng từ 67kg - 75kg, chiefu cao từ 1m75-1m82&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>Lưu &yacute;: </strong>Nếu bạn n&agrave;o kh&ocirc;ng chắc chắn về k&iacute;ch cỡ chọn size &aacute;o sơ mi th&igrave; gửi tin nhắn cho Shop để shop tư vấn chọn size số ph&ugrave; hợp nhất.<br />\r\n&nbsp;KH&Aacute;CH H&Agrave;NG ĐƯỢC ĐỔI TRẢ SẢN PHẨM KHI: Sản phẩm bị lỗi Kh&ocirc;ng vừa k&iacute;ch cỡ Sản phẩm Kh&ocirc;ng như h&igrave;nh Trường hợp đổi trả m&agrave; do lỗi từ chất lượng sản phẩm k&eacute;m, Shop sẽ hỗ trợ ho&agrave;n to&agrave;n ph&iacute; ship cho kh&aacute;ch h&agrave;ng. Nếu c&oacute; thắc mắc vui l&ograve;ng nhắn tin cho shop để được tư vấn v&agrave; hỗ trợ giải đ&aacute;p.</p>', 'upload/products/thambnail/1730609351840460.jpeg', NULL, 1, NULL, 1, 1, '2022-04-19 23:54:51', '2022-07-10 21:39:15'),
(8, 7, 1, 1, 12, 'Áo sơ mi nam Urano dài tay kiểu dáng Hàn Quốc , vải lụa thái mềm mịn', 'Áo-sơ-mi-nam-urano-dài-tay-kiểu-dáng-hàn-quốc-,-vải-lụa-thái-mềm-mịn', '56746', '49', 'Áo sơ mi nam,sơ mi nam', 'M,L,XL,XXL', 'Trắng,Đen,Đỏ đô,Xanh than', '199000', NULL, 'Áo Sơ Mi Nam dài tay dáng ôm body , chống nhăn cao cấp  chính là gợi ý tuyệt vời cho nam giới mỗi khi lựa chọn trang phục mỗi ngày. Với những mẫu áo sơ mi nam thiết kế đơn giản và toát lên vẻ lịch lãm tinh tế', '<p><strong>&nbsp; 1. GIỚI THIỆU SẢN PHẨM</strong><br />\r\n&Aacute;o Sơ Mi Nam d&agrave;i tay d&aacute;ng &ocirc;m body , chống nhăn cao cấp &nbsp;ch&iacute;nh l&agrave; gợi &yacute; tuyệt vời cho nam giới mỗi khi lựa chọn trang phục mỗi ng&agrave;y. Với những mẫu &aacute;o sơ mi nam thiết kế đơn giản v&agrave; to&aacute;t l&ecirc;n vẻ lịch l&atilde;m tinh tế, mang đến phong c&aacute;ch thời trang trẻ trung, năng động chắc chắn sẽ l&agrave; lựa chọn ho&agrave;n hảo cho ch&agrave;ng trai hiện đại, nam t&iacute;nh. Những chiếc &aacute;o sơ mi d&agrave;i tay d&aacute;ng &ocirc;m body H&agrave;n Quốc , chống nhăn cao cấp &nbsp;d&ugrave; kết hợp với quần &acirc;u, quần jeans khi đi l&agrave;m hay diện c&ugrave;ng quần ngố, quần short đi chơi đều NỔI BẬT, THOẢI M&Aacute;I v&agrave; PHONG C&Aacute;CH. Với form d&aacute;ng vừa vặn c&aacute;c ch&agrave;ng c&oacute; thể tự tin khoe body cực chuẩn của m&igrave;nh. H&atilde;y bổ sung ngay v&agrave;o tủ đồ item n&agrave;y để diện thật chất nh&eacute;!</p>\r\n\r\n<p><strong>&nbsp; &nbsp;2. TH&Ocirc;NG TIN CHI TIẾT</strong><br />\r\n👉M&Agrave;U &Aacute;O : TRẮNG , ĐEN , XANH THAN . XANH NƯỚC BIỂN , ĐỎ Đ&Ocirc; , GHI X&Aacute;M&nbsp;<br />\r\n👉Chất liệu: 100% chất cotton lụa, thấm h&uacute;t mồ h&ocirc;i&nbsp;<br />\r\n👉 Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave;<br />\r\n👉 Quy c&aacute;ch, ti&ecirc;u chuẩn đường may tinh tế, tỉ mỉ trong từng chi tiết<br />\r\n👉 Kiểu d&aacute;ng: Thiết kế đơn giản, dễ mặc, dễ phối đồ<br />\r\n👉 Form body H&agrave;n Quốc mang lại phong c&aacute;ch trẻ trung, lịch l&atilde;m<br />\r\n👉 Chất lượng sản phẩm tốt, gi&aacute; cả hợp l&yacute;</p>\r\n\r\n<p><strong>&nbsp; &nbsp;3 . CH&Iacute;NH S&Aacute;CH B&Aacute;N H&Agrave;NG:</strong><br />\r\n👉 Cam kết chất lượng v&agrave; mẫu m&atilde; sản phẩm giống với h&igrave;nh ảnh.<br />\r\n👉 Ho&agrave;n tiền nếu sản phẩm kh&ocirc;ng giống với m&ocirc; tả<br />\r\n👉 Cam kết được đổi trả h&agrave;ng trong v&ograve;ng 7 ng&agrave;y<br />\r\n👉Ngo&agrave;i ra SHOP tặng voucher hoặc ho&agrave;n xu cho c&aacute;c đơn h&agrave;ng tương ứng đủ điều kiện.<br />\r\n👉 Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật.<br />\r\n👉 Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn.</p>', 'upload/products/thambnail/1730610869432932.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-20 03:20:28', '2022-04-20 03:26:56'),
(9, 7, 3, 6, 17, 'Guốc (dép) nữ cao gót mũi nhọn quai ngang mica mềm', 'guốc-(dép)-nữ-cao-gót-mũi-nhọn-quai-ngang-mica-mềm', '54721', '20', 'Guốc,cao gót nữ', '37,38,39,40,41', 'Đen,Be', '275000', '195000', 'Giày/guốc cao gót, gót nhọn cao  9cm phá cách 2021\r\nDễ mix đồ, phù hợp với mọi lứa tuổi,đi tiệc hoặc đi chơi đều rất phong cách và dễ sử dụng.', '<p><strong>CHI TIẾT SẢN PHẨM</strong><br />\r\nChiều rộng ph&ugrave; hợp:&nbsp;&nbsp; &nbsp;Kh&ocirc;ng<br />\r\nXuất xứ:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Việt Nam<br />\r\nGi&agrave;y cao g&oacute;t:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Cao<br />\r\nKiểu gi&agrave;y cao g&oacute;t:&nbsp;&nbsp; &nbsp;Gi&agrave;y g&oacute;t nhọn<br />\r\nLoại mũi gi&agrave;y:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Mũi nhọn<br />\r\nChất liệu:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Mica Trong</p>\r\n\r\n<p><strong>LƯU &Yacute;: </strong>form guốc b&eacute; hơn 1 size n&ecirc;n kh&aacute;ch h&agrave;ng lưu &yacute; khi chọn size, hoặc inbox trực tiếp Shop để được tư vấn kỹ hơn<br />\r\nH&agrave;ng về theo từng đợt n&ecirc;n nhiều l&uacute;c sẽ c&oacute; kh&aacute;c s&oacute; với h&igrave;nh ảnh, nhưng chất lượng sản phẩm sẽ kh&ocirc;ng thay đổi,kh&aacute;ch h&agrave;ng vui l&ograve;ng đọc kỹ nh&eacute;.<br />\r\n______________</p>\r\n\r\n<p>Gi&agrave;y/guốc cao g&oacute;t, g&oacute;t nhọn cao &nbsp;9cm ph&aacute; c&aacute;ch 2021</p>\r\n\r\n<p>Dễ mix đồ, ph&ugrave; hợp với mọi lứa tuổi,đi tiệc hoặc đi chơi đều rất phong c&aacute;ch v&agrave; dễ sử dụng.<br />\r\nBảo hàng sản phẩm d&eacute;p cao g&oacute;t : lỗi 1 đổi 1 nếu lỗi do nhà sản xuất, bảo hành gót 3 tháng<br />\r\nC&aacute;ch bảo quản sản phẩm Gi&agrave;y/guốc &nbsp;cao g&oacute;t nữ :<br />\r\n- Hạn chế va đập v&agrave;o c&aacute;c vật cứng &amp; sắc nhọn<br />\r\n- Guốc c&oacute; thể &nbsp;Đi nước, đi mưa thoải m&aacute;i v&ocirc; tư.<br />\r\nHãy thường xuyên, định kỳ vệ sinh đôi giày/guốc cao g&oacute;t của bạn giúp cho giày/d&eacute;p cao g&oacute;t của &nbsp;bạn luôn mới hơn. Khi guốc bị bẩn đừng chà hay giặt rửa trực tiếp bằng nước lạnh, mà chỉ nên dùng vải sạch thấm nước xà bông hoặc kem đánh răng lau nhẹ nhàng l&ecirc;n mặt mica, rồi lau khô lại bằng khăn sạch.</p>', 'upload/products/thambnail/1730612531301136.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-20 03:20:43', '2022-04-20 03:20:43'),
(10, 8, 3, 5, 13, 'Giày boots nam Chelsea Boots Classic đế khâu', 'giày-boots-nam-chelsea-boots-classic-đế-khâu', 'KSHJ879', '50', 'Giày boots', '38,39,40,41,42', 'Đen,Nâu', '190000', '129000', 'Chelsea boots là loại giày hiếm hoi phù hợp với mọi phong cách trang phục của phái mạnh. Kiểu dáng vừa sang trọng, cổ điển, vừa mang nét trẻ trung, hiện đại.', '<p>Chelseaboots Classic, gi&agrave;y bốt nam&nbsp;<br />\r\nN&ecirc;n giảm 1 size nếu ch&acirc;n thon, kh&ocirc;ng b&egrave; ngang nhiều nha ae</p>\r\n\r\n<p><strong>&nbsp;Mua k&egrave;m DEAL SỐC để nhận th&ecirc;m ưu đ&atilde;i</strong></p>\r\n\r\n<p>Chelsea boots l&agrave; loại gi&agrave;y hiếm hoi ph&ugrave; hợp với mọi phong c&aacute;ch trang phục của ph&aacute;i mạnh. Kiểu d&aacute;ng vừa sang trọng, cổ điển, vừa mang n&eacute;t trẻ trung, hiện đại.<br />\r\n- Mũi tr&ograve;n:&nbsp;<br />\r\n&nbsp;+) Form c&aacute;ch t&acirc;n mũi v&aacute;t tr&ograve;n hơn, ch&acirc;n thon hay to ngang đi đều hợp<br />\r\n&nbsp;+) Sản phẩm da chống nhăn, đế Crepe đi &ecirc;m ch&acirc;n<br />\r\n- Đế 4cm - mũi nhọn v&aacute;t nhẹ:<br />\r\n&nbsp;+) D&agrave;nh cho ae muốn tăng chiều cao, hoặc ae cao sẵn nhưng khoảng dưới 1m78 đi rất t&ocirc;n d&aacute;ng<br />\r\n&nbsp;+) Mũi nhọn v&aacute;t nhẹ tinh tế, da chống nhăn, đế đ&uacute;c mang &ecirc;m ch&acirc;n</p>\r\n\r\n<p><span style=\"color:#e74c3c\"><strong>HƯỚNG DẪN CHỌN SIZE GI&Agrave;Y CHELSEA BOOTS NAM</strong></span><br />\r\n&nbsp;Do kiểu d&aacute;ng nguy&ecirc;n bản xuất ph&aacute;t từ nước Anh, gi&agrave;y Chelsea boot được thiết kế c&oacute; phần mũi gi&agrave;y hơi d&agrave;i hơn gi&agrave;y Thể thao, giầy c&ocirc;ng sở ch&uacute;t x&iacute;u. Do đ&oacute; để chọn được size gi&agrave;y chuẩn, &ocirc;m ch&acirc;n h&atilde;y tham khảo hướng dẫn dưới đ&acirc;y của shop nh&eacute;:<br />\r\n-&nbsp;&nbsp; &nbsp; Dựa v&agrave;o chiều d&agrave;i b&agrave;n ch&acirc;n v&agrave; size gi&agrave;y bạn hay đi.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Size 38 : B&agrave;n ch&acirc;n d&agrave;i 23cm-24cm<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Size 39 : B&agrave;n ch&acirc;n d&agrave;i 24cm - 24.5cm<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Size 40 : B&agrave;n ch&acirc;n d&agrave;i 24.5cm - 25cm<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Size 41 : B&agrave;n ch&acirc;n d&agrave;i 25.5cm - 26cm<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Size 42 : B&agrave;n ch&acirc;n d&agrave;i 26.5cm - &nbsp;27cm<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Size 43 : B&agrave;n ch&acirc;n d&agrave;i 27cm - 27.5cm<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Size 44 : B&agrave;n ch&acirc;n d&agrave;i 27.5cm - 28cm<br />\r\nN&ecirc;n giảm 1 size so với gi&agrave;y thể thao nh&eacute; ae&nbsp;</p>\r\n\r\n<p>8 l&yacute; do bạn n&ecirc;n sắm ngay 1 đ&ocirc;i chelsea boots từ #Gi&agrave;y_Chelsea_Boots_Nam_Gi&aacute;_Rẻ</p>\r\n\r\n<p>- Chất Lượng Da sit cao cấp đứng form, k bong tr&oacute;c bảo h&agrave;nh 30 ng&agrave;y<br />\r\n- Chun được may với đường chỉ chắc chắn, d&agrave;y dặn kh&ocirc;ng bai gi&atilde;o<br />\r\n- Đế được đ&uacute;c bằng cao su nguy&ecirc;n khối. Cao su non mang lại cảm gi&aacute;c &ecirc;m &aacute;i.</p>\r\n\r\n<p>Vệ sinh cực kỳ đơn giản</p>\r\n\r\n<p>&nbsp;Đế khắc laze chống trơn trượt<br />\r\n&nbsp;Kiểu d&aacute;ng Thanh lịch v&agrave; Trang nh&atilde;. C&oacute; thể phối với skinny jean, kaki xắn gối hoặc quần &acirc;u. C&oacute; thể l&ecirc;n đồ theo phong c&aacute;ch Streetwear, Darkwear thậm ch&iacute; theo xu hướng mạnh nhất hiện nay l&agrave; Techwear.</p>', 'upload/products/thambnail/1731162870846194.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 03:14:31', '2022-04-26 03:14:31'),
(11, 8, 3, 5, 13, 'Chelsea Boots Classic, giày bốt nam', 'chelsea-boots-classic,-giày-bốt-nam', 'BOO798', '100', NULL, '39,40,41,42,43,44', 'Đen,Nâu', '350000', '290000', 'Chelseaboots Classic, giày bốt nam \r\nNên giảm 1 size so với giày thể thao nhé ae\r\n Mua kèm DEAL SỐC để nhận thêm ưu đãi', '<p>𝐂𝐇𝐄𝐋𝐒𝐄𝐀 𝐁𝐎𝐎𝐓𝐒 l&agrave; loại gi&agrave;y hiếm hoi ph&ugrave; hợp với mọi phong c&aacute;ch trang phục của ph&aacute;i mạnh. Kiểu d&aacute;ng vừa sang trọng, cổ điển, vừa mang n&eacute;t trẻ trung, hiện đại.<br />\r\nC&aacute;c ph&acirc;n loại<br />\r\n- Mũi nhọn:<br />\r\n&nbsp;+) Form &ocirc;m gọn, d&aacute;ng mũi nhọn tinh tế<br />\r\n&nbsp;+) Được l&agrave;m từ da sit cứng c&aacute;p, đứng form<br />\r\n- Mũi tr&ograve;n:<br />\r\n&nbsp;+) Da chống nhăn<br />\r\n&nbsp;+) Đế crepe &ecirc;m ch&acirc;n<br />\r\n- Đế 4cm - mũi nhọn:<br />\r\n&nbsp;+) D&agrave;nh cho ae muốn tăng chiều cao, hoặc ae cao sẵn nhưng khoảng dưới 1m78 đi rất t&ocirc;n d&aacute;ng<br />\r\n&nbsp;+) Mũi nhọn v&aacute;t nhẹ tinh tế, đế đ&uacute;c mang &ecirc;m ch&acirc;n</p>\r\n\r\n<p><br />\r\n✅Chất Lượng Da sit cao cấp đứng form, k bong tr&oacute;c bảo h&agrave;nh 6 th&aacute;ng<br />\r\n✅ Chun được may với đường chỉ chắc chắn, d&agrave;y dặn kh&ocirc;ng bai gi&atilde;o<br />\r\n✅ Đế được đ&uacute;c bằng cao su nguy&ecirc;n khối. Cao su non mang lại cảm gi&aacute;c &ecirc;m &aacute;i.<br />\r\n✅Vệ sinh cực kỳ đơn giản<br />\r\n✅ Đế khắc laze chống trơn trượt<br />\r\n✅ Kiểu d&aacute;ng Thanh lịch v&agrave; Trang nh&atilde;. C&oacute; thể phối với skinny jean, kaki xắn gối hoặc quần &acirc;u. C&oacute; thể l&ecirc;n đồ theo phong c&aacute;ch Streetwear, Darkwear thậm ch&iacute; theo xu hướng mạnh nhất hiện nay l&agrave; Techwear.</p>', 'upload/products/thambnail/1731163199005290.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 02:38:00', NULL),
(12, 7, 3, 5, 14, 'Giày Thể Thao Siêu Nhẹ Thoáng Khí Chống Thấm Nước', 'giày-thể-thao-siêu-nhẹ-thoáng-khí-chống-thấm-nước', 'JHG7698', '150', 'Giày Thể Thao', '38,39,40,41,42,43', 'Nâu', '280000', '229000', 'Là một thương hiệu giầy sneker  mang đến sự hài lòng, sang trọng và cá tính cho khách hàng. Đến với chúng tôi, bạn sẽ được thỏa sức đắm chìm trong một thế giới  giầy bao gồm tất cả những đôi giày snker trẻ trung, mạnh mẽ nhưng không kém phần sang trọng', '<p>Chức năng: hư hỏng h&agrave;ng r&agrave;o, va đập hư hỏng<br />\r\nChất liệu: Lưới dệt bay<br />\r\nPhong c&aacute;ch cổ gi&agrave;y: cổ thấp<br />\r\nPhạm vi ứng dụng: kho&aacute;ng chất than, c&ocirc;ng nghiệp h&oacute;a chất, c&ocirc;ng trường x&acirc;y dựng, xưởng, nh&agrave; m&aacute;y, đ&uacute;c, sản xuất, c&ocirc;ng trường x&acirc;y dựng, địa điểm muối-alkali,<br />\r\nK&iacute;ch thước: 36,39,38,40,41,42,43,44,45,46,37<br />\r\nD&ograve;ng sản phẩm: Thời trang v&agrave; kh&ocirc;ng thấm nước<br />\r\nChất liệu Baotou: th&eacute;p Baotou<br />\r\nC&oacute; lỗ th&ocirc;ng hơi kh&ocirc;ng: C&oacute;<br />\r\nC&oacute; ngăn ngừa đập: C&oacute;<br />\r\nC&aacute;c t&iacute;nh năng: chống đập v&agrave; chống đ&acirc;m thủng<br />\r\nC&oacute; chống đ&acirc;m thủng hay kh&ocirc;ng: C&oacute;<br />\r\n:&nbsp;<br />\r\n:&nbsp;<br />\r\n1. Ch&uacute;ng t&ocirc;i sử dụng CM (CM) l&agrave;m đơn vị đo *** KH&Ocirc;NG Ở K&Iacute;CH THƯỚC ANH, MỸ &amp; EURO, v&igrave; CM (CM) cung cấp độ ch&iacute;nh x&aacute;c cao hơn.<br />\r\n2. Bắt đầu đo từ đầu ng&oacute;n ch&acirc;n d&agrave;i nhất cho đến g&oacute;t ch&acirc;n.</p>\r\n\r\n<p><strong>K&iacute;ch thước</strong></p>\r\n\r\n<p>Vui l&ograve;ng chọn theo chiều d&agrave;i ch&acirc;n thực tế của bạn:<br />\r\n36 = chiều d&agrave;i ch&acirc;n 23 cm;<br />\r\n37 = chiều d&agrave;i ch&acirc;n 23,5 cm;<br />\r\n38 = chiều d&agrave;i ch&acirc;n 24 cm;<br />\r\n39 = chiều d&agrave;i ch&acirc;n 24,5 cm;<br />\r\n40 = chiều d&agrave;i ch&acirc;n 25 cm;<br />\r\n41 = chiều d&agrave;i ch&acirc;n 25,5 cm;<br />\r\n42 = chiều d&agrave;i ch&acirc;n 26 cm;<br />\r\n43 = chiều d&agrave;i ch&acirc;n 26,5 cm;<br />\r\n44 = chiều d&agrave;i ch&acirc;n 27 cm;<br />\r\n45 = chiều d&agrave;i ch&acirc;n 27,5 cm;<br />\r\n46 = chiều d&agrave;i ch&acirc;n 28 cm;</p>', 'upload/products/thambnail/1731163707255635.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 02:46:05', NULL),
(13, 9, 3, 6, 20, 'Giày thể thao nữ Ulzzang AIR hồng đỗ và phối xanh thoáng khí êm chân', 'giày-thể-thao-nữ-ulzzang-air-hồng-đỗ-và-phối-xanh-thoáng-khí-êm-chân', 'ULZ789', '100', 'Giày thể thao nữ Ulzzang', '36,37,38,39,40,41,42', 'Trắng phối hồng xanh', '289000', '249000', '- Bảo hành đến 12 tháng cho sản phẩm\r\n- Miễn phí đổi trả nếu có lỗi của nhà sản xuất\r\n- Hàng full box , tem', '<p><strong>M&Ocirc; TẢ SẢN PHẨM</strong><br />\r\nStyle : gi&agrave;y thể thao nữ Ulzzang &nbsp;AIR hồng đỗ v&agrave; phối xanh tho&aacute;ng kh&iacute; &ecirc;m ch&acirc;n tặng k&egrave;m tag kh&oacute;a<br />\r\n- Đế cực &ecirc;m , đ&agrave;n hồi tốt , độ bền v&agrave; b&aacute;m d&iacute;nh cao<br />\r\n- Gi&agrave;y đi nhẹ , &ocirc;m ch&acirc;n .<br />\r\n- Gi&aacute; cạnh tranh nhất .<br />\r\n- Bảo h&agrave;nh đến 12 th&aacute;ng cho sản phẩm<br />\r\n- Miễn ph&iacute; đổi trả nếu c&oacute; lỗi của nh&agrave; sản xuất<br />\r\n- H&agrave;ng full box , tem<br />\r\n- Cam kết h&agrave;ng đ&uacute;ng như h&igrave;nh , đ&uacute;ng chất lượng<br />\r\n- Giao h&agrave;ng đ&uacute;ng size , kh&aacute;ch ph&acirc;n vẩn c&oacute; thể nhắn tin với shop trước để shop tư vấn<br />\r\n- Sản phẩm được shop xem x&eacute;t kỹ lưỡng trước khi giao tới tay kh&aacute;ch h&agrave;ng .<br />\r\n- Shop c&oacute; c&aacute;c chương tr&igrave;nh khuyến m&atilde;i , Ưu đ&atilde;i thường xuy&ecirc;n .<br />\r\n- Cần hỗ trợ th&ecirc;m th&ocirc;ng tin vui l&ograve;ng nhắn tin cho shop .</p>', 'upload/products/thambnail/1731164135743944.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 02:52:54', NULL),
(14, 7, 3, 6, 19, 'Dép Da Chữ H nhiều màu, đế nhựa dẻo chống trơn trượt', 'dép-da-chữ-h-nhiều-màu,-đế-nhựa-dẻo-chống-trơn-trượt', 'GH987D', '100', 'Dép nữ', '37,38,39,40,41,42', 'Đen, Nâu,Trắng', '99000', '79000', '☀️MÀU: Đen, Nâu, Trắng\r\n☀️FORM GIÀY: chuẩn\r\n☀️CHẤT LIỆU: da PU\r\n☀️KIỂU ĐẾ: Bệt\r\n☀️CHIỀU CAO ĐẾ: 0,5cm\r\n☀️ CHẤT LIỆU ĐẾ: Cao Su', '<p>Sản ph&acirc;̉m: Dép H Da sần<br />\r\n☀️SIZE: 35-39<br />\r\n&nbsp;EU 35 = Chiều d&agrave;i ch&acirc;n 22,5cm<br />\r\n&nbsp;EU 36 = Chiều d&agrave;i b&agrave;n ch&acirc;n 23cm<br />\r\n&nbsp;EU 37 = Chiều d&agrave;i ch&acirc;n 23,5cm<br />\r\n&nbsp;EU 38 = Chiều d&agrave;i b&agrave;n ch&acirc;n 24cm<br />\r\n&nbsp;EU 39 = Chiều d&agrave;i ch&acirc;n 24,5cm</p>\r\n\r\n<p>☀️M&Agrave;U: Đen, N&acirc;u, Trắng<br />\r\n☀️FORM GI&Agrave;Y: chuẩn<br />\r\n☀️CHẤT LIỆU: da PU<br />\r\n☀️KIỂU ĐẾ: B&ecirc;̣t<br />\r\n☀️CHIỀU CAO ĐẾ: 0,5cm<br />\r\n☀️ CHẤT LIỆU ĐẾ: Cao Su<br />\r\n✔️ Hướng dẫn chọn nhiều ph&acirc;n loại cho 1 đơn h&agrave;ng: -<br />\r\nBước 1: chọn ph&acirc;n loại thứ nhất bạn muốn mua -&gt; ấn th&ecirc;m v&agrave;o giỏ h&agrave;ng -<br />\r\nBước 2: chọn ph&acirc;n loại tiếp theo bạn muốn mua -&gt; ấn th&ecirc;m v&agrave;o giỏ h&agrave;ng (tiếp tục chọn đủ ph&acirc;n loại bạn cần theo 2 bước tr&ecirc;n) -<br />\r\nBước 3: ấn v&agrave;o giỏ h&agrave;ng của bạn (ở ph&iacute;a g&oacute;c tr&ecirc;n c&ugrave;ng b&ecirc;n phải) -<br />\r\nBước 4: t&iacute;ch v&agrave;o những sản phẩm bạn muốn mua rồi ấn mua h&agrave;ng v&agrave; thực hiện c&aacute;c thao t&aacute;c c&ograve;n lại.<br />\r\n✔️ LƯU &Yacute;: Đối với đơn h&agrave;ng TỪ 2 SẢN PHẨM TRỞ L&Ecirc;N , qu&yacute; kh&aacute;ch vui l&ograve;ng QUAY LẠI VIDEO MỞ G&Oacute;I H&Agrave;NG. Tất cả c&aacute;c trường hợp kh&aacute;ch h&agrave;ng KH&Ocirc;NG QUAY LẠI VIDEO m&agrave; b&aacute;o SHOP GỬI THIẾU SẢN PHẨM, shop sẽ KH&Ocirc;NG XỬ L&Yacute;.<br />\r\nV&igrave; shop b&aacute;n h&agrave;ng số lượng lớn n&ecirc;n kh&ocirc;ng thể tr&aacute;nh khỏi một số trường hợp h&agrave;ng bị lỗi nhỏ do vận chuyển. Shop sẽ cố gắng hỗ trợ kh&aacute;ch h&agrave;ng tối đa cho trường hợp h&agrave;ng bị lỗi. - Qu&yacute; kh&aacute;ch vui l&ograve;ng xem kỹ ảnh v&agrave; video trước khi mua h&agrave;ng.<br />\r\nDép H lu&ocirc;n l&agrave; sự lựa chọn h&agrave;ng đầu cho c&aacute;c chị em th&iacute;ch phong c&aacute;ch H.M. Dép &nbsp;H mang lại cảm gi&aacute;c dễ chịu khi mang v&agrave; sự trẻ trung cũng như sự sang trong của thương hiệu H.M. C&ograve;n chần chừ g&igrave; m&agrave; kh&ocirc;ng sắm ngay 1 em Dép H đi ạ</p>', 'upload/products/thambnail/1731164497626354.jpeg', 1, NULL, NULL, NULL, 1, '2022-04-26 03:04:15', '2022-04-26 03:04:15'),
(15, 5, 1, 1, 3, 'ÁO KHOÁC KAKI JEAN NAM ĐẸP THỜI TRANG MỚI NHẤT 2022 KKN01', 'Áo-khoÁc-kaki-jean-nam-ĐẸp-thỜi-trang-mỚi-nhẤt-2022-kkn01', 'KKN01', '59', 'ÁO KHOÁC KAKI JEAN', 'M,L,XL,XXL', 'Đen,Rêu,Vàng,Kem', '289000', '250000', 'Mang đến cho bạn những mẫu áo khoác và các sản phẩm thời trang độc đáo. \r\n- Hổ trợ 1 đổi 1 nếu sản phẩm lỗi, kém chất lượng. \r\n- Đa dạng sản phẩm - Đa dạng chất liệu: áo khoác kaki, áo khoác dù, áo khoác nỉ, áo khoác jeans,.. \r\n- Gửi đánh giá nhận ngay giảm giá/quà tặng cho lần mua tiếp theo.', '<p><strong>&Aacute;O KHO&Aacute;C KAKI JEAN NAM ĐẸP THỜI TRANG MỚI NHẤT 2019 KKN01</strong></p>\r\n\r\n<p>Mang đến cho bạn những mẫu &aacute;o kho&aacute;c v&agrave; c&aacute;c sản phẩm thời trang độc đ&aacute;o.&nbsp;<br />\r\n- Hổ trợ 1 đổi 1 nếu sản phẩm lỗi, k&eacute;m chất lượng.&nbsp;<br />\r\n- Đa dạng sản phẩm - Đa dạng chất liệu: &aacute;o kho&aacute;c kaki, &aacute;o kho&aacute;c d&ugrave;, &aacute;o kho&aacute;c nỉ, &aacute;o kho&aacute;c jeans,..&nbsp;<br />\r\n- Gửi đ&aacute;nh gi&aacute; nhận ngay giảm gi&aacute;/qu&agrave; tặng cho lần mua tiếp theo.</p>\r\n\r\n<p><strong>BẢNG SIZE &Aacute;O KHO&Aacute;C NAM</strong><br />\r\nM&nbsp;&nbsp;&nbsp;&nbsp;60-65kg &nbsp;&nbsp;&nbsp;&nbsp;m65-m70<br />\r\nL&nbsp;&nbsp;&nbsp;&nbsp;70-75kg&nbsp;&nbsp;&nbsp;&nbsp;m70-m75<br />\r\nXL&nbsp;&nbsp;&nbsp;&nbsp;80-85kg hoặc 90kg&nbsp;&nbsp;&nbsp;&nbsp;m75-m85</p>\r\n\r\n<p>T&ugrave;y thuộc v&agrave;o chiều cao m&agrave; bạn th&ecirc;m 1 size. Nếu vẫn kh&ocirc;ng chọn được c&aacute;c bạn nhắn cho shop. Shop sẽ trả lời c&aacute;c bạn nhanh nhất c&oacute; thể.</p>\r\n\r\n<p>Sản xuất: Việt Nam<br />\r\n&Aacute;o kho&aacute;c Kaki Nam ph&ugrave; hợp với phong c&aacute;ch năng động, trẻ trung, nam t&iacute;nh<br />\r\nLựa chọn &aacute;o kho&aacute;c kết hợp với quần kaki l&agrave; bạn c&oacute; một b&ocirc; c&aacute;nh ho&agrave;n hảo<br />\r\nChất liệu: vải kaki th&ocirc;, d&agrave;y, ấm, bền, thiết kế tinh tế, m&agrave;u sắc trang trọng<br />\r\nM&agrave;u sắc: M&agrave;u đen, m&agrave;u v&agrave;ng, M&agrave;u hồng, M&agrave;u cam, M&agrave;u xanh, M&agrave;u xanh l&aacute; chuối non<br />\r\nSize hiện c&oacute; sẵn: M,L,XL<br />\r\nLoại bảo h&agrave;nh: Kh&ocirc;ng bảo h&agrave;nh.&nbsp;&nbsp;</p>', 'upload/products/thambnail/1731165051964733.jpeg', 1, NULL, NULL, NULL, 1, '2022-04-26 03:07:27', '2022-05-09 22:17:03'),
(16, 7, 3, 6, 17, 'Giày cao gót nữ MWC cao gót hở mũi đế vuông cao 7CM quai ngang', 'giày-cao-gót-nữ-mwc-cao-gót-hở-mũi-đế-vuông-cao-7cm-quai-ngang', 'MWC574', '55', 'cao gót', '38,39,40,41,42', 'Đen,Kem,Xám', '150000', '119000', '𝑻𝑯𝑶̂𝑵𝑮 𝑻𝑰𝑵 𝑺𝑨̉𝑵 𝑷𝑯𝑨̂̉𝑴 \r\nTên sản phẩm: Giày cao gót nữ MWC cao gót hở mũi đế vuông cao 7CM quai ngang da mềm thanh lịch NUCG- 3547', '<p>𝑻𝑯𝑶̂𝑵𝑮 𝑻𝑰𝑵 𝑺𝑨̉𝑵 𝑷𝑯𝑨̂̉𝑴&nbsp;<br />\r\nT&ecirc;n sản phẩm: Gi&agrave;y cao g&oacute;t nữ MWC cao g&oacute;t hở mũi đế vu&ocirc;ng cao 7CM quai ngang da mềm thanh lịch NUCG- 3547</p>\r\n\r\n<p>1. GIÀY CAO G&Oacute;T MŨI TR&Ograve;N ĐẾ VU&Ocirc;NG &nbsp;7CM: Được thiết kế quai ngang tỉ mỉ &nbsp;rất tiện lợi, c&oacute; thể d&ugrave;ng được trong mọi ho&agrave;n cảnh, đi l&agrave;m, đi chơi, đi dạo phố... &nbsp; l&agrave; một m&oacute;n đồ kh&ocirc;ng thể thiếu được của c&aacute;c n&agrave;ng, với kiểu d&aacute;ng phối d&acirc;y quai ngang đơn giản v&agrave; thanh lịch, nhưng kh&ocirc;ng k&eacute;m phần sang trọng. Dễ d&agrave;ng phối được với nhiều trang phục. &nbsp;</p>\r\n\r\n<p>2. CHẤT LIỆU DA PU MỀM: Chất liệu cao cấp, mềm với 4 m&agrave;u sắc đa dạng, gi&uacute;p n&agrave;ng thoải m&aacute;i chọn lựa (Đen - Kem - Xanh r&ecirc;u - X&aacute;m). Đặc biệt loại da hạn chế nếp nhăn khi bạn di chuyển, kh&ocirc;ng bong tr&oacute;c, &ecirc;m mềm, độ đ&agrave;n hồi tốt.&nbsp;</p>\r\n\r\n<p>3. FORM D&Aacute;NG CHUẨN &Ecirc;M CH&Acirc;N: Gi&agrave;y cao g&oacute;t MWC được thiết kế tỉ mĩ với form d&aacute;ng chuẩn đối với người Việt, gi&uacute;p bảo vệ n&acirc;ng niu b&agrave;n bạn ch&acirc;n của bạn, đảm bảo d&eacute;p mềm &ecirc;m ch&acirc;n, giữ form tốt.</p>\r\n\r\n<p>4. ĐẾ GI&Agrave;Y CAO SU CHỐNG TRƯỢT: Đế gi&agrave;y được l&agrave;m bằng chất liệu cao su &ecirc;m &aacute;i mang lại sự thoải m&aacute;i tối đa cho người d&ugrave;ng, mặt đế c&ograve;n c&oacute; độ b&aacute;m tốt để bạn c&oacute; thể sải bước thật vững v&agrave;ng v&agrave; tự tin.</p>\r\n\r\n<p>𝑯𝑼̛𝑶̛́𝑵𝑮 𝑫𝑨̂̃𝑵 𝑪𝑯𝑶̣𝑵 𝑺𝑰𝒁𝑬&nbsp;<br />\r\n&nbsp;- Để đo ch&iacute;nh x&aacute;c size gi&agrave;y của m&igrave;nh bạn n&ecirc;n đo v&agrave;o thời điểm v&agrave;o buổi tối v&igrave; l&uacute;c đ&oacute; đ&ocirc;i ch&acirc;n của bạn sẽ gi&atilde;n nở nhiều nhất. Dưới đ&acirc;y l&agrave; c&aacute;c bước để x&aacute;c định size gi&agrave;y d&eacute;p nữ tại nh&agrave;:<br />\r\n1. Đặt b&agrave;n ch&acirc;n l&ecirc;n tờ giấy A4, D&ugrave;ng b&uacute;t kẻ đường thẳng ngang qua điểm cao nhất của ng&oacute;n ch&acirc;n v&agrave; điểm cuối của g&oacute;t ch&acirc;n.&nbsp;<br />\r\n2. D&ugrave;ng thước kẻ đường thẳng vu&ocirc;ng g&oacute;c giữa 2 đường thẳng vừa kẻ ở tr&ecirc;n. Sau đ&oacute; đo chiều d&agrave;i của đường thẳng n&agrave;y l&agrave; bao nhi&ecirc;u sẽ tương ứng với c&aacute;c size sau đ&acirc;y:&nbsp;<br />\r\n◦ Tuỳ d&aacute;ng b&agrave;n ch&acirc;n của bạn v&agrave; kiểu gi&agrave;y, sẽ c&oacute; sự ch&ecirc;nh lệch size đ&ocirc;i ch&uacute;t.<br />\r\n◦ Tham khảo bảng size b&ecirc;n dưới<br />\r\n◦ Vui l&ograve;ng nhắn cho bộ phận CSKH để tư vấn.&nbsp;</p>', 'upload/products/thambnail/1731165295785004.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 03:11:53', '2022-04-26 03:11:53'),
(17, 7, 2, 3, 23, 'Áo sơ mi nữ đẹp form rộng công sở tay dài phồng 4YOUNG SM01', 'Áo-sơ-mi-nữ-đẹp-form-rộng-công-sở-tay-dài-phồng-4young-sm01', 'SM01', '50', NULL, 'S,M,L', 'Trắng', '125000', '99000', 'Áo sơ mi nữ form rộng công sở tay phồng 4YOUNG SM01\r\n\r\nÁo sơ mi nữ là một trang phục lịch thiệp và sang trọng bên cạnh những outfit sành điệu, sẽ có lúc nàng cần phải tìm đến sự cứu cánh của những bộ. Áo sơ mi nữ form rộng thường được ưa chuộng bởi cô nàng cá tính, sành điệu nhờ kiểu dáng rộng rãi và thoáng mát. Với 2 màu cơ bản là đen và trắng nàng có thể lựa chọn cho dịp đi dạo phố, đi chơi nhưng vẫn nữ tính hết mức bởi chất liệu lụa sớ gân mềm mại.', '<p>&Aacute;o sơ mi nữ form rộng c&ocirc;ng sở tay phồng 4YOUNG SM01</p>\r\n\r\n<p>&Aacute;o sơ mi nữ l&agrave; một trang phục lịch thiệp v&agrave; sang trọng b&ecirc;n cạnh những outfit s&agrave;nh điệu, sẽ c&oacute; l&uacute;c n&agrave;ng cần phải t&igrave;m đến sự cứu c&aacute;nh của những bộ. &Aacute;o sơ mi nữ form rộng thường được ưa chuộng bởi c&ocirc; n&agrave;ng c&aacute; t&iacute;nh, s&agrave;nh điệu nhờ kiểu d&aacute;ng rộng r&atilde;i v&agrave; tho&aacute;ng m&aacute;t. Với 2 m&agrave;u cơ bản l&agrave; đen v&agrave; trắng n&agrave;ng c&oacute; thể lựa chọn cho dịp đi dạo phố, đi chơi nhưng vẫn nữ t&iacute;nh hết mức bởi chất liệu lụa sớ g&acirc;n mềm mại.&nbsp;</p>\r\n\r\n<p>----------------------------------------------------------------------<br />\r\n✅ HƯỚNG DẪN CHỌN SIZE<br />\r\n✪ Size S dưới 47kg<br />\r\nSize M dưới 52kg<br />\r\nSize L dưới 57kg</p>\r\n\r\n<p><br />\r\n&Aacute;o sơ mi tay d&agrave;i được thiết kế truyền thống nhưng đ&atilde; c&oacute; sự s&aacute;ng tạo với nhiều kiểu d&aacute;ng kh&aacute;c nhau. Ng&agrave;y nay đ&atilde; được biến tấu th&ecirc;m nhiều điểm nhấn để tạo ra một số &aacute;o sơ mi nữ kiểu nữ đặc sắc như: &aacute;o sơ mi d&agrave;i tay xẻ cổ, &aacute;o sơ mi tay trễ dập li, &aacute;o r&uacute;t th&acirc;n sau, &aacute;o sơ mi c&agrave;i n&uacute;t vai, &aacute;o sơ mi tay ngắn,...</p>\r\n\r\n<p>&Aacute;o sơ mi d&aacute;ng d&agrave;i H&agrave;n Quốc l&agrave; sự kết nối giữa H&agrave;n Quốc v&agrave; sơ mi, người ta sẽ nghĩ ngay đến c&aacute;c kiểu &aacute;o sơ mi nữ d&aacute;ng d&agrave;i, &aacute;o sơ mi form rộng, mang đến sự thoải m&aacute;i, trẻ trung như những c&ocirc; n&agrave;ng tuổi đ&ocirc;i mươi tươi tắn. Những kiểu d&aacute;ng n&agrave;y c&oacute; thể gọi chung l&agrave; &nbsp;&aacute;o sơ mi unisex, v&igrave; form người n&agrave;o mặc l&ecirc;n cũng c&oacute; n&eacute;t đẹp ri&ecirc;ng, sự độc đ&aacute;o v&agrave; c&aacute; t&iacute;nh ri&ecirc;ng.</p>\r\n\r\n<p>&Aacute;o sơ mi buộc d&acirc;y l&agrave; sự s&aacute;ng tạo mới mẻ với chi tiết vạt &aacute;o buộc nơ xinh xắn, với chất liệu mềm mại như lụa v&agrave; voan, đ&acirc;y sẽ l&agrave; sản phẩm l&yacute; tưởng cho c&ocirc; n&agrave;ng văn ph&ograve;ng, c&ocirc;ng sở. Một chiếc &aacute;o sơ mi c&ocirc;ng sở trắng sẽ l&agrave; một sản phẩm kh&ocirc;ng thể thiếu của c&aacute;c c&ocirc; n&agrave;ng văn ph&ograve;ng.</p>', 'upload/products/thambnail/1731165847651071.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 03:20:06', NULL),
(18, 7, 2, 9, 25, 'Chân váy rút dây nhiều màu nhún Hus mã CV1', 'chân-váy-rút-dây-nhiều-màu-nhún-hus-mã-cv1', 'VJI8789', '50', NULL, 'S,L,M', 'Đen,Nâu', '155000', '99000', '👉👉 ĐỪNG NGẦN NGẠI NHẤN LIKE SẢN PHẨM VÀ CHAT VỚI SHOP TỚ ĐỂ ĐƯỢC NHẬN MÃ VOUCHER GIẢM GIÁ DÀNH RIÊNG CHO SẢN PHẨM NHA !!!!', '<p>👉👉 ĐỪNG NGẦN NGẠI NHẤN LIKE SẢN PHẨM V&Agrave; CHAT VỚI SHOP TỚ ĐỂ ĐƯỢC NHẬN M&Atilde; VOUCHER GIẢM GI&Aacute; D&Agrave;NH RI&Ecirc;NG CHO SẢN PHẨM NHA !!!!</p>\r\n\r\n<p>TH&Ocirc;NG TIN SẢN PHẨM:</p>\r\n\r\n<p>+ Size S &lt; 46 kg - v&ograve;ng eo ~64cm - chiều d&agrave;i 43cm<br />\r\n+ Size M &lt; 53 kg - v&ograve;ng eo ~67cm - chiều d&agrave;i 44cm<br />\r\n+ Size L &lt; 58 kg - v&ograve;ng eo ~72cm - chiều d&agrave;i 44cm<br />\r\n+ Size XL &lt; 64 kg - v&ograve;ng eo ~78cm - chiều d&agrave;i 45cm</p>\r\n\r\n<p>- Ch&acirc;n v&aacute;y r&uacute;t d&acirc;y 2 b&ecirc;n ch&acirc;n v&aacute;y ngắn nữ . Ch&acirc;n v&aacute;y rút l&agrave; 1 m&oacute;n đồ kh&ocirc;ng thể thiếu trong tủ đồ của chị em phụ nữ. Mỗi khi đi chơi bạn n&ecirc;n diện 1 chiếc ch&acirc;n v&aacute;y ngắn năng động c&aacute; t&iacute;nh thể hiện phong c&aacute;ch ri&ecirc;ng của bạn..C&oacute; rất nhiều mẫu ch&acirc;n v&aacute;y để lựa chọn theo sở th&iacute;ch của bạn ch&acirc;n v&aacute;y midi,ch&acirc;n v&aacute;y chữ a, &nbsp;ch&acirc;n v&aacute;y ulzzang... Ch&acirc;n v&aacute;y d&acirc;y r&uacute;t được thiết kế 2 lớp n&ecirc;n việc di chuyển trở n&ecirc;n hết sức thuận tiện v&agrave; dễ d&agrave;ng mang lại cảm gi&aacute;c thoải m&aacute;i. Một số mẫu ch&acirc;n v&aacute;y c&ograve;n tạo th&ecirc;m điểm nhấn như : đ&iacute;nh hoa , ch&acirc;n v&aacute;y xếp ly ,xẻ c&aacute;ch điệu tạo n&ecirc;n vẻ dịu d&agrave;ng nữ t&iacute;nh .<br />\r\n&nbsp;</p>', 'upload/products/thambnail/1731166211026927.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 03:25:53', NULL),
(19, 7, 2, 9, 25, 'Chân váy cạp tam giác, chấn váy ngắn form đẹp không xù lông, mềm mại', 'chân-váy-cạp-tam-giác,-chấn-váy-ngắn-form-đẹp-không-xù-lông,-mềm-mại', 'JHG5356', '50', NULL, 'S,L,M', 'Đen,Nâu', '95000', '85000', 'Chân váy cạp tam giác form siêu đẹp\r\nKhông sở hữu 1 chiếc mất đi ti tỉ set đồ đẹp\r\nMix&Match được với cả thế giới, mặc đi đâu cũng xinh, cũng lịch sự, tiện lợi vô cùng', '<p>Mix&amp;Match được với cả thế giới, mặc đi đâu cũng xinh, cũng lịch sự, tiện lợi vô cùng</p>\r\n\r\n<p>- Chất vintex d&agrave;y, mịn, thấm m&uacute;t mồ h&ocirc;i tốt, kh&ocirc;ng x&ugrave; l&ocirc;ng, mềm mại cho l&agrave;n da, cầm m&aacute;t tay<br />\r\n- Ch&acirc;n v&aacute;y c&oacute; thể mặc đi chơi, đi l&agrave;m,..<br />\r\nKh&aacute;ch h&agrave;ng lựa chọn ch&acirc;n v&aacute;y theo c&acirc;n nặng<br />\r\n&nbsp;- S (Dưới 48kg)<br />\r\n&nbsp;- M(49-5)2kg<br />\r\nBảng k&iacute;ch thước / đơn vị cm:<br />\r\n&nbsp; S Chiều d&agrave;i ch&acirc;n v&aacute;y 40cm/14.56&quot; V&ograve;ng eo 64cm/25.19&quot;<br />\r\n&nbsp; M Chiều d&agrave;i ch&acirc;n v&aacute;y 41cm/14.96&quot; V&ograve;ng eo 68cm/26.77&quot;</p>\r\n\r\n<p>* Bảng size chỉ mang t&iacute;nh chất tham khảo, t&ugrave;y thuộc v&agrave;o số đo cơ thể v&agrave; chất liệu vải kh&aacute;c nhau sẽ c&oacute; sự ch&ecirc;nh lệch nhất định.&nbsp;<br />\r\n* M&agrave;u sắc vải sản phẩm c&oacute; thể sẽ ch&ecirc;nh lệch thực tế một phần nhỏ, do ảnh hưởng về độ lệch m&agrave;u của &aacute;nh s&aacute;ng nhưng vẫn đảm bảo chất&nbsp;</p>', 'upload/products/thambnail/1731166475302973.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 03:30:05', NULL),
(20, 7, 2, 9, 26, 'Đầm trắng, tay phồng, chất cotton mỹ Deri (BT06)', 'Đầm-trắng,-tay-phồng,-chất-cotton-mỹ-deri-(bt06)', 'BT0645', '30', NULL, 'S,M,L', 'Trắng,Đỏ', '170000', NULL, 'Bộ đầm trắng, xẻ ngực, tay phồng. Thiết kế đơn giản nhưng mặc lên người thì cực sang.\r\nChất liệu: Cotton mỹ  mặc thoáng mát.\r\nSản phẩm có 2 size: S - M - L', '<p>Bộ đầm trắng, xẻ ngực, tay phồng. Thiết kế đơn giản nhưng mặc l&ecirc;n người th&igrave; cực sang.</p>\r\n\r\n<p>Chất liệu: Cotton mỹ &nbsp;mặc tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p>Sản phẩm c&oacute; 2 size: S - M - L</p>\r\n\r\n<p>C&aacute;c chị chọn size ph&ugrave; hợp với m&igrave;nh theo bảng size ph&iacute;a dưới nh&eacute;.</p>\r\n\r\n<p>&nbsp;𝐁𝐚̉𝐧𝐠 𝐬𝐢𝐳𝐞 𝐜𝐡𝐚𝐫𝐭:<br />\r\n---------------------------------------------------------------------------------<br />\r\n&Aacute;p dụng chiều cao trung b&igrave;nh 1m60<br />\r\nSize S dưới 48kg, 3 v&ograve;ng (V1-V2-V3): 85 - 68 - 90<br />\r\nSize M dưới 52kg, 3 v&ograve;ng (V1-V2-V3): 90 - 72 - 95<br />\r\nSize L dưới 57kg, 3 v&ograve;ng (V1-V2-V3): 95 - 76 - 100<br />\r\n----------------------------------------------------------------------------------<br />\r\n🤝𝐒𝐇𝐎𝐏 𝐂𝐀𝐌 𝐊𝐄̂́𝐓🤝<br />\r\n- Sản phẩm chuẩn như ảnh, n&eacute;t từng đường kh&acirc;u;<br />\r\n- Giao h&agrave;ng to&agrave;n quốc, thanh to&aacute;n khi nhận h&agrave;ng;<br />\r\n- Cam kết ho&agrave;n tiền 100% nếu sản phẩm kh&ocirc;ng giống ảnh, xem h&agrave;ng trước khi thanh to&aacute;n.<br />\r\n----------------------------------------------------------------------------------<br />\r\n𝐗𝐮𝐚̂́𝐭 𝐱𝐮̛́ 𝐬𝐚̉𝐧 𝐩𝐡𝐚̂̉𝐦:<br />\r\n- Sản phẩm được sản xuất bởi BT Store;<br />\r\n- Nơi sản xuất: Tp. Hồ Ch&iacute; Minh;<br />\r\n- Năm sản xuất: 2022<br />\r\n----------------------------------------------------------------------------------<br />\r\n𝐇𝐔̛𝐎̛́𝐍𝐆 𝐃𝐀̂̃𝐍 𝐒𝐔̛̉ 𝐃𝐔̣𝐍𝐆</p>\r\n\r\n<p>1. &nbsp; &nbsp;Lần giặt đầu ti&ecirc;n :<br />\r\n&bull; Giặt ri&ecirc;ng sản phẩm MỚI bằng tay với nước lạnh 1-2 lần đầu sử dụng v&agrave; phơi kh&ocirc; tự nhi&ecirc;n (tuyệt đối kh&ocirc;ng sử dụng sản phẩm với m&aacute;y giặt v&agrave; c&aacute;c loại bột giặt c&oacute; chất tẩy cao)<br />\r\n&bull; Kh&ocirc;ng phơi trực tiếp dưới &aacute;nh nắng gay gắt.<br />\r\n&bull; Phơi mặt tr&aacute;i sản phẩm.</p>\r\n\r\n<p>2. &nbsp; &nbsp;Những lần giặt tiếp theo:<br />\r\n&bull; Sử dụng dầu gội hoặc sữa tắm để giặt hoặc 1 lượng &iacute;t bột giặt.<br />\r\n&bull; Kh&ocirc;ng sử dụng bột giặt c&oacute; chất tẩy mạnh.<br />\r\n&bull; Kh&ocirc;ng vắt sản phẩm.<br />\r\n&bull; Kh&ocirc;ng phơi trực tiếp dưới &aacute;nh nắng gay gắt.<br />\r\n&bull; Phơi mặt tr&aacute;i sản phẩm.<br />\r\n&nbsp;</p>', 'upload/products/thambnail/1731166664250480.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 03:33:05', NULL),
(21, 7, 2, 3, 23, 'Áo trễ vai, áo hở vai nữ đẹp bèo tay phồng rộng dễ thương', 'Áo-trễ-vai,-áo-hở-vai-nữ-đẹp-bèo-tay-phồng-rộng-dễ-thương', '035456', '51', NULL, 'S,M,L', 'Đen,Trắng,Nâu', '95000', '79000', 'Áo trễ vai là 1 item quốc dân chị em nào cũng có sẵn trong tủ đồ vài chiếc mặc đi học đi làm đi chơi hay bất cứ đâu.Một chiếc áo sơ mi trắng đơn giản nhưng cũng sẽ tạo nên sự lịch sự,trẻ trung và cá tính', '<p><strong>CAM KẾT ĐỔI TRẢ MIỄN PH&Iacute; TRONG V&Ograve;NG 3 NG&Agrave;Y BẤT KỂ L&Yacute; DO G&Igrave;</strong><br />\r\n**Th&ocirc;ng tin &aacute;o trễ vai, &aacute;o hở vai nữ đẹp b&egrave;o tay phồng rộng dễ thương, mặc đi chơi, si&ecirc;u hot trend, AO001<br />\r\nM&agrave;u sắc: Đen, Trắng<br />\r\n<strong>Chất liệu: </strong>vải Voan Lụa cap cấp<br />\r\nFree size nh&eacute; c&aacute;c chị bầu b&iacute; bon chen được ạ *Lưu &yacute;: C&acirc;n nặng chỉ mang t&iacute;nh tham khảo, tuỳ thuộc v&agrave;o d&aacute;ng người nữa ạ *Th&ocirc;ng số c&oacute; thể lệch 1-2cm do chất liệu vải kh&ocirc;ng đ&aacute;ng kể nh&eacute; ạ.<br />\r\n- Kiểu D&aacute;ng :&Aacute;o trễ vai Form chuẩn ph&ugrave; hợp với v&oacute;c d&aacute;ng phụ nữ Việt Nam<br />\r\n- Họa tiết trơn m&agrave;u dễ mặc, kh&ocirc;ng bai x&ugrave; khi giặt<br />\r\n- Sản Xuất : Sản xuất trực tiếp tại xưởng - h&agrave;ng Việt Nam<br />\r\n<strong>**CHI TIẾT &aacute;o trễ vai, &aacute;o hở vai nữ đẹp b&egrave;o tay phồng rộng dễ thương, mặc đi chơi, si&ecirc;u hot trend, AO001</strong><br />\r\n- &Aacute;o trễ vai l&agrave; 1 item quốc d&acirc;n chị em n&agrave;o cũng c&oacute; sẵn trong tủ đồ v&agrave;i chiếc mặc đi học đi l&agrave;m đi chơi hay bất cứ đ&acirc;u.Một chiếc &aacute;o sơ mi trắng đơn giản nhưng cũng sẽ tạo n&ecirc;n sự lịch sự,trẻ trung v&agrave; c&aacute; t&iacute;nh<br />\r\n- Mặc đẹp kh&ocirc;ng chỉ gi&uacute;p con g&aacute;i khẳng định phong c&aacute;ch c&aacute; nh&acirc;n, thể hiện sự t&ocirc;n trọng đối với người đối diện, m&agrave; c&ograve;n l&agrave; một c&ocirc;ng cụ gi&uacute;p họ th&agrave;nh c&ocirc;ng hơn trong cuộc sống.&nbsp;<br />\r\n- M&atilde; &aacute;o trễ vai tơ b&egrave;o của TIMO sẽ l&agrave; 1 chiếc &aacute;o nhẹ nh&agrave;ng đơn giản b&aacute;nh b&egrave;o m&agrave; lại lịch sự, shop cam kết &aacute;o trễ vai, &aacute;o hở lưng, &aacute;o trễ vai tay d&agrave;i, &aacute;o trễ vai nữ, &aacute;o trễ vai croptop, &aacute;o trễ vai b&aacute;nh b&egrave;o, &aacute;o croptop trễ vai, &aacute;o trễ vai tay phồng CAM KẾT giống ảnh 100% ạ</p>', 'upload/products/thambnail/1731166924790018.jpeg', NULL, NULL, 1, NULL, 1, '2022-04-26 03:37:13', NULL);
INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name`, `product_slug`, `product_code`, `product_qty`, `product_tags`, `product_size`, `product_color`, `selling_price`, `discount_price`, `short_descp`, `long_descp`, `product_thambnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(23, 7, 4, 13, 29, '[SUPER SALE] Đồng Hồ Nam Chính Hãng Fuji FnG', '[super-sale]-Đồng-hồ-nam-chính-hãng-fuji-fng', 'FUJI879', '60', NULL, NULL, 'Vàng', '289000', '210000', 'Chúng tôi là nhà bán hàng khác biệt, không những mang lại cho bạn những sản phẩm phụ kiện thời trang thị trường đang săn lùng, mà còn trao cho bạn sự phục vụ chuyên nghiệp của chúng tôi!', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM:</strong><br />\r\nCh&acirc;́t liệu: th&eacute;p mạ v&agrave;ng.<br />\r\nM&aacute;y: Fuji FnG Nhật<br />\r\n+ Đường k&iacute;nh mặt: 4.2cm<br />\r\n+ D&agrave;y 10mm<br />\r\n+ Chiều rộng d&acirc;y 2.2cm<br />\r\n+ D&acirc;y c&oacute; thể tự chỉnh t&ugrave;y &yacute; mỗi người<br />\r\nChống nước 3ATM<br />\r\nTặng k&egrave;m nhẫn TITAN<br />\r\nBảo h&agrave;nh 12 th&aacute;ng</p>\r\n\r\n<p>Đồng hồ c&aacute; t&iacute;nh sẽ là phụ kiện giúp bạn quản lý thời gian một cách hiệu quả.<br />\r\n- Mặt đ&ocirc;̀ng h&ocirc;̀ tròn n&ocirc;̉i bật, hệ th&ocirc;́ng kim vạch đơn giản th&ecirc;̉ hiện phong cách hiện đại.<br />\r\n- D&acirc;y đeo trẻ trung t&ocirc;n l&ecirc;n sự khỏe khoắn, năng động.</p>\r\n\r\n<p><strong>6 L&Yacute; DO BẠN PHẢI MUA PHỤ KIỆN THỜI TRANG CỦA BẢO BẢO:</strong><br />\r\n1. Giao h&agrave;ng si&ecirc;u tốc (Grab - GHTK)<br />\r\n2. Cam kết sản phẩm đẹp giống h&igrave;nh - m&ocirc; tả, chất lượng tốt<br />\r\n3. Hỗ trợ đổi trả - bảo h&agrave;nh 7 ng&agrave;y trong c&aacute;c trường hợp sai s&oacute;t, bể vỡ<br />\r\n4. Lu&ocirc;n c&oacute; khuyến m&atilde;i theo m&ugrave;a - theo sự kiện<br />\r\n5. Nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết<br />\r\n6. Hỗ trợ kh&aacute;ch h&agrave;ng phối đồ theo m&agrave;u - theo tiệc</p>\r\n\r\n<p>▼ Hiện nay tr&ecirc;n thị trường c&oacute; rất nhiều đơn vị kh&aacute;c sử dụng h&igrave;nh ảnh của BẢO BẢO để b&aacute;n c&aacute;c sản phẩm sai mẫu - kh&ocirc;ng chất lượng. Do vậy Qu&yacute; kh&aacute;ch c&acirc;n nhắc khi mua để tr&aacute;nh trường hợp sản phẩm giả mạo. Sản phẩm Phụ kiện thời trang - Bảo Bảo Store đảm bảo chất lượng, uy t&iacute;n v&agrave; tận t&acirc;m!<br />\r\n☑️ H&Atilde;Y ĐỂ CH&Uacute;NG T&Ocirc;I GI&Uacute;P BẠN TỰ TIN C&Aacute; T&Iacute;NH ĐỂ TỎA S&Aacute;NG!</p>', 'upload/products/thambnail/1731167409138495.jpeg', NULL, NULL, 1, NULL, 1, '2022-04-26 03:44:55', NULL),
(24, 5, 4, 13, 29, 'Đồng Hồ Nam FOURRON F888 Doanh Nhân CHạy 2 Lịch Sang Trọng Dây Da Cao Cấp', 'Đồng-hồ-nam-fourron-f888-doanh-nhân-chạy-2-lịch-sang-trọng-dây-da-cao-cấp', '234325', '50', NULL, NULL, 'Mặt Trắng,Full đen', '290000', '210000', '-	Đồng Hồ Nam FOURRON  Là món phụ kiện không thể thiếu của các bạn nam, chiếc đồng hồ giúp bạn khẳng định cá tính thời trang của chính mình. \r\n-	Đồng Hồ Nam FOURRON sở hữu thiết kế sang trọng với các chi tiết được chế tác tinh xảo, góp phần nâng tầm phong cách của người đeo.', '<p><strong>&bull;&nbsp;&nbsp; &nbsp;TH&Ocirc;NG TIN NỔI BẬT</strong><br />\r\n_Kiểu d&aacute;ng năng động v&agrave; lịch l&atilde;m (phong c&aacute;ch doanh nh&acirc;n)<br />\r\n_Chống nước sinh hoạt rất tốt + Mặt k&iacute;nh Mineral rất trong v&agrave; chồng trầy sinh hoạt<br />\r\n_V&otilde; l&agrave;m bằng th&eacute;p 304L cao cấp n&ecirc;n đeo rất chắc tay&nbsp;</p>\r\n\r\n<p>---------------------------------------------------------------------------------<br />\r\n<strong>&bull;&nbsp;&nbsp; &nbsp;TH&Ocirc;NG TIN SẢN PHẨM</strong><br />\r\n- Thương hiệu: FOURRON<br />\r\n- Kiểu m&aacute;y: Quartz (m&aacute;y Nhật)<br />\r\n- Chất liệu vỏ: Th&eacute;p kh&ocirc;ng gỉ&nbsp;<br />\r\n- Chất liệu d&acirc;y: DA DA PU<br />\r\n- Chất liệu mặt trước: K&iacute;nh cứng pha kho&aacute;ng,&nbsp;<br />\r\n- K&iacute;ch thước mặt: 39 x 9 mm (Rộng x d&agrave;y)<br />\r\n- K&iacute;ch thước d&acirc;y: 20 x 230mm (Rộng x d&agrave;i)<br />\r\n- Số Kim: Chạy 3 kim (LỊCH XEM NG&Agrave;Y V&Agrave; LỊCH THỨ) &ldquo; Lưu &Yacute;: Lịch thứ c&oacute; 2 ng&ocirc;n ngữ anh v&agrave; trung n&ecirc;n c&aacute;c bạn t&ugrave;y chỉnh thoải m&atilde;i ng&ocirc;n ngữ m th&iacute;ch&rdquo;<br />\r\n- Khả năng chịu nước: 3 ATM (rửa tay, đi mưa, ok... N&ecirc;n tr&aacute;nh tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, nước tẩy rửa, kh&ocirc;ng mang khi bơi lội... Của bền tại người n&acirc;ng niu giữ g&igrave;n)<br />\r\n- Ph&ugrave; hợp đeo đi l&agrave;m, đi học, dạo phố, xem phim, dự tiệc<br />\r\n- Bảo h&agrave;nh: 6 th&aacute;ng</p>\r\n\r\n<p><strong>&nbsp;&nbsp; &nbsp;CAM KẾT KHI MUA H&Agrave;NG CỦA SHOP&nbsp;</strong><br />\r\no&nbsp;&nbsp; &nbsp;Quy định Bảo h&agrave;nh: đổi trả trong 7 ng&agrave;y nếu h&agrave;ng bị lỗi do nh&agrave; sản xuất như l&agrave; hết pin, rớt kim, hư kh&oacute;a, đồng hồ kh&ocirc;ng chạy.&nbsp;<br />\r\no&nbsp;&nbsp; &nbsp;Bảo h&agrave;nh pin v&agrave; m&aacute;y trong 6 th&aacute;ng. Bị bất cứ vấn đề g&igrave; bạn cứ inbox shop sẽ lu&ocirc;n tư vấn v&agrave; hỗ trợ bạn<br />\r\no&nbsp;&nbsp; &nbsp;Thời gian giao h&agrave;ng : từ 1-5 ng&agrave;y t&ugrave;y tỉnh , huyện hay nội th&agrave;nh Giao nội tỉnh HCM &ndash; HN thường nhanh hơn, tỉnh v&agrave; huyện thường l&acirc;u hơn 1 ch&uacute;t&nbsp;</p>', 'upload/products/thambnail/1731167709140992.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 03:49:41', NULL),
(25, 3, 1, 2, 11, 'Quần baggy nam ống rộng vải Hàn cao cấp, quần tây âu co giãn tốt', 'quần-baggy-nam-ống-rộng-vải-hàn-cao-cấp,-quần-tây-âu-co-giãn-tốt', '879445', '49', NULL, '28,29,30,31,32', 'Đen,Kem,Ghi xám', '199000', '149000', 'Bạn muốn chọn 1 chiếc quần vải 70-80k kém chất lượng về không mặc nổi hay chọn 1 chiếc quần cao cấp với chất lượng hoàn toàn xứng đáng giúp bạn thoải mái và tự tin?', '<p>&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>TH&Ocirc;NG TIN SẢN PHẨM:</strong></p>\r\n\r\n<p>- Chất liệu: Cot H&agrave;n&nbsp;<br />\r\n- Bảng M&agrave;u: Đen, Ghi X&aacute;m, Xanh Navy<br />\r\n- Form d&aacute;ng: Baggy ống rộng, su&ocirc;ng<br />\r\n- Thiết kế: 1 C&uacute;c c&agrave;i</p>\r\n\r\n<p>JBAGY CAM KẾT<br />\r\nH&igrave;nh ảnh sản phẩm l&agrave; ảnh thật do shop tự chụp v&agrave; giữ bản quyền h&igrave;nh ảnh<br />\r\nQuần được kiểm tra kỹ, cẩn thận v&agrave; tư vấn nhiệt t&igrave;nh&nbsp;<br />\r\nH&agrave;ng c&oacute; sẵn, giao h&agrave;ng ngay khi nhận được đơn&nbsp;<br />\r\nHo&agrave;n tiền nếu sản phẩm kh&ocirc;ng giống với m&ocirc; tả<br />\r\nChấp nhận đổi h&agrave;ng khi size kh&ocirc;ng vừa<br />\r\nGiao h&agrave;ng tr&ecirc;n to&agrave;n quốc, nhận h&agrave;ng trả tiền&nbsp;</p>\r\n\r\n<p>QUY ĐỊNH BẢO H&Agrave;NH, ĐỔI TRẢ</p>\r\n\r\n<p>1. Điều kiện &aacute;p dụng (trong v&ograve;ng 07 ng&agrave;y kể từ khi nhận sản phẩm)&nbsp;<br />\r\n- H&agrave;ng ho&aacute; vẫn c&ograve;n mới, chưa qua sử dụng&nbsp;<br />\r\n- H&agrave;ng ho&aacute; bị lỗi hoặc hư hỏng do vận chuyển hoặc do nh&agrave; sản xuất&nbsp;<br />\r\n2. Trường hợp được chấp nhận:&nbsp;<br />\r\n- H&agrave;ng kh&ocirc;ng đ&uacute;ng size, kiểu d&aacute;ng như qu&yacute; kh&aacute;ch đặt h&agrave;ng&nbsp;<br />\r\n- Kh&ocirc;ng đủ số lượng, kh&ocirc;ng đủ bộ như trong đơn h&agrave;ng&nbsp;<br />\r\n3. Trường hợp kh&ocirc;ng đủ điều kiện &aacute;p dụng ch&iacute;nh s&aacute;ch:&nbsp;<br />\r\n- Qu&aacute; 07 ng&agrave;y kể từ khi Qu&yacute; kh&aacute;ch nhận h&agrave;ng&nbsp;<br />\r\n- Gửi lại h&agrave;ng kh&ocirc;ng đ&uacute;ng mẫu m&atilde;, kh&ocirc;ng phải sản phẩm của JBAGY.<br />\r\n- Kh&ocirc;ng th&iacute;ch, kh&ocirc;ng hợp, đặt nhầm m&atilde;, nhầm m&agrave;u,...&nbsp;<br />\r\nDo m&agrave;n h&igrave;nh v&agrave; điều kiện &aacute;nh s&aacute;ng kh&aacute;c nhau, m&agrave;u sắc thực tế của sản phẩm c&oacute; thể ch&ecirc;nh lệch khoảng 3-5%</p>\r\n\r\n<p>💖 Chắc chắn việc mặc 1 chiếc quần T&acirc;y Nam d&aacute;ng Baggy ống rộng thời trang, năng động sẽ mang lại cho bạn sự tự tin trong &aacute;nh mắt những người xung quanh, C&ograve;n trần chờ g&igrave; m&agrave; kh&ocirc;ng th&ecirc;m sản phẩm v&agrave;o giỏ h&agrave;ng!</p>', 'upload/products/thambnail/1731182699443361.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 07:47:58', '2022-05-09 22:18:19'),
(26, 6, 1, 2, 11, 'Quần âu nam cao cấp ống côn SLIMFIT, quần tây nam co giãn 4 chiều', 'quần-âu-nam-cao-cấp-ống-côn-slimfit,-quần-tây-nam-co-giãn-4-chiều', '564798', '100', NULL, '28,29,30,31,32,33,34', 'Xám', '189000', '139000', 'BAGY cho ra đời item quần âu ống côn basic. Với thiết kế tinh giản, chi tiết khuy cài chéo trông trẻ trung, hiện đại giúp chiếc quần âu “quốc dân” đã trở thành sản phẩm không thể vắng bóng trong tủ đồ của phái mạnh.', '<p>TH&Ocirc;NG TIN SẢN PHẨM:<br />\r\n- Chất liệu: Cot H&agrave;n Cao Cấp<br />\r\n- Bảng M&agrave;u: Ghi, Ghi S&aacute;ng&nbsp;<br />\r\n- Form d&aacute;ng: Form slim</p>\r\n\r\n<p>JBAGY CAM KẾT<br />\r\nH&igrave;nh ảnh Quần âu nam l&agrave; ảnh thật do shop tự chụp v&agrave; giữ bản quyền h&igrave;nh ảnh<br />\r\nQuần được kiểm tra kỹ, cẩn thận v&agrave; tư vấn nhiệt t&igrave;nh&nbsp;<br />\r\nH&agrave;ng c&oacute; sẵn, giao h&agrave;ng ngay khi nhận được đơn&nbsp;<br />\r\nHo&agrave;n tiền nếu sản phẩm kh&ocirc;ng giống với m&ocirc; tả<br />\r\nChấp nhận đổi h&agrave;ng khi size kh&ocirc;ng vừa<br />\r\nGiao h&agrave;ng tr&ecirc;n to&agrave;n quốc, nhận h&agrave;ng trả tiền&nbsp;</p>\r\n\r\n<p>QUY ĐỊNH BẢO H&Agrave;NH, ĐỔI TRẢ</p>\r\n\r\n<p>1. Điều kiện &aacute;p dụng (trong v&ograve;ng 07 ng&agrave;y kể từ khi nhận sản phẩm)&nbsp;<br />\r\n- H&agrave;ng ho&aacute; vẫn c&ograve;n mới, chưa qua sử dụng&nbsp;<br />\r\n- H&agrave;ng ho&aacute; bị lỗi hoặc hư hỏng do vận chuyển hoặc do nh&agrave; sản xuất&nbsp;<br />\r\n2. Trường hợp được chấp nhận:&nbsp;<br />\r\n- H&agrave;ng kh&ocirc;ng đ&uacute;ng size, kiểu d&aacute;ng như qu&yacute; kh&aacute;ch đặt h&agrave;ng&nbsp;<br />\r\n- Kh&ocirc;ng đủ số lượng, kh&ocirc;ng đủ bộ như trong đơn h&agrave;ng&nbsp;<br />\r\n3. Trường hợp kh&ocirc;ng đủ điều kiện &aacute;p dụng ch&iacute;nh s&aacute;ch:&nbsp;<br />\r\n- Qu&aacute; 07 ng&agrave;y kể từ khi Qu&yacute; kh&aacute;ch nhận h&agrave;ng&nbsp;<br />\r\n- Gửi lại h&agrave;ng kh&ocirc;ng đ&uacute;ng mẫu m&atilde;, kh&ocirc;ng phải sản phẩm của JBAGY.<br />\r\n- Kh&ocirc;ng th&iacute;ch, kh&ocirc;ng hợp, đặt nhầm m&atilde;, nhầm m&agrave;u,...&nbsp;<br />\r\nDo m&agrave;n h&igrave;nh v&agrave; điều kiện &aacute;nh s&aacute;ng kh&aacute;c nhau, m&agrave;u sắc thực tế của sản phẩm c&oacute; thể ch&ecirc;nh lệch khoảng 3-5%<br />\r\n&nbsp;</p>', 'upload/products/thambnail/1731182836566679.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 07:50:08', NULL),
(27, 5, 1, 2, 5, 'Quần short nam kaki 2 túi hộp BoxBox thiết kế trẻ trung cực năng động', 'quần-short-nam-kaki-2-túi-hộp-boxbox-thiết-kế-trẻ-trung-cực-năng-động', '4575612', '50', NULL, '28,29,30,31', 'Đen,Trắng,Be', '89000', '69000', 'Nếu bạn đã quá nhàm chán với những chiếc quần đùi basic thì mẫu quần short BOXBOX trong BST mùa hè của JBAGY sẽ là một sự lựa chọn hoàn hảo cho các bạn theo đuổi phong cách TRẺ TRUNG, NĂNG ĐỘNG', '<p>TH&Ocirc;NG TIN SẢN PHẨM<br />\r\n- Chất liệu: Kaki<br />\r\n- Kiểu d&aacute;ng: Form rộng, 2 t&uacute;i hộp vu&ocirc;ng<br />\r\n- M&agrave;u sắc: Đen, Trắng, Kem, Ghi Đậm, Xanh Navy&nbsp;</p>\r\n\r\n<p>JBAGY CAM KẾT:&nbsp;<br />\r\nH&igrave;nh ảnh sản phẩm l&agrave; ảnh thật do shop tự chụp v&agrave; giữ bản quyền h&igrave;nh ảnh<br />\r\nQuần được kiểm tra kỹ, cẩn thận v&agrave; tư vấn nhiệt t&igrave;nh&nbsp;<br />\r\nH&agrave;ng c&oacute; sẵn, giao h&agrave;ng ngay khi nhận được đơn&nbsp;<br />\r\nHo&agrave;n tiền nếu sản phẩm kh&ocirc;ng giống với m&ocirc; tả<br />\r\nChấp nhận đổi h&agrave;ng khi size kh&ocirc;ng vừa<br />\r\nGiao h&agrave;ng tr&ecirc;n to&agrave;n quốc, nhận h&agrave;ng trả tiền&nbsp;</p>\r\n\r\n<p>QUY ĐỊNH BẢO H&Agrave;NH ĐỔI TRẢ&nbsp;</p>\r\n\r\n<p>1. Điều kiện &aacute;p dụng (trong v&ograve;ng 07 ng&agrave;y kể từ khi nhận sản phẩm)&nbsp;<br />\r\n- H&agrave;ng ho&aacute; vẫn c&ograve;n mới, chưa qua sử dụng&nbsp;<br />\r\n- H&agrave;ng ho&aacute; bị lỗi hoặc hư hỏng do vận chuyển hoặc do nh&agrave; sản xuất&nbsp;<br />\r\n2. Trường hợp được chấp nhận:&nbsp;<br />\r\n- H&agrave;ng kh&ocirc;ng đ&uacute;ng size, kiểu d&aacute;ng như qu&yacute; kh&aacute;ch đặt h&agrave;ng&nbsp;<br />\r\n- Kh&ocirc;ng đủ số lượng, kh&ocirc;ng đủ bộ như trong đơn h&agrave;ng&nbsp;<br />\r\n3. Trường hợp kh&ocirc;ng đủ điều kiện &aacute;p dụng ch&iacute;nh s&aacute;ch:&nbsp;<br />\r\n- Qu&aacute; 07 ng&agrave;y kể từ khi Qu&yacute; kh&aacute;ch nhận h&agrave;ng&nbsp;<br />\r\n- Gửi lại h&agrave;ng kh&ocirc;ng đ&uacute;ng mẫu m&atilde;, kh&ocirc;ng phải sản phẩm của Shop.&nbsp;<br />\r\n- Kh&ocirc;ng th&iacute;ch, kh&ocirc;ng hợp, đặt nhầm m&atilde;, nhầm m&agrave;u,...&nbsp;<br />\r\nDo m&agrave;n h&igrave;nh v&agrave; điều kiện &aacute;nh s&aacute;ng kh&aacute;c nhau, m&agrave;u sắc thực tế của sản phẩm c&oacute; thể ch&ecirc;nh lệch khoảng 3-5%&nbsp;<br />\r\n&nbsp;</p>', 'upload/products/thambnail/1731182983125184.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 07:52:28', NULL),
(28, 7, 1, 2, 11, 'Quần âu cạp cao nam Sidetab chất liệu co giãn cao cấp thương hiệu JBAGY', 'quần-âu-cạp-cao-nam-sidetab-chất-liệu-co-giãn-cao-cấp-thương-hiệu-jbagy', 'JBAGY547', '50', NULL, '28,29,30,31,32,33', 'Đen,Trắng,Xám khói', '159000', '99000', 'Vào mùa nóng, dân công sở chỉ cần một chiếc quần sidetab dáng baggy cùng với sơ mi hoặc áo polo trơn màu là quá đủ để nhìn lịch lãm, “điệu” vừa đủ mà vẫn vô cùng tinh giản.', '<p>TH&Ocirc;NG TIN SẢN PHẨM<br />\r\n- Chất liệu: Cotton H&agrave;n<br />\r\n- M&agrave;u Sắc: Đen, Xanh Than, Kem, N&acirc;u vintage, Ghi X&aacute;m<br />\r\n- Kiểu d&aacute;ng: D&aacute;ng rộng Unisex</p>\r\n\r\n<p>JBAGY CAM KẾT:&nbsp;<br />\r\nH&igrave;nh ảnh sản phẩm l&agrave; ảnh thật do shop tự chụp v&agrave; giữ bản quyền h&igrave;nh ảnh<br />\r\nQuần được kiểm tra kỹ, cẩn thận v&agrave; tư vấn nhiệt t&igrave;nh&nbsp;<br />\r\nH&agrave;ng c&oacute; sẵn, giao h&agrave;ng ngay khi nhận được đơn&nbsp;<br />\r\nHo&agrave;n tiền nếu sản phẩm kh&ocirc;ng giống với m&ocirc; tả<br />\r\nChấp nhận đổi h&agrave;ng khi size kh&ocirc;ng vừa<br />\r\nGiao h&agrave;ng tr&ecirc;n to&agrave;n quốc, nhận h&agrave;ng trả tiền&nbsp;</p>\r\n\r\n<p>QUY ĐỊNH BẢO H&Agrave;NH ĐỔI TRẢ&nbsp;<br />\r\n1. Điều kiện &aacute;p dụng (trong v&ograve;ng 07 ng&agrave;y kể từ khi nhận sản phẩm)&nbsp;<br />\r\n- H&agrave;ng ho&aacute; vẫn c&ograve;n mới, chưa qua sử dụng&nbsp;<br />\r\n- H&agrave;ng ho&aacute; bị lỗi hoặc hư hỏng do vận chuyển hoặc do nh&agrave; sản xuất&nbsp;<br />\r\n2. Trường hợp được chấp nhận:&nbsp;<br />\r\n- H&agrave;ng kh&ocirc;ng đ&uacute;ng size, kiểu d&aacute;ng như qu&yacute; kh&aacute;ch đặt h&agrave;ng&nbsp;<br />\r\n- Kh&ocirc;ng đủ số lượng, kh&ocirc;ng đủ bộ như trong đơn h&agrave;ng&nbsp;<br />\r\n3. Trường hợp kh&ocirc;ng đủ điều kiện &aacute;p dụng ch&iacute;nh s&aacute;ch:&nbsp;<br />\r\n- Qu&aacute; 07 ng&agrave;y kể từ khi Qu&yacute; kh&aacute;ch nhận h&agrave;ng&nbsp;<br />\r\n- Gửi lại h&agrave;ng kh&ocirc;ng đ&uacute;ng mẫu m&atilde;, kh&ocirc;ng phải sản phẩm của Shop.<br />\r\n- Kh&ocirc;ng th&iacute;ch, kh&ocirc;ng hợp, đặt nhầm m&atilde;, nhầm m&agrave;u,...&nbsp;<br />\r\nDo m&agrave;n h&igrave;nh v&agrave; điều kiện &aacute;nh s&aacute;ng kh&aacute;c nhau, m&agrave;u sắc thực tế của sản phẩm c&oacute; thể ch&ecirc;nh lệch khoảng 3-5%&nbsp;</p>\r\n\r\n<p>Ch&uacute;c bạn lu&ocirc;n thoải m&aacute;i, tự tin khi diện b&ecirc;n m&igrave;nh mẫu Sidetab Cao Cấp nhất tại JBAGY!&nbsp;</p>', 'upload/products/thambnail/1731183137559483.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 07:54:55', NULL),
(29, 6, 2, 4, 6, 'Quần ống rộng suông nữ lưng cao khuy cài trước siêu hack dáng', 'quần-ống-rộng-suông-nữ-lưng-cao-khuy-cài-trước-siêu-hack-dáng', '524782', '60', NULL, 'S,M,L,XL', 'Đen,Be,Trắng', '99000', '74000', '✔️ Cạp cao ken bụng,tôn dáng kéo dài đôi chân cho cô nàng tạo vẻ bề ngoài cá tính.\r\n✔️ ống rộng 24cm, chiều dài quần từ 90cm đến 96cm tùy size\r\n✔️ Có khóa trước\r\n✔️ chất liệu vải dày dặn,mềm mại,dáng quần đứng.', '<p>Quần d&agrave;i nữ ống rộng d&aacute;ng su&ocirc;ng khuy c&agrave;i trước</p>\r\n\r\n<p>✅ TH&Ocirc;NG TIN VỀ SẢN PHẨM :</p>\r\n\r\n<p>✔️ Cạp cao ken bụng,t&ocirc;n d&aacute;ng k&eacute;o d&agrave;i đ&ocirc;i ch&acirc;n cho c&ocirc; n&agrave;ng tạo vẻ bề ngo&agrave;i c&aacute; t&iacute;nh.<br />\r\n✔️ ống rộng 24cm, chiều d&agrave;i quần từ 90cm đến 96cm t&ugrave;y size<br />\r\n✔️ C&oacute; kh&oacute;a trước<br />\r\n✔️ chất liệu vải d&agrave;y dặn,mềm mại,d&aacute;ng quần đứng.</p>\r\n\r\n<p>- HƯỚNG DẪN CHỌN SIZE &nbsp;:</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; 🎀 S: eo 66cm,m&ocirc;ng 84-88cm ,d&agrave;i 90cm<br />\r\n&nbsp; &nbsp; &nbsp; 🎀 M: eo 70cm,m&ocirc;ng 88-92cm ,d&agrave;i 92cm<br />\r\n&nbsp; &nbsp; &nbsp; 🎀 L: eo 74cm,m&ocirc;ng 92-96cm ,d&agrave;i 94cm<br />\r\n&nbsp; &nbsp; &nbsp; 🎀 XL:eo 78cm,m&ocirc;ng 96-100cm, d&agrave;i 96cm<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\n- Kiểu Dáng: Form chuẩn phù hợp với vóc dáng phụ nữ Việt Nam.</p>\r\n\r\n<p>✅ TOMTOM SHOP XIN CAM KẾT ⛔<br />\r\n- Về chất lượng sản phẩm TomTom Shop cam kết cả về CHẤT LIỆU cũng như HÌNH DÁNG (đúng với mô tả, hình ảnh sản phẩm chân thực, video, ảnh thật do SHOP tự quay và chụp)<br />\r\n- Về dịch vụ: Shop sẽ cố gắng phản hồi mọi thắc mắc của quý khách nhanh nhất có thể<br />\r\n- Thời gian chuẩn bị hàng: Hàng có sẵn, thời gian chuẩn bị nhanh nhất trong ng&agrave;y.&nbsp;</p>\r\n\r\n<p>👉 CH&Iacute;NH S&Aacute;CH ĐỔI TRẢ H&Agrave;NG<br />\r\n- Đổi trả h&agrave;ng trong v&ograve;ng 3 ng&agrave;y kể từ khi nhận h&agrave;ng<br />\r\n- Khi sản phẩm kém chất lượng và không giống hình<br />\r\n- Nhầm size, số lượng, lỗi từ xưởng sản xuất...&nbsp;</p>\r\n\r\n<p>👉 Kh&aacute;ch h&agrave;ng lưu &yacute;<br />\r\n- Xem th&ocirc;ng tin, k&iacute;ch thước mẫu m&atilde;, m&agrave;u sắc trước khi đặt h&agrave;ng 💛<br />\r\n- Sản phẩm hiển thị tr&ecirc;n cửa h&agrave;ng l&agrave; c&ograve;n h&agrave;ng.</p>\r\n\r\n<p>👑 FREESHIP EXTRA - MIỄN PH&Iacute; ĐƠN H&Agrave;NG TỪ 50K 👑<br />\r\n&nbsp;</p>', 'upload/products/thambnail/1731183373380966.jpeg', NULL, 1, NULL, NULL, 1, '2022-04-26 07:58:40', NULL),
(30, 7, 2, 4, 6, 'Quần bò ống rộng nữ,quần jeans ống rộng suông đứng,màu xám', 'quần-bò-ống-rộng-nữ,quần-jeans-ống-rộng-suông-đứng,màu-xám', '98480', '60', NULL, 'S,L,M', 'Xám khói', '179000', '149000', 'Quần bò ống rộng nữ,quần jeans ống rộng suông đứng,màu xám loang khói,dáng suông,vải jean bò dày đẹp cao cấp JN346', '<p><br />\r\n1. Th&ocirc;ng tin sản phẩm:Quần b&ograve; ống rộng nữ,quần jeans ống rộng su&ocirc;ng đứng,m&agrave;u x&aacute;m loang kh&oacute;i,d&aacute;ng su&ocirc;ng vải jean b&ograve; d&agrave;y đẹp cao cấp</p>\r\n\r\n<p>&nbsp; &nbsp;+ M&agrave;u sắc : Đen+X&aacute;m<br />\r\n&nbsp; &nbsp;+ Chất vải jeans denim cho độ d&agrave;y dặn,đứng form ,mặc mềm, thoải m&aacute;i độ bền m&agrave;u cực cao.<br />\r\n&nbsp; &nbsp;+ Thấm h&uacute;t mồ h&ocirc;i tốt, th&iacute;ch hợp cho cả 4 m&ugrave;a đặc biệt m&ugrave;a h&egrave; nắng n&oacute;ng mặc rất m&aacute;t.<br />\r\n&nbsp; &nbsp;+ Form d&aacute;ng Ống rộng , Ống su&ocirc;ng vừa người , ph&ugrave; hợp du lịch, du xu&acirc;n, dạo phố, picnic, cafe...<br />\r\n&nbsp; &nbsp;+ Chất liệu jeans tho&aacute;ng kh&iacute;, nhanh kh&ocirc;, kh&ocirc;ng nhăn.&nbsp;<br />\r\n&nbsp; &nbsp;+ Đường may kỹ, tinh tế, sắc xảo.<br />\r\n&nbsp; &nbsp;+ Độ co d&atilde;n: Chất jeans b&ograve; kh&ocirc;ng co d&atilde;n, chất jean d&agrave;y dặn kh&ocirc;ng nhăn<br />\r\n&nbsp; &nbsp;+ Chiều d&agrave;i quần d&agrave;i 98cm - ống rộng 22cm</p>\r\n\r\n<p>Quần b&ograve; ống rộng nữ,quần jeans ống rộng su&ocirc;ng đứng m&agrave;u x&aacute;m loang kh&oacute;i d&aacute;ng su&ocirc;ng vải b&ograve; d&agrave;y đẹp<br />\r\nChất liệu: Jeans denim<br />\r\nĐộ co d&atilde;n: kh&ocirc;ng</p>\r\n\r\n<p>2. Th&ocirc;ng số kĩ thuật: (Y&ecirc;u cầu theo số đo 3 v&ograve;ng - kh&ocirc;ng theo chiều cao c&acirc;n nặng)<br />\r\nHướng dẫn chọn size: Quần b&ograve; ống rộng</p>\r\n\r\n<p>- Size S: chiều d&agrave;i quần 95 cm v&ograve;ng eo từ 65-67cm, V&ograve;ng m&ocirc;ng dưới 90cm.<br />\r\n- Size M: chiều d&agrave;i quần 97 cm v&ograve;ng eo từ &nbsp;68-70cm, V&ograve;ng m&ocirc;ng dưới 92cm.<br />\r\n- Size L: chiều d&agrave;i quần 99 cm v&ograve;ng eo từ &nbsp;69-71cm, V&ograve;ng m&ocirc;ng dưới 95cm.</p>\r\n\r\n<p>Lưu &yacute;: Th&ocirc;ng số sản phẩm c&oacute; thể ch&ecirc;nh lệch từ 0.5 - 1 cm do thiết kế v&agrave; sản xuất thủ c&ocirc;ng một c&aacute;ch kỹ lưỡng. Vui l&ograve;ng nếu c&oacute; thắc mắc h&atilde;y nhắn tin cho JIN STORE để được tư vấn, hỗ trợ tốt nhất.</p>\r\n\r\n<p>3. Th&ocirc;ng tin cảnh b&aacute;o:Quần b&ograve; ống rộng nữ,Quần jean ống rộng su&ocirc;ng đứng m&agrave;u x&aacute;m loang kh&oacute;i d&aacute;ng su&ocirc;ng jean b&ograve; d&agrave;y đẹp cao cấp<br />\r\n- Với tất cả c&aacute;c sản phẩm thời trang, giặt một lần trước khi mặc để đảm bảo an to&agrave;n cho da.&nbsp;<br />\r\n- Kh&ocirc;ng giặt chung với c&aacute;c đồ s&aacute;ng m&agrave;u.</p>\r\n\r\n<p>4. Hướng dẫn sử dụng bảo quản:Quần b&ograve; ống rộng nữ,Quần jeans ống rộng su&ocirc;ng đứng m&agrave;u x&aacute;m loang kh&oacute;i d&aacute;ng su&ocirc;ng vải b&ograve; d&agrave;y đẹp cao cấp<br />\r\n- Kh&ocirc;ng d&ugrave;ng m&oacute;c dị dạng phơi quần<br />\r\n- Lộn tr&aacute;i quần khi giặt để được bền nhất<br />\r\n- Kh&ocirc;ng giặt chung với chất tẩy rửa mạnh&nbsp;</p>', 'upload/products/thambnail/1731183556397209.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 08:01:35', NULL),
(31, 2, 2, 4, 24, 'Quần Short Nữ Ống Rộng MADELA ĐŨI HÀN CAO CẤP,', 'quần-short-nữ-Ống-rộng-madela-ĐŨi-hÀn-cao-cẤp,', '58215', '50', NULL, 'S,M,L', 'Đen,Be,Xanh', '70000', '54000', '- Tên sản phẩm: Quần short nữ ống rộng cá tính MADELA, quần đùi nữ ống rộng chất đũi mát siêu đẹp\r\n- Chất liệu: Đũi', '<p>✪ Th&ocirc;ng tin sản phẩm:&nbsp;<br />\r\n- T&ecirc;n sản phẩm: Quần short nữ ống rộng c&aacute; t&iacute;nh MADELA, quần đ&ugrave;i nữ ống rộng chất đũi m&aacute;t si&ecirc;u đẹp<br />\r\n- Chất liệu: Đũi<br />\r\n(Vải đũi tho&aacute;ng m&aacute;t, nhẹ v&agrave; thấm h&uacute;t mồ h&ocirc;i cực kỳ tốt, sợi vải bền, chắc, c&agrave;ng d&ugrave;ng l&acirc;u vải c&agrave;ng mềm v&agrave; &ecirc;m)<br />\r\n- M&agrave;u sắc: Đen, Be<br />\r\n- Đặc điểm thiết kế: cạp chun, quần đũi short</p>\r\n\r\n<p>✪ Th&ocirc;ng số sản phẩm:<br />\r\nKh&aacute;ch y&ecirc;u lựa chọn size theo c&acirc;n nặng, tuy nhi&ecirc;n bảng size chỉ mang t&iacute;nh chất tham khảo<br />\r\n- S: 40-46kg<br />\r\n- M: 46-54kg<br />\r\n- L: 54-62kg<br />\r\n- XL: 62-68kg<br />\r\n✔ Hướng dẫn mua quần ống su&ocirc;ng nữ:<br />\r\n- C&aacute;c bạn vui l&ograve;ng đặt đ&uacute;ng m&agrave;u, mẫu Quần short nữ chất ĐŨI m&igrave;nh th&iacute;ch, kh&ocirc;ng đặt h&agrave;ng qua GHI CH&Uacute;.<br />\r\n- Shop c&oacute; Freeship Extra, h&atilde;y sử dụng m&atilde; miễn ph&iacute; vận chuyển phần thanh to&aacute;n để tiết kiệm nhất nh&eacute;.<br />\r\n- Thời gian giao quần đ&ugrave;i nữ cho đơn vị vận chuyển trung b&igrave;nh sẽ l&agrave; 1 ng&agrave;y.&nbsp;<br />\r\n- Vận chuyển h&agrave;ng: Vận chuyển l&agrave; của b&ecirc;n shopee n&ecirc;n nếu c&oacute; vấn đề bạn h&atilde;y li&ecirc;n lạc hotline của đơn vị vận chuyển tương ứng nh&eacute;&nbsp;</p>\r\n\r\n<p>✪ Hướng dẫn c&aacute;ch sử dụng v&agrave; chăm s&oacute;c sản phẩm quần đũi nữ<br />\r\n✔️ Giặt m&aacute;y ở nhiệt độ thường, khuyến kh&iacute;ch giặt tay.<br />\r\n✔️ Kh&ocirc;ng sử dụng chất tẩy c&oacute; chứa clo.<br />\r\n✔️ N&ecirc;n Phơi ở nơi c&oacute; &aacute;nh nắng nhẹ hoặc trong b&oacute;ng m&aacute;t.<br />\r\n✔️ L&agrave; ủi ở nhiệt độ thấp 110 độ c.<br />\r\n✔️ Giặt với sản phẩm c&ugrave;ng m&agrave;u.<br />\r\n&nbsp;</p>', 'upload/products/thambnail/1731183737783286.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 08:04:28', NULL),
(32, 2, 2, 4, 24, 'Quần short đũi_quần đùi đũi dáng váy siêu hot_m068', 'quần-short-đũi_quần-đùi-đũi-dáng-váy-siêu-hot_m068', '258480', '50', NULL, 'S,M,L', 'Đen,Trắng,Kem', '75000', '44000', 'Bảng size chỉ mang tính chất tương đối nếu eo mông to hoặc nhỏ thì tăng giảm size giúp shop nha❤️❤️❤️\r\nMùa hè mà mặc em đũi thì bao xinh và mát luôn ạ', '<p>S:40-47kg<br />\r\nM:48-52kg<br />\r\nL:53-56kg<br />\r\nXl : 56-61kg<br />\r\nBảng size chỉ mang t&iacute;nh chất tương đối nếu eo m&ocirc;ng to hoặc nhỏ th&igrave; tăng giảm size gi&uacute;p shop nha❤️❤️❤️<br />\r\nM&ugrave;a h&egrave; m&agrave; mặc em đũi th&igrave; bao xinh v&agrave; m&aacute;t lu&ocirc;n ạ<br />\r\nMặc nhẹ như k mặc m&agrave; rất thời trang kh&aacute;ch nh&eacute;<br />\r\nQuần c&oacute; 4 size S M L Xl<br />\r\n3 m&agrave;u: đen trắng be ạ</p>', 'upload/products/thambnail/1731183889179468.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 08:06:52', NULL),
(33, 3, 4, 13, 30, 'Đồng hồ thời trang nữ GoGoey dây da nhung cá tính SCXe792', 'Đồng-hồ-thời-trang-nữ-gogoey-dây-da-nhung-cá-tính-scxe792', 'SCXe792', '50', NULL, NULL, 'Đen,Nâu,Đỏ,Xám', '259000', '199000', '✚ Sản Phẩm : GoGoey\r\n✚ Tình trạng : mới\r\n✚ Đồng hồ : nữ', '<p>C&oacute; 6 m&agrave;u: đen, đỏ, hồng , n&acirc;u , xanh , x&aacute;m<br />\r\n✚ Sản Phẩm : GoGoey<br />\r\n✚ T&igrave;nh trạng : mới<br />\r\n✚ Đồng hồ : nữ<br />\r\n✚ K&iacute;ch thước mặt: 32 mm D&agrave;y : 5mm&nbsp;<br />\r\n✚ K&iacute;ch thước d&acirc;y : 1,5cm<br />\r\n✚ Chất liệu khung đồng hồ: Th&eacute;p kh&ocirc;ng gỉ.<br />\r\n✚ Chất liệu k&iacute;nh: Chống xước tốt.<br />\r\n✚ Loại d&acirc;y đeo: d&acirc;y da nhung<br />\r\n✚ Chức năng hiển thị: Giờ, Ph&uacute;t, Gi&acirc;y<br />\r\n✚ Năng lượng: d&ugrave;ng pin<br />\r\n✚ Khả năng chống nước: chống nước mức độ nhẹ<br />\r\n✚ Bảo h&agrave;nh: 6 th&aacute;ng&nbsp;<br />\r\n➥ Cam Kết ★★★★★<br />\r\n🚗 GIAO H&Agrave;NG &amp; THANH TO&Aacute;N (COD) TẬN NƠI TR&Ecirc;N TO&Agrave;N QUỐC<br />\r\n👆 👆 BẢO H&Agrave;NH M&Aacute;Y 6 TH&Aacute;NG, PIN 12 TH&Aacute;NG, 1 ĐỔI 1 TRONG V&Ograve;NG 7 NG&Agrave;Y NẾU SẢN PHẨM L&Agrave; LỖI CỦA NH&Agrave; SẢN XUẤT<br />\r\n💲 KH&Ocirc;NG BẢO H&Agrave;NH TRẦY XƯỚC B&Ecirc;N NGO&Agrave;I</p>', 'upload/products/thambnail/1731184258839582.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 08:12:44', NULL),
(34, 5, 4, 13, 30, 'Đồng hồ thời trang nữ RATE mặt chữ nhật xinh xắn', 'Đồng-hồ-thời-trang-nữ-rate-mặt-chữ-nhật-xinh-xắn', 'RATE 2854', '90', NULL, NULL, 'Đen,Trắng', '195000', '149000', '🚀Sản phẩm có sẵn và được giao trong thời gian nhanh nhất!\r\n🍀Nếu có vấn đề sau khi nhận hàng, giao hàng thiếu, sản phẩm lổi, vận chuyển chậm,.. xin vui lòng liên hệ với chúng tôi bất cứ lúc nào để được hỗ trợ.', '<p><br />\r\nTH&Ocirc;NG TIN CHUNG:<br />\r\nT&Ecirc;N SẢN PHẨM: Đồng hồ thời trang nữ RATE mặt chữ nhật xinh xắn<br />\r\nTH&Agrave;NH PHẦN:<br />\r\n- D&acirc;y đeo: d&acirc;y da<br />\r\n- Mặt k&iacute;nh : Mặt k&iacute;nh Mineral crytal chống trầy v&agrave; va đập tốt<br />\r\n- Khung: Hợp kim<br />\r\n- Bộ m&aacute;y: Time Module quartz movement&nbsp;</p>\r\n\r\n<p>TH&Ocirc;NG SỐ KỸ THUẬT:<br />\r\n- K&iacute;ch thước mặt: 34mm<br />\r\n- Chiều d&agrave;i d&acirc;y: 22 cm&nbsp;<br />\r\n- D&agrave;y: 8mm<br />\r\n- Chiều rộng d&acirc;y: 14mm<br />\r\n- Chức năng: Xem giờ<br />\r\n- Chống nước: 3ATM ( chống nước sinh hoạt )<br />\r\n- M&agrave;u sắc: Trắng đen (N), Trắng n&acirc;u (N), Full đen &nbsp;(N), Đen n&acirc;u &nbsp;(N), Trắng n&acirc;u (T), Đen n&acirc;u (T), Trắng đen (T), Full đen (T)<br />\r\n- Xuất xứ: Trung Quốc</p>\r\n\r\n<p>TH&Ocirc;NG TIN CẢNH B&Aacute;O:<br />\r\nKh&ocirc;ng sử dụng đồng hồ tiếp x&uacute;c h&oacute;a chất, x&agrave; ph&ograve;ng, ng&acirc;m nước, bơi lội trong thời gian d&agrave;i</p>\r\n\r\n<p>HƯỚNG DẨN SỬ DỤNG:<br />\r\n&nbsp;Bạn r&uacute;t nhẹ chốt giữ sau đ&oacute; xoay chốt chỉnh giờ v&agrave; ấn chốt s&aacute;t v&agrave;o để đồng hồ hoạt động</p>\r\n\r\n<p>TH&Ocirc;NG TIN BẢO H&Agrave;NH:<br />\r\n- Bảo h&agrave;nh 6 th&aacute;ng về m&aacute;y v&agrave; 12 th&aacute;ng về pin<br />\r\n- Đổi mới trong 7 ng&agrave;y:<br />\r\n+ Sản phẩm đổi mới chưa qua sử dụng.<br />\r\n+ Lổi do vận chuyển, sản xuất.</p>\r\n\r\n<p>Nh&agrave; nhập khẩu: C&ocirc;ng Ty Dịch Vụ Vận Tải Trường Ph&aacute;t Logistics<br />\r\nĐịa chỉ: s&ocirc; 78/12 đường Cộng H&ograve;a , Phường 4, Quận T&acirc;n B&igrave;nh, TP.HCM, Việt Nam<br />\r\nNh&agrave; Ph&acirc;n phối: Hộ kinh doanh Madeline</p>\r\n\r\n<p>THỜI GIAN GIAO H&Agrave;NG:<br />\r\n- Giao h&agrave;ng nhận h&agrave;ng mới thanh to&aacute;n.<br />\r\n- Nội th&agrave;nh Hồ Ch&iacute; Minh: 1-2 ng&agrave;y nhận h&agrave;ng<br />\r\n- Ngoại th&agrave;nh:<br />\r\n+ Thị trấn, huyện, thị x&atilde;: 2-3 ng&agrave;y nhận h&agrave;ng<br />\r\n+ Ấp, th&ocirc;n, x&oacute;m: 3-4 ng&agrave;y nhận h&agrave;ng.</p>', 'upload/products/thambnail/1731184656277619.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 08:19:03', NULL),
(35, 2, 4, 8, 33, 'úi đeo chéo nữ đẹp đi chơi 2 dây và quai xích ngọc da thêu trần trám', 'úi-đeo-chéo-nữ-đẹp-đi-chơi-2-dây-và-quai-xích-ngọc-da-thêu-trần-trám', '54960', '50', NULL, NULL, 'Đen, Trắng,Be', '162000', '95000', 'Mã hàng đeo được 2 kiểu: kẹp nách và đeo chéo\r\nFollow Shop ngay để nhận ưu đãi từ shop nhé.Thanks', '<p>🍃 3 m&agrave;u đen trắng ph&ugrave; hợp cho c&aacute;c n&agrave;ng<br />\r\n- Chất liệu: Da mềm<br />\r\n- Size: 22<br />\r\n- C&ocirc;ng dụng: T&uacute;i gồm 3 ngăn, 1 ngăn kho&aacute; đủ để c&aacute;c n&agrave;ng để giấy tờ cực k&igrave; tiện dụng.<br />\r\n- M&agrave;u sắc: Trắng, Đen, Be<br />\r\n- T&uacute;i cầm tay hoặc đeo ch&eacute;o đều rất sang xịn mịn<br />\r\n-------------------------------<br />\r\n🍃 Hướng dẫn sử dụng:<br />\r\n+ Sản phẩm tr&aacute;ch để l&acirc;u dưới &aacute;nh nắng trực tiếp ảnh hưởng đến chất lượng của da<br />\r\n+ Vệ sinh bằng c&aacute;ch lau bằng khăn ẩm tr&aacute;nh c&aacute;c chất tẩy rửa.<br />\r\n-------------------------------<br />\r\n🍃 Ch&iacute;nh s&aacute;ch đổi trả:<br />\r\n+ Hỗ trợ 1 đổi 1 cho KH nếu lỗi do nh&agrave; sản xuất<br />\r\n+ Giảm gi&aacute; 10% đối với KH Follow shop<br />\r\n-------------------------------</p>', 'upload/products/thambnail/1731184861166644.jpeg', NULL, NULL, NULL, NULL, 1, '2022-04-26 08:22:19', NULL),
(36, 3, 5, 11, 34, 'Bộ đồ bé trai cộc tay vải đũi có túi ngực quần đùi cho trẻ', 'bộ-đồ-bé-trai-cộc-tay-vải-đũi-có-túi-ngực-quần-đùi-cho-trẻ', '015150', '93', 'Bộ đồ bé trai', '9-12kg,12-15kg,15-17kg', 'Trắng , Vàng, Nâu', '195000', '110000', '🌈Magic Kids - điểm đến lý tưởng mở ra không gian trẻ thơ kỳ diệu với những bộ cánh bắt kịp xu hướng mới nhất hiện nay \r\n🌈Thiết kế độc đáo, chất liệu mềm mại, thoải mái chính là điểm cộng vô cùng lớn cho các sản phẩm của shop \r\n🌈Giá cả cạnh tranh với toàn thị trường, khách hàng có thể mua được giá sỉ dù chỉ 1 sản phẩm. GIÁ CỰC HỜI!!!', '<p>🐙BỘ ĐỒ CỘC TAY B&Eacute; TRAI CHẤT LIỆU ĐŨI THO&Aacute;NG M&Aacute;T CHO B&Eacute; 🐙<br />\r\n- Sản phẩm: BỘ ĐỒ CỘC TAY B&Eacute; TRAI CHẤT LIỆU ĐŨI THO&Aacute;NG M&Aacute;T CHO B&Eacute;<br />\r\n- Chất liệu: Đũi<br />\r\n- M&agrave;u sắc: Nhiều m&agrave;u kh&aacute;c nhau<br />\r\n&quot;- Chất vải đũi mềm mại đảm bảo b&eacute; mặc l&ecirc;n cực k&igrave; tho&aacute;ng kh&iacute;, kh&ocirc;ng b&iacute; mồ h&ocirc;i<br />\r\n- &Aacute;o cộc tay v&agrave; quần đ&ugrave;i gi&uacute;p b&eacute; cảm thấy thoải m&aacute;i v&agrave; tho&aacute;ng m&aacute;t nhất l&agrave; v&agrave;o thời tiết m&ugrave;a h&egrave; oi bức, nắng n&oacute;ng<br />\r\n- &Aacute;o quần m&agrave;u trơn với m&agrave;u sắc tươi s&aacute;ng cực k&igrave; th&iacute;ch hợp mặc v&agrave;o m&ugrave;a h&egrave;<br />\r\n- Bộ đồ đũi cộc tay quần đ&ugrave;i m&agrave;u trơn ph&ugrave; hợp mặc cả khi b&eacute; ở nh&agrave; hay đi chơi, đi học,...<br />\r\n- Size: 80-140 (9-30kg)<br />\r\n⚠️ Qu&yacute; kh&aacute;ch vui l&ograve;ng inbox shop để được tư vấn chi tiết về sản phẩm trước khi đặt h&agrave;ng&quot;</p>\r\n\r\n<p>📚 LƯU &Yacute; KHI SỬ DỤNG V&Agrave; BẢO QUẢN ĐỒ CHO B&Eacute;&nbsp;<br />\r\n1️⃣ N&ecirc;n giặt &aacute;o ngay sau khi sử dụng để tr&aacute;nh &aacute;o bị ẩm mốc v&agrave; c&oacute; m&ugrave;i h&ocirc;i&nbsp;<br />\r\n2️⃣ Kh&ocirc;ng n&ecirc;n giặt chung &aacute;o với c&aacute;c m&agrave;u &aacute;o kh&aacute;c&nbsp;<br />\r\n3️⃣ Hạn chế sử dụng c&aacute;c loại x&agrave; ph&ograve;ng giặt tẩy mạnh&nbsp;<br />\r\n4️⃣ Kh&ocirc;ng n&ecirc;n giặt &aacute;o trong nước n&oacute;ng qu&aacute; 40 độ&nbsp;<br />\r\n5️⃣ Tr&aacute;nh sử dụng c&aacute;c loại nước xả l&agrave;m mềm vải&nbsp;<br />\r\n6️⃣ Phơi quần &aacute;o ngo&agrave;i trời nắng nhẹ hoặc nơi b&oacute;ng r&acirc;m&nbsp;<br />\r\n7️⃣ Sử dụng mắc &aacute;o nhỏ d&agrave;nh ri&ecirc;ng cho đồ của b&eacute;&nbsp;<br />\r\n8️⃣ L&agrave;, ủi đồ ở nhiệt độ thấp</p>', 'upload/products/thambnail/1731185274482670.jpeg', NULL, 1, NULL, NULL, 1, '2022-04-26 08:40:05', '2022-07-10 21:39:14'),
(37, 6, 4, 8, 33, 'Túi xách nữ , túi đeo chéo đeo vai dây da luồn xích cực xinh', 'túi-xách-nữ-,-túi-đeo-chéo-đeo-vai-dây-da-luồn-xích-cực-xinh', '1256490', '50', 'Túi xách nữ', NULL, 'Đen,Trắng,Da, Hồng', '168000', '96000', 'Tất cả các sản phẩm bên em đều là hàng may kĩ xưởng tự may lên giá thành cực mềm bên em bán giá cực sốc để khách hàng mua sản phẩm vừa ngon bổ rẻ .', '<p>TH&Ocirc;NG CHI TIẾT SẢN PHẨM<br />\r\n_K&iacute;ch thước:20 x 10 x &nbsp;6cm<br />\r\n_Chất liệu: DA PU cao cấp<br />\r\n_M&agrave;u sắc: đen, trắng&nbsp;<br />\r\n_Đường chỉ chắc chắn v&agrave; tinh tế<br />\r\n_Thiết kế theo phong c&aacute;ch H&agrave;n Quốc cực chất&nbsp;<br />\r\nV&igrave; sao bạn n&ecirc;n sở hữu &iacute;t nhất một chiếc T&Uacute;I ĐEO CH&Eacute;O?<br />\r\nT&uacute;i x&aacute;ch nữ l&agrave; dạng t&uacute;i đeo ch&eacute;o th&ocirc;ng dụng h&agrave;ng ng&agrave;y v&agrave; ph&ugrave; hợp với mọi ho&agrave;n cảnh. T&uacute;i đeo ch&eacute;o nữ c&oacute; nhiều k&iacute;ch thước kh&aacute;c nhau c&oacute; thể đựng được nhiều giấy tờ, v&iacute; mini, mỹ phẩm v&agrave; điện thoại. Điểm nổi bật của d&ograve;ng t&uacute;i x&aacute;ch n&agrave;y l&agrave; lu&ocirc;n c&oacute; d&acirc;y đeo ch&eacute;o gi&uacute;p bạn thoải m&aacute;i tung tăng dạo phố m&agrave; kh&ocirc;ng hề vướng bận đ&ocirc;i tay.</p>\r\n\r\n<p>Những lưu &yacute; khi sử dụng T&Uacute;I X&Aacute;CH!<br />\r\n1.V&igrave; bạn sử dụng t&uacute;i đeo ch&eacute;o h&agrave;ng ng&agrave;y n&ecirc;n tất nhi&ecirc;n n&oacute; sẽ bị bẩn, bạn n&ecirc;n d&ugrave;ng khăn ẩm lau nhẹ nh&agrave;ng tr&ecirc;n bề mặt chiếc t&uacute;i x&aacute;ch xinh đẹp của bạn hoặc d&ugrave;ng những sản phẩm chuy&ecirc;n dụng cho chất liệu da để tẩy vết bẩn.<br />\r\n2. Nếu b&oacute;p đựng của bạn bị ướt, bạn n&ecirc;n d&ugrave;ng khăn ẩm lau kh&ocirc; bề mặt v&agrave; để n&oacute; kh&ocirc; ở nhiệt độ ph&ograve;ng, TUYỆT ĐỐI KH&Ocirc;NG SẤY KH&Ocirc; BẰNG M&Aacute;Y tr&aacute;nh bị biến dạng chiếc v&iacute; cầm tay của bạn.</p>', 'upload/products/thambnail/1731186232345836.jpeg', NULL, NULL, NULL, 1, 1, '2022-04-26 08:45:18', '2022-04-26 08:45:18'),
(38, 9, 4, 10, 31, 'Mũ Lưỡi Trai Cruise Nón Kết Nam Nữ Jussy Fashion', 'mũ-lưỡi-trai-cruise-nón-kết-nam-nữ-jussy-fashion', '154025', '56', 'Mũ Lưỡi Trai', NULL, 'Trắng, Đen , Be', '45000', '35000', '👉 👉 Mũ Lưỡi Trai Cruise Nón Kết Nam Nữ Thời Trang Jussy Nhiều Màu Hot Trend Phong Cách Nón Lưỡi Trai Form Mềm Vải Cotton Thoáng Mát. Mũ Lưỡi Trai Cruise Phong Cách Nón Kết Dadhat Street Style Hot Trend.', '<p>👉 👉👉 LƯU &Yacute;:&nbsp;<br />\r\n✔️ MŨ LƯỠI TRAI FORM MỀM N&Agrave;Y SHOP SẢN XUẤT THEO FORM N&Oacute;N DADHAT KIỂU D&Aacute;NG FORM MỀM, GẤP GỌN THOẢI M&Aacute;I V&Agrave;O BALO, T&Uacute;I X&Aacute;CH M&Agrave; KO BỊ G&Atilde;Y HAY MẤT FORM, CHẤT VẢI COTTON NHẬP KHẨU MAY 1 LỚP N&Ecirc;N N&Oacute;N SẼ MỎNGNHƯNG ĐỘI N&Oacute;N SẼ THO&Aacute;NG M&Aacute;T, ĐỘI KO BỊ B&Iacute; ĐẦU&nbsp;<br />\r\n✔️ QU&Yacute; KH&Aacute;CH MUỐN FORM N&Oacute;N CỨNG, VẢI D&Agrave;Y TH&Igrave; CHỌN MẨU N&Oacute;N KH&Aacute;C CHẤT VẢI KAKI D&Agrave;Y, &Eacute;P KEO CỨNG, MAY 2 LỚP GI&Uacute;P SHOP VỚI NH&Eacute;, XIN CH&Acirc;N TH&Agrave;NH CẢM ƠN QU&Yacute; KH&Aacute;CH !</p>\r\n\r\n<p>✔️ Mũ Lưỡi Trai th&ecirc;u chữ Cruise si&ecirc;u đẹp si&ecirc;u chất. Với phong c&aacute;ch đơn giản nhưng tinh tế n&ecirc;u bật phong c&aacute;ch c&aacute; t&iacute;nh của bạn, ph&ugrave; hợp với mọi kiểu phối đồ mặc hằng ng&agrave;y, tập luyện thể thao hay sự kiện.<br />\r\n✔️ N&oacute;n lưỡi trai được thiết kế th&ecirc;u phong c&aacute;ch DadHat n&ecirc;n n&oacute;n chỉ c&oacute; 1 lớp vải, kh&ocirc;ng &eacute;p keo cứng n&ecirc;n form n&oacute;n sẽ mềm dễ d&agrave;ng gấp gọn v&agrave; balo t&uacute;i x&aacute;ch để mang theo.<br />\r\n✔️ N&oacute;n Kết H&agrave;n Quốc Dễ Thương ra mắt với 5 m&agrave;u: Đen, Trắng, Kaki, V&agrave;ng, Đỏ<br />\r\n✔️ Ph&ugrave; hợp với bất kỳ outfit n&agrave;o của c&aacute;c bạn g&aacute;i nữ t&iacute;nh, đ&aacute;ng y&ecirc;u.<br />\r\n✔️ Chất liệu: Chất vải Cotton tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i, kh&ocirc;ng hầm b&iacute;<br />\r\n✔️ Th&ocirc;ng số sản phẩm: Size v&ograve;ng đầu n&oacute;n từ 55-58 cm. C&oacute; Kh&oacute;a Inox ph&iacute;a sau gi&uacute;p tăng/giảm size n&oacute;n t&ugrave;y v&ograve;ng đầu của bạn.&nbsp;</p>', 'upload/products/thambnail/1731186550005810.jpeg', NULL, NULL, NULL, 1, 1, '2022-04-26 08:49:09', '2022-07-10 21:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ER8zEgxueP1ELYYfMABmk1p99VeAbCG5QBydmBZK', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiaFpURXJkSGhiQ2l3YXNPcXRsVVE0M0RyM0taWVpnVVM3YUE0VzJ2eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3QvZG8tYW4vcHVibGljIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRYMVdpZTU2dVB6bTlCdjNxaGVRQTh1WS9Ray5XMGJ0ZFQ1dUdyWk95RUtIRFBhckhXbFMuSyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkWDFXaWU1NnVQem05QnYzcWhlUUE4dVkvUWsuVzBidGRUNXVHclpPeUVLSERQYXJIV2xTLksiO3M6NDoiY2FydCI7YTowOnt9fQ==', 1657514430),
('uBPUH4ItyYc35mg7okD8YFSg6hgB9oERKaF4fmUv', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRFA1VGRtUEJ2TTUwWW1nV2hGVzNJWmhPTUY4NlhlVzBpSWRGZ0FoRiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjU0OiJodHRwOi8vbG9jYWxob3N0L2RvLWFuL3B1YmxpYy9vcmRlcnMvcHJvY2Vzc2luZy9vcmRlcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1657514392);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_img`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(4, 'upload/slider/1731156316639307.png', 'SALE OFF 50%', 'Chỉ ngày hôm nay', 1, NULL, '2022-04-26 00:49:18'),
(6, 'upload/slider/1731156414723829.png', 'GIẢM GIÁ CỰC KHỦNG', 'Giảm tất cả các mặt hàng vào hôm nay', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Áo', 'Áo', NULL, NULL),
(2, 1, 'Quần', 'quần', NULL, NULL),
(3, 2, 'Áo', 'Áo', NULL, NULL),
(4, 2, 'Quần', 'quần', NULL, NULL),
(5, 3, 'Giày Dép Nam', 'giày-dép-nam', NULL, '2022-04-20 00:29:26'),
(6, 3, 'Giày Dép Nữ', 'giày-dép-nữ', NULL, '2022-04-20 00:29:35'),
(7, 4, 'Thắt Lưng', 'thắt-lưng', NULL, '2022-04-20 00:28:09'),
(8, 4, 'Cặp Túi Xách', 'cặp-túi-xách', NULL, '2022-04-20 00:28:20'),
(9, 2, 'Váy & Đầm', 'váy-&-Đầm', NULL, '2022-04-20 00:27:52'),
(10, 4, 'Nón Mũ', 'nón-mũ', NULL, '2022-04-20 00:28:28'),
(11, 5, 'Quần Áo', 'quần-Áo', NULL, NULL),
(12, 5, 'Giày Dép', 'giày-dép', NULL, '2022-04-20 00:29:14'),
(13, 4, 'Đồng Hồ', 'Đồng-hồ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `category_id`, `subcategory_id`, `subsubcategory_name`, `subsubcategory_slug`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Áo Thun & Áo Không Tay', 'Áo-thun-&-Áo-không-tay', NULL, NULL),
(2, 1, 1, 'Áo Polo', 'Áo-polo', NULL, NULL),
(3, 1, 1, 'Áo Khoác', 'Áo-khoác', NULL, NULL),
(4, 1, 1, 'Áo Nỉ & Hoodie', 'Áo-nỉ-&-hoodie', NULL, NULL),
(5, 1, 2, 'Quần Short', 'quần-short', NULL, NULL),
(6, 2, 4, 'Quần Dài', 'quần-dài', NULL, NULL),
(7, 2, 3, 'Áo Khoác', 'Áo-khoác', NULL, NULL),
(8, 4, 7, 'Thắt Lưng Nữ', 'thắt-lưng-nữ', NULL, '2022-04-20 00:26:44'),
(9, 4, 7, 'Thắt Lưng Nam', 'thắt-lưng-nam', NULL, '2022-04-20 00:26:58'),
(10, 1, 2, 'Quần Jeans', 'quần-jeans', NULL, NULL),
(11, 1, 2, 'Quần Âu', 'quần-Âu', NULL, NULL),
(12, 1, 1, 'Áo sơ mi', 'Áo-sơ-mi', NULL, NULL),
(13, 3, 5, 'Bốt', 'bốt', NULL, NULL),
(14, 3, 5, 'Giày Thể Thao', 'giày-thể-thao', NULL, '2022-04-20 00:25:57'),
(15, 3, 5, 'Giày Tây Lười', 'giày-tây-lười', NULL, '2022-04-20 00:26:09'),
(16, 3, 5, 'Xăng-đan và Dép', 'xăng-đan-và-dép', NULL, NULL),
(17, 3, 6, 'Giày Cao Gót', 'giày-cao-gót', NULL, '2022-04-20 00:26:19'),
(18, 3, 6, 'Giày Đế Bằng', 'giày-Đế-bằng', NULL, '2022-04-20 00:26:29'),
(19, 3, 6, 'Xăng-đan Và Dép', 'xăng-đan-và-dép', NULL, NULL),
(20, 3, 6, 'Giày Thể Thao', 'giày-thể-thao', NULL, NULL),
(21, 2, 3, 'Áo Nỉ & Hoodie', 'Áo-nỉ-&-hoodie', NULL, NULL),
(22, 2, 3, 'Áo Thun & Áo Không Tay', 'Áo-thun-&-Áo-không-tay', NULL, NULL),
(23, 2, 3, 'Áo Sơ Mi', 'Áo-sơ-mi', NULL, NULL),
(24, 2, 4, 'Quần Ngắn', 'quần-ngắn', NULL, NULL),
(25, 2, 9, 'Chân Váy', 'chân-váy', NULL, NULL),
(26, 2, 9, 'Đầm', 'Đầm', NULL, NULL),
(27, 2, 4, 'Quần Thể Thao', 'quần-thể-thao', NULL, NULL),
(28, 2, 9, 'Váy', 'váy', NULL, NULL),
(29, 4, 13, 'Đồng Hồ Nam', 'Đồng-hồ-nam', NULL, NULL),
(30, 4, 13, 'Đồng Hồ Nữ', 'Đồng-hồ-nữ', NULL, NULL),
(31, 4, 10, 'Mũ Lưỡi Trai', 'mũ-lưỡi-trai', NULL, NULL),
(32, 4, 10, 'Mũ Tây Bèo', 'mũ-tây-bèo', NULL, NULL),
(33, 4, 8, 'Túi Xách Nữ', 'túi-xách-nữ', NULL, NULL),
(34, 5, 11, 'Đồ Bộ Trẻ Em', 'Đồ-bộ-trẻ-em', NULL, NULL),
(35, 5, 11, 'Đầm, Váy Trẻ em', 'Đầm,-váy-trẻ-em', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_seen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `last_seen`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Hiếu Thanh Lê', 'hieuthanhle.vn@gmail.com', '0999999999', '2022-07-11 04:40:30', NULL, '$2y$10$X1Wie56uPzm9Bv3qheQA8uY/Qk.W0btdT5uGrZOyEKHDParHWlS.K', NULL, NULL, NULL, NULL, '2022042703231200px-User_icon-cp.svg.png', '2022-04-20 00:50:27', '2022-07-10 21:40:30'),
(2, 'LÊ DẠNG', 'dangle9999@gmail.com', '07949899999', '2022-04-20 10:31:53', NULL, '$2y$10$acIvhcCIalEwDqU96qBrh.TvVZkAY6gMmLyjjamwQB0l9iPRAdq4a', NULL, NULL, NULL, NULL, NULL, '2022-04-20 03:25:11', '2022-04-20 03:31:53'),
(3, 'LÊ TUẤN', 'anhtuandn@gmail.com', '079999999', '2022-04-20 14:21:44', NULL, '$2y$10$dEdeSGlWcH64AAATtA4O7.Mju3vJgvSD1sMvfO.o/pl1cV7wSRk2e', NULL, NULL, NULL, NULL, NULL, '2022-04-20 05:26:16', '2022-04-20 07:21:44'),
(4, 'User', 'user@gmail.com', '0123456789', '2022-05-10 05:28:45', NULL, '$2y$10$t4YgaffI67x4w/AQWgLQNuQJpnxBh49VS0RK6MbLk7QCFxJSXgvSi', NULL, NULL, NULL, NULL, '202204270320user.png', '2022-04-22 09:07:18', '2022-05-09 22:28:45');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 4, 7, '2022-04-25 20:58:41', NULL),
(4, 4, 38, '2022-04-26 18:57:01', NULL),
(7, 1, 38, '2022-07-10 21:35:17', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
