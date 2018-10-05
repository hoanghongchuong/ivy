-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 05, 2018 lúc 06:12 AM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ivy`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` text COLLATE utf8_unicode_ci,
  `mota_en` text CHARACTER SET utf8,
  `link` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `content_en` longtext CHARACTER SET utf8,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `title_en` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `keyword_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text CHARACTER SET utf8,
  `com` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `user_id`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `mota`, `mota_en`, `link`, `content`, `content_en`, `status`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `com`, `created_at`, `updated_at`) VALUES
(1, 5, 'Thư ngỏ s fsf', 's fs f', 'thu-ngo-s-fsf', NULL, NULL, NULL, NULL, NULL, '<p>C&ocirc;ng ty Cổ phần quốc tế IVY HR xin được gửi ch&agrave;o tr&acirc;n trọng v&agrave; lời cảm ơn ch&acirc;n th&agrave;nh nhất tới qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; lu&ocirc;n quan t&acirc;m, ủng hộ hoạt động của c&ocirc;ng ty trong suốt thời gian qua.</p>\r\n<p>C&ocirc;ng ty Cổ phần Thương mại v&agrave; Du lịch &Acirc;u Việt được th&agrave;nh lập từ năm 2009 v&agrave; bắt đầu hoạt động trong lĩnh vực cung ứng, ph&aacute;i cử nguồn nh&acirc;n lực sang nước ngo&agrave;i l&agrave;m việc từ năm 2015. Với phương ch&acirc;m \"X&acirc;y dựng niềm tin - ph&aacute;t triển bền vững &rdquo;, ch&uacute;ng t&ocirc;i lu&ocirc;n lựa chọn những nguồn nh&acirc;n lực ưu t&uacute;, giỏi tay nghề, &yacute; thức tốt để ph&aacute;i cử sang nước ngo&agrave;i l&agrave;m việc. Ch&iacute;nh v&igrave; vậy, c&ocirc;ng ty Cổ phần Thương mại v&agrave; Du lịch &Acirc;u Việt vinh dự đ&atilde; nhận được sự h&agrave;i l&ograve;ng, tin tưởng v&agrave; đ&aacute;nh gi&aacute; cao từ ph&iacute;a Qu&yacute; kh&aacute;ch h&agrave;ng. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự nhủ rằng sự phồn vinh của kh&aacute;ch h&agrave;ng l&agrave; niềm vui của c&ocirc;ng ty, v&igrave; thế to&agrave;n thể Ban l&atilde;nh đạo cũng như c&aacute;n bộ nh&acirc;n vi&ecirc;n trong c&ocirc;ng ty lu&ocirc;n nỗ lực để cung cấp nguồn lao động chất lượng cao, g&oacute;p phần v&agrave;o việc th&uacute;c đẩy mối quan hệ tốt đẹp, mật thiết giữa Việt Nam v&agrave; c&aacute;c nước được cung ứng nguồn nh&acirc;n lực. Trong thời gian tới, C&ocirc;ng ty Cổ phần Thương mại v&agrave; Du lịch &Acirc;u Việt cam kết sẽ tiếp tục n&acirc;ng cao chất lượng nguồn nh&acirc;n lực với l&ograve;ng tận tụy v&agrave; năng lực kh&ocirc;ng ngừng được n&acirc;ng cao, để cống hiến nhiều hơn nữa cho sự th&agrave;nh c&ocirc;ng của Qu&yacute; kh&aacute;ch h&agrave;ng. Ch&uacute;ng t&ocirc;i tin rằng với nỗ lực kh&ocirc;ng ngừng v&agrave; quyết t&acirc;m, ch&uacute;ng t&ocirc;i sẽ tiếp tục nhận được sự tin tưởng v&agrave; đồng h&agrave;nh từ Qu&yacute; kh&aacute;ch h&agrave;ng đ&uacute;ng như phương ch&acirc;m \"X&acirc;y dựng niềm tin - ph&aacute;t triển bền vững\". Rất mong nhận được sự hợp t&aacute;c của qu&yacute; vị kh&aacute;ch h&agrave;ng!</p>', '<p>&nbsp; fffff</p>', 1, 'rrr', 'ggg', 'rrr', 'ggg', 'f gdf gdf', 'gggg', 'thu-ngo', '2018-10-03 03:37:28', '2018-10-02 20:37:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banggia`
--

CREATE TABLE `banggia` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `content` text,
  `doc` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banggia`
--

INSERT INTO `banggia` (`id`, `name`, `alias`, `content`, `doc`, `created_at`, `updated_at`) VALUES
(2, 'Bảng giá tại Hà Nội', 'bang-gia-tai-ha-noi', '<p><strong>Bảng gi&aacute; H&agrave;ng Vặn Ren mới nhất tại H&agrave; Nội</strong></p>\r\n<p>Thương hiệu Hathaco &Aacute;p dụng từ ng&agrave;y 8 th&aacute;ng 8 năm 2015 Để nhận được b&aacute;o gi&aacute; vật tư ng&agrave;nh nước v&agrave; c&aacute;c sản phẩm phụ kiện ống nhựa hdpe gi&aacute; tốt nhất c&ugrave;ng với chiết khấu tốt nhất cho đại l&yacute;, c&ocirc;ng tr&igrave;nh</p>\r\n<p><img class=\"img-fluid\" src=\"http://localhost/eu/backend/banggia/edit/images/price-table/price-table-item-1.jpg\" alt=\"\" /></p>\r\n<p>ĐỂ BIẾT TH&Ocirc;NG TIN CHI TIẾT XIN VUI L&Ograve;NG LI&Ecirc;N HỆ:</p>\r\n<p><strong class=\"text-uppercase\">C&Ocirc;NG TY TNHH SẢN XUẤT NHỰA CH&Acirc;U &Acirc;U</strong>&nbsp;<br />Trụ sở Hồ Ch&iacute; Minh : Số 68/8A Đường Trần Tấn, P.T&acirc;n Sơn Nh&igrave;, Q.T&acirc;n Ph&uacute;, TP.HCM&nbsp;<br />Tel :&nbsp;<a title=\"\" href=\"callto:02838493888\">0283.8493888</a>&nbsp;<br />Chi nh&aacute;nh H&agrave; Nội : Số 19 ng&otilde; 79 phố Y&ecirc;n Duy&ecirc;n, P.Y&ecirc;n Sở, Q.Ho&agrave;ng Mai, TP. H&agrave; Nội&nbsp;<br />Tel :&nbsp;<a title=\"\" href=\"callto:02432009195\">0243.2009195</a></p>', '1509933469_GCO PROFILE 2017.pdf', '2017-11-06 01:57:49', '2017-11-05 18:57:49'),
(4, 'Bảng giá tại TP.Hồ Chí Minh', 'bang-gia-tai-tpho-chi-minh', '<p><strong>Bảng gi&aacute; H&agrave;ng Vặn Ren mới nhất tại TP. Hồ Ch&iacute; Minh</strong></p>\r\n<p>Thương hiệu Hathaco &Aacute;p dụng từ ng&agrave;y 8 th&aacute;ng 8 năm 2015 Để nhận được b&aacute;o gi&aacute; vật tư ng&agrave;nh nước v&agrave; c&aacute;c sản phẩm phụ kiện ống nhựa hdpe gi&aacute; tốt nhất c&ugrave;ng với chiết khấu tốt nhất cho đại l&yacute;, c&ocirc;ng tr&igrave;nh sd</p>\r\n<p><img class=\"img-fluid\" src=\"http://localhost/eu/backend/banggia/images/price-table/price-table-item-1.jpg\" alt=\"\" /></p>\r\n<p>ĐỂ BIẾT TH&Ocirc;NG TIN CHI TIẾT XIN VUI L&Ograve;NG LI&Ecirc;N HỆ:</p>\r\n<p><strong class=\"text-uppercase\">C&Ocirc;NG TY TNHH SẢN XUẤT NHỰA CH&Acirc;U &Acirc;U</strong>&nbsp;<br />Trụ sở Hồ Ch&iacute; Minh : Số 68/8A Đường Trần Tấn, P.T&acirc;n Sơn Nh&igrave;, Q.T&acirc;n Ph&uacute;, TP.HCM&nbsp;<br />Tel :&nbsp;<a title=\"\" href=\"callto:02838493888\">0283.8493888</a>&nbsp;<br />Chi nh&aacute;nh H&agrave; Nội : Số 19 ng&otilde; 79 phố Y&ecirc;n Duy&ecirc;n, P.Y&ecirc;n Sở, Q.Ho&agrave;ng Mai, TP. H&agrave; Nội&nbsp;<br />Tel :&nbsp;<a title=\"\" href=\"callto:02432009195\">0243.2009195</a></p>', '1509893148_Tìm kiếm toàn văn.docx', '2017-11-05 14:45:48', '2017-11-05 07:45:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_account`
--

CREATE TABLE `bank_account` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `info` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bank_account`
--

INSERT INTO `bank_account` (`id`, `img`, `info`, `created_at`, `updated_at`) VALUES
(1, '1507946485_logobidv.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN HẢI YẾN</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh Đống Đa</p>', '2017-10-14 02:01:25', '2017-10-13 19:01:25'),
(3, '1507946490_logobidv.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN Ho&agrave;ng&nbsp;Hải</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh&nbsp;H&agrave; Nội</p>\r\n<p>&nbsp;</p>', '2017-10-14 02:01:30', '2017-10-13 19:01:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_content`
--

CREATE TABLE `banner_content` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `banner_content`
--

INSERT INTO `banner_content` (`id`, `image`, `link`, `position`, `updated_at`, `created_at`) VALUES
(9, '1538639553_5.jpg', NULL, 4, '2018-10-04 00:52:33', '2017-12-22 04:12:07'),
(10, '1538639558_5.jpg', NULL, 6, '2018-10-04 00:52:38', '2017-11-07 19:07:17'),
(11, '1538639567_5.jpg', NULL, 7, '2018-10-04 00:52:47', '2017-11-07 19:07:29'),
(12, '1538639572_5.jpg', NULL, 2, '2018-10-04 00:52:52', '2017-11-07 19:07:42'),
(13, '1538639577_5.jpg', NULL, 5, '2018-10-04 00:52:57', '2017-11-07 19:22:59'),
(14, '1538639586_5.jpg', NULL, 8, '2018-10-04 00:53:06', '2018-10-04 00:53:06'),
(15, '1538639875_5.jpg', NULL, 9, '2018-10-04 00:57:55', '2018-10-04 00:57:55'),
(16, '1538640187_5.jpg', NULL, 10, '2018-10-04 01:03:07', '2018-10-04 01:03:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_position`
--

CREATE TABLE `banner_position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `banner_position`
--

INSERT INTO `banner_position` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '2017-09-20 08:29:24', '2017-09-20 01:29:24'),
(2, 'Trang đào tạo', '2018-10-04 07:51:41', '2018-10-04 00:51:41'),
(4, 'Trang liên hệ', '2018-05-21 03:25:09', '2018-05-20 20:25:09'),
(5, 'Trang giới thiệu', '2018-10-04 07:51:15', '2018-10-04 00:51:15'),
(6, 'Trang tuyển dụng', '2018-10-04 07:50:49', '2018-10-04 00:50:49'),
(7, 'Trang tin tức', '2018-10-04 07:50:59', '2018-10-04 00:50:59'),
(8, 'Trang faq', '2018-10-04 00:51:52', '2018-10-04 00:51:52'),
(9, 'Trang xuất khẩu', '2018-10-04 00:52:10', '2018-10-04 00:52:10'),
(10, 'Video - ảnh', '2018-10-04 08:02:53', '2018-10-04 01:02:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `note` text,
  `status` tinyint(2) DEFAULT '0',
  `total` int(11) DEFAULT NULL,
  `detail` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `card_code` varchar(250) DEFAULT NULL,
  `payment` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `campaign_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `campaign_type` int(2) DEFAULT NULL,
  `campaign_value` int(10) DEFAULT NULL,
  `campaign_expired` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` int(1) NOT NULL DEFAULT '0',
  `card_numb` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `campaigns`
--

INSERT INTO `campaigns` (`id`, `campaign_name`, `campaign_type`, `campaign_value`, `campaign_expired`, `created_at`, `updated_at`, `del_flg`, `card_numb`) VALUES
(1, 'Chào mừng giáng sinh', 1, 100000, '2017-09-30', '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0, 7),
(2, 'Chào thu', 2, 10, '2017-09-30', '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaign_cards`
--

CREATE TABLE `campaign_cards` (
  `id` int(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `card_code` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `del_flg` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `campaign_cards`
--

INSERT INTO `campaign_cards` (`id`, `campaign_id`, `card_code`, `is_active`, `created_at`, `updated_at`, `del_flg`) VALUES
(1, 1, 'hDXoOAI7BpxYJ', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(2, 1, 'FepHYPARhlTbe', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(3, 1, 'bpDe0nb31sZiN', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(4, 1, '0DK0VoB53JeJj', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(5, 1, 'hF3Ad1g7J411w', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(6, 1, '8PyZN6OTyAIwZ', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(7, 1, 'Zqy0atJII1nzS', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(8, 2, '3Qe06mci6qmMc', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(9, 2, 'vUrrWre9EN6iR', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(10, 2, 'IGzmLXBT9pDk5', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(11, 2, 'OXSiH6ooCzJj7', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chinhanh`
--

CREATE TABLE `chinhanh` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chinhanh`
--

INSERT INTO `chinhanh` (`id`, `name`, `website`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Văn phòng Hồ Chí Minh', 'http://gco.vn/', '0283.8493888', 'Số 68/8A Đường Trần Tấn, P.Tân Sơn Nhì, Q.Tân Phú, TP.HCM', '2017-11-04 03:23:41', '2017-11-03 20:23:41'),
(2, 'Văn phòng Hà Nội', NULL, '0243.2009195', 'Số 19 ngõ 79 phố Yên Duyên, P.Yên Sở, Q.Hoàng Mai, TP. Hà Nội', '2017-11-04 03:24:55', '2017-11-03 20:24:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `content` text CHARACTER SET latin1,
  `status` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '0987654321', 'sdf sd f', 0, '2018-10-01 20:53:22', '2018-10-01 21:05:27'),
(2, 'Hoàng Hồng Chương', 'admin@team.vn', '0987654321', 's fsd sdf', 0, '2018-10-02 00:43:56', '2018-10-02 00:43:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `counter`
--

CREATE TABLE `counter` (
  `id` int(10) UNSIGNED NOT NULL,
  `tm` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `district_name` varchar(250) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `district_name`, `province_id`, `created_at`, `updated_at`) VALUES
(1, 'Ba Đình', 4, '2017-09-24 18:03:47', '2017-09-24 18:03:47'),
(2, 'Từ Liêm', 4, '2017-09-24 18:04:29', '2017-09-24 18:04:29'),
(3, 'Hoàn Kiếm', 4, '2017-09-24 18:04:40', '2017-09-24 18:04:40'),
(4, 'Cầu giấy', 4, '2017-09-25 00:14:58', '2017-09-25 00:14:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Mr Lee', '<p>&nbsp;Ch&uacute;ng t&ocirc;i mong muốn lu&ocirc;n được l&agrave; đối t&aacute;c tin cậy, uy t&iacute;n của Qu&yacute; kh&aacute;ch h&agrave;ng v&agrave; k&iacute;nh mong được hợp t&aacute;c c&ugrave;ng Qu&yacute; kh&aacute;ch h&agrave;ng trong thời gian gần nhất.</p>', '2017-11-06 04:21:36', '2017-11-05 21:21:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer`
--

CREATE TABLE `footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioithieu`
--

CREATE TABLE `gioithieu` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `name_en` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `image` text,
  `mota` text,
  `mota_en` text,
  `content` text,
  `content_en` text,
  `title` varchar(250) DEFAULT NULL,
  `title_en` varchar(250) DEFAULT NULL,
  `keyword` text,
  `keyword_en` text,
  `description` text,
  `description_en` text,
  `status` int(2) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `gioithieu`
--

INSERT INTO `gioithieu` (`id`, `name`, `name_en`, `alias`, `image`, `mota`, `mota_en`, `content`, `content_en`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Câu hỏi 1', 'Quesion 1', 'cau-hoi-1', '', '<p>Bạn c&agrave;ng biết nhiều về những g&igrave; c&ocirc;ng ty đang t&igrave;m kiếm, bạn c&agrave;ng c&oacute; thể điều chỉnh phản ứng của bạn để l&agrave;m nổi bật c&aacute;c kỹ năng ph&ugrave; hợp nhất với điều n&agrave;y. Việc đ&aacute;nh b&oacute;ng CV của bạn kh&ocirc;ng c&ograve;n l&agrave; vấn đề, n&oacute; sẽ kh&ocirc;ng g&acirc;y ra một t&aacute;c động n&agrave;o nếu bạn kh&ocirc;ng thể l&agrave;m r&otilde; sự ph&ugrave; hợp giữa kinh nghiệm của bạn với c&aacute;c kỹ năng quan trọng v&agrave; c&aacute;c đặc t&iacute;nh m&agrave; họ đang t&igrave;m kiếm ở một ứng vi&ecirc;n.</p>', '<p>&nbsp;Bạn c&agrave;ng biết nhiều về những g&igrave; c&ocirc;ng ty đang t&igrave;m kiếm, bạn c&agrave;ng c&oacute; thể điều chỉnh phản ứng của bạn để l&agrave;m nổi bật c&aacute;c kỹ năng ph&ugrave; hợp nhất với điều n&agrave;y. Việc đ&aacute;nh b&oacute;ng CV của bạn kh&ocirc;ng c&ograve;n l&agrave; vấn đề, n&oacute; sẽ kh&ocirc;ng g&acirc;y ra một t&aacute;c động n&agrave;o nếu bạn kh&ocirc;ng thể l&agrave;m r&otilde; sự ph&ugrave; hợp giữa kinh nghiệm của bạn với c&aacute;c kỹ năng quan trọng v&agrave; c&aacute;c đặc t&iacute;nh m&agrave; họ đang t&igrave;m kiếm ở một ứng vi&ecirc;n.xxxfaaa</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-10-02 08:22:00', '2018-10-02 01:22:00'),
(2, 'Câu hỏi 2', 'Quesion 2', 'quesion-2', '', '<p>Bạn c&agrave;ng biết nhiều về những g&igrave; c&ocirc;ng ty đang t&igrave;m kiếm, bạn c&agrave;ng c&oacute; thể điều chỉnh phản ứng của bạn để l&agrave;m nổi bật c&aacute;c kỹ năng ph&ugrave; hợp nhất với điều n&agrave;y. Việc đ&aacute;nh b&oacute;ng CV của bạn kh&ocirc;ng c&ograve;n l&agrave; vấn đề, n&oacute; sẽ kh&ocirc;ng g&acirc;y ra một t&aacute;c động n&agrave;o nếu bạn kh&ocirc;ng thể l&agrave;m r&otilde; sự ph&ugrave; hợp giữa kinh nghiệm của bạn với c&aacute;c kỹ năng quan trọng v&agrave; c&aacute;c đặc t&iacute;nh m&agrave; họ đang t&igrave;m kiếm ở một ứng vi&ecirc;n.</p>', '<p>sdf s</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-10-03 10:06:29', '2018-10-03 03:06:29'),
(3, 'Câu hỏi 3', 'Quesion 3', 'quesion-3', '', '<p>Bạn c&agrave;ng biết nhiều về những g&igrave; c&ocirc;ng ty đang t&igrave;m kiếm, bạn c&agrave;ng c&oacute; thể điều chỉnh phản ứng của bạn để l&agrave;m nổi bật c&aacute;c kỹ năng ph&ugrave; hợp nhất với điều n&agrave;y. Việc đ&aacute;nh b&oacute;ng CV của bạn kh&ocirc;ng c&ograve;n l&agrave; vấn đề, n&oacute; sẽ kh&ocirc;ng g&acirc;y ra một t&aacute;c động n&agrave;o nếu bạn kh&ocirc;ng thể l&agrave;m r&otilde; sự ph&ugrave; hợp giữa kinh nghiệm của bạn với c&aacute;c kỹ năng quan trọng v&agrave; c&aacute;c đặc t&iacute;nh m&agrave; họ đang t&igrave;m kiếm ở một ứng vi&ecirc;n.</p>', '<p>sf sf</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-10-03 10:06:43', '2018-10-03 03:06:43'),
(4, 'Câu hỏi 4', 'Quesion 4', 'quesion-4', '', '<p>Bạn c&agrave;ng biết nhiều về những g&igrave; c&ocirc;ng ty đang t&igrave;m kiếm, bạn c&agrave;ng c&oacute; thể điều chỉnh phản ứng của bạn để l&agrave;m nổi bật c&aacute;c kỹ năng ph&ugrave; hợp nhất với điều n&agrave;y. Việc đ&aacute;nh b&oacute;ng CV của bạn kh&ocirc;ng c&ograve;n l&agrave; vấn đề, n&oacute; sẽ kh&ocirc;ng g&acirc;y ra một t&aacute;c động n&agrave;o nếu bạn kh&ocirc;ng thể l&agrave;m r&otilde; sự ph&ugrave; hợp giữa kinh nghiệm của bạn với c&aacute;c kỹ năng quan trọng v&agrave; c&aacute;c đặc t&iacute;nh m&agrave; họ đang t&igrave;m kiếm ở một ứng vi&ecirc;n.</p>', '<p>df sdf s fd</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-10-03 10:07:07', '2018-10-03 03:07:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `product_id`, `service_id`, `name`, `alias`, `photo`, `status`, `image_path`, `alt`, `stt`, `created_at`, `updated_at`) VALUES
(4, NULL, 22, NULL, NULL, '1526353986_bar-1.jpg', 1, NULL, NULL, 0, '2018-05-15 03:13:06', NULL),
(5, NULL, 22, NULL, NULL, '1526353986_bar-2.jpg', 1, NULL, NULL, 0, '2018-05-15 03:13:06', NULL),
(9, 1, NULL, NULL, NULL, '1526356249_room-7.jpg', 1, NULL, NULL, 0, '2018-05-15 03:50:49', NULL),
(8, 1, NULL, NULL, NULL, '1526356249_room-3.jpg', 1, NULL, NULL, 0, '2018-05-15 03:50:49', NULL),
(10, 1, NULL, NULL, NULL, '1526356249_room-detai.jpg', 1, NULL, NULL, 0, '2018-05-15 03:50:49', NULL),
(18, NULL, 27, NULL, NULL, '1526439793_bar-2.jpg', 1, NULL, NULL, 0, '2018-05-16 03:03:13', NULL),
(13, NULL, 28, NULL, NULL, '1526439579_bar-1.jpg', 1, NULL, NULL, 0, '2018-05-16 02:59:39', NULL),
(14, NULL, 28, NULL, NULL, '1526439579_bar-2.jpg', 1, NULL, NULL, 0, '2018-05-16 02:59:39', NULL),
(17, NULL, 27, NULL, NULL, '1526439793_bar-1.jpg', 1, NULL, NULL, 0, '2018-05-16 03:03:13', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `langs`
--

CREATE TABLE `langs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `name_en` text COLLATE utf8_unicode_ci,
  `title_en` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `title_vi` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `langs`
--

INSERT INTO `langs` (`id`, `name_vi`, `name_en`, `title_en`, `alias`, `photo`, `status`, `lever`, `title_vi`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(31, 'Tuyển dụng', '募集', NULL, 'tuyendung', NULL, 1, 0, NULL, NULL, NULL, 'langs', 10, '2018-10-04 03:11:32', '2018-10-03 20:11:32'),
(62, 'Kết nối', '接続する', NULL, 'ketnoi', NULL, 1, 0, NULL, NULL, NULL, 'langs', 29, '2018-10-04 19:43:44', '2018-10-04 19:43:44'),
(29, 'FAQ', 'よくある質問', NULL, 'faq', NULL, 1, 0, NULL, NULL, NULL, 'langs', 9, '2018-10-03 09:48:14', '2018-10-03 02:48:14'),
(28, 'Tin tức sự kiện', 'News event', NULL, 'tintucsukien', NULL, 1, 0, NULL, NULL, NULL, 'langs', 8, '2018-10-04 02:13:52', '2018-10-03 19:13:52'),
(27, 'Giới thiệu', 'について', NULL, 'gioithieu', NULL, 1, 0, NULL, NULL, NULL, 'langs', 7, '2018-10-03 09:47:13', '2018-10-03 02:47:13'),
(21, 'Trang chủ', 'ホーム', NULL, 'home', NULL, 1, 0, NULL, NULL, NULL, 'langs', 10, '2018-10-03 09:45:37', '2018-10-03 02:45:37'),
(61, 'Lưu trữ', 'アーカイブ', NULL, 'luutru', NULL, 1, 0, NULL, NULL, NULL, 'langs', 28, '2018-10-04 19:42:56', '2018-10-04 19:42:56'),
(24, 'Tin tức', 'News', NULL, 'tintuc', NULL, 1, 0, NULL, NULL, NULL, 'langs', 4, '2018-10-03 08:36:41', '2018-10-03 01:36:41'),
(25, 'Liên hệ', 'お問い合わせ', NULL, 'lienhe', NULL, 1, 0, NULL, NULL, NULL, 'langs', 5, '2018-10-03 09:47:39', '2018-10-03 02:47:39'),
(26, 'Tin mới', 'News', NULL, '_tinmoi', NULL, 1, 0, NULL, NULL, NULL, 'langs', 16, '2017-08-26 04:09:58', '2017-08-25 21:09:58'),
(33, 'Họ tên', 'Name', NULL, 'hoten', NULL, 1, 0, NULL, NULL, NULL, 'langs', 13, '2018-10-03 09:57:29', '2018-10-03 02:57:29'),
(34, 'Số điện thoại', 'Phone', NULL, 'phone', NULL, 1, 0, NULL, NULL, NULL, 'langs', 14, '2018-10-03 09:55:32', '2018-10-03 02:55:32'),
(35, 'Địa chỉ', 'Address', NULL, 'diachi', NULL, 1, 0, NULL, NULL, NULL, 'langs', 15, '2018-10-03 08:36:48', '2018-10-03 01:36:48'),
(36, 'Nội dung', 'Content', NULL, 'content', NULL, 1, 0, NULL, NULL, NULL, 'langs', 16, '2018-10-03 09:57:45', '2018-10-03 02:57:45'),
(37, 'Gửi', 'Send', NULL, 'send', NULL, 1, 0, NULL, NULL, NULL, 'langs', 17, '2018-10-03 09:58:51', '2018-10-03 02:58:51'),
(38, 'Bài viết liên quan', '関連記事', NULL, 'lienquan', NULL, 1, 0, NULL, NULL, NULL, 'langs', 18, '2018-10-04 07:27:44', '2018-10-04 00:27:44'),
(39, 'Tìm kiếm', 'Search', NULL, 'timkiem', NULL, 1, 0, NULL, NULL, NULL, 'langs', 19, '2018-10-03 08:34:44', '2018-10-03 01:34:44'),
(40, 'Email', 'Email', NULL, 'email', NULL, 1, 0, NULL, NULL, NULL, 'langs', 20, '2018-10-03 09:56:33', '2018-10-03 02:56:33'),
(41, 'Câu hỏi thường gặp', 'よくある質問', NULL, 'cauhoithuonggap', NULL, 1, 0, NULL, NULL, NULL, 'langs', 21, '2018-10-03 10:01:42', '2018-10-03 03:01:42'),
(42, 'Về chúng tôi', 'About us', NULL, '_vechungtoi', NULL, 1, 0, NULL, NULL, NULL, 'langs', 22, '2017-10-11 01:55:11', '2017-10-11 01:55:11'),
(58, 'video', 'video', NULL, 'video', NULL, 1, 0, NULL, NULL, NULL, 'langs', 25, '2018-10-03 20:34:15', '2018-10-03 20:34:15'),
(59, 'Thông tin công ty', '会社情報', NULL, 'about_company', NULL, 1, 0, NULL, NULL, NULL, 'langs', 26, '2018-10-03 21:09:14', '2018-10-03 21:09:14'),
(60, 'Thế mạnh', '強さ', NULL, 'themanh', NULL, 1, 0, NULL, NULL, NULL, 'langs', 27, '2018-10-03 21:31:05', '2018-10-03 21:31:05'),
(47, 'Đọc tiếp', 'Read more', NULL, '_doctiep', NULL, 1, 0, NULL, NULL, NULL, 'langs', 27, '2017-10-13 00:39:31', '2017-10-13 00:39:31'),
(49, 'Liên kết', 'Link', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 28, '2017-12-20 01:59:09', '2017-12-20 01:59:09'),
(50, 'Mạng xã hội', 'Socialite', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 29, '2017-12-20 02:00:13', '2017-12-20 02:00:13'),
(51, 'Gửi liên hệ', 'Send contact', NULL, 'send_contact', NULL, 1, 0, NULL, NULL, NULL, 'langs', 30, '2018-10-03 09:58:04', '2018-10-03 02:58:04'),
(57, 'Ảnh', '写真', NULL, 'anh', NULL, 1, 0, NULL, NULL, NULL, 'langs', 24, '2018-10-03 20:31:13', '2018-10-03 20:31:13'),
(53, 'Xuất khẩu lao động', '外国人技能実習制度とは', NULL, 'xuatkhau', NULL, 1, 0, NULL, NULL, NULL, 'langs', 32, '2018-10-04 02:16:50', '2018-10-03 19:16:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienket`
--

CREATE TABLE `lienket` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `name_en` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lienket`
--

INSERT INTO `lienket` (`id`, `user_id`, `name`, `name_en`, `link`, `photo`, `mota`, `content`, `content_en`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 5, 'Xuất khẩu lao động', NULL, NULL, '1538531840_6.jpg', NULL, NULL, NULL, 1, 0, 'thu-vien', 1, '2018-10-02 18:57:20', '2018-10-02 18:57:20'),
(2, 5, 'ảnh 2', NULL, NULL, '1538531849_7.jpg', NULL, NULL, NULL, 1, 0, 'thu-vien', 2, '2018-10-02 18:57:29', '2018-10-02 18:57:29'),
(3, 5, 'ảnh 3', NULL, NULL, '1538531858_8.jpg', NULL, NULL, NULL, 1, 0, 'thu-vien', 3, '2018-10-02 18:57:38', '2018-10-02 18:57:38'),
(4, 5, 'ảnh 4', NULL, NULL, '1538531868_4.jpg', NULL, NULL, NULL, 1, 0, 'thu-vien', 4, '2018-10-02 18:57:48', '2018-10-02 18:57:48'),
(5, 5, 'ảnh 5', NULL, NULL, '1538531980_10.jpg', NULL, NULL, NULL, 1, 0, 'thu-vien', 5, '2018-10-02 18:59:40', '2018-10-02 18:59:40'),
(6, 5, 'Đội ngũ nhân viên', 'tên tiếng nhật', NULL, '1538538175_17.jpg', NULL, '<p>C&ocirc;ng ty Cổ phần Thương mại v&agrave; Du lịch &Acirc;u Việt c&oacute; lu&ocirc;n nguồn lao động dồi d&agrave;o, c&oacute; thể đối ứng mọi đơn h&agrave;ng từ ph&iacute;a kh&aacute;ch h&agrave;ng. B&ecirc;n cạnh đ&oacute;, chất lượng nguồn lao động lu&ocirc;n được kh&aacute;ch h&agrave;ng đ&aacute;nh gi&aacute; cao do c&oacute; kỹ năng tay nghề tốt v&agrave; &yacute; thức l&agrave;m việc chuy&ecirc;n nghiệp.</p>', '<p>Nội dung tiếng nhật</p>', 1, 0, 'the-manh', 1, '2018-10-04 04:39:00', '2018-10-03 21:39:00'),
(7, 5, 'Mối quan hệ với các cơ quan nhà nước', NULL, NULL, '1538538208_18.jpg', NULL, '<p>C&ocirc;ng ty Cổ phần Thương mại v&agrave; Du lịch &Acirc;u Việt c&oacute; lu&ocirc;n nguồn lao động dồi d&agrave;o, c&oacute; thể đối ứng mọi đơn h&agrave;ng từ ph&iacute;a kh&aacute;ch h&agrave;ng. B&ecirc;n cạnh đ&oacute;, chất lượng nguồn lao động lu&ocirc;n được kh&aacute;ch h&agrave;ng đ&aacute;nh gi&aacute; cao do c&oacute; kỹ năng tay nghề tốt v&agrave; &yacute; thức l&agrave;m việc chuy&ecirc;n nghiệp.s</p>', NULL, 1, 0, 'tieu-chi', 2, '2018-10-03 03:47:08', '2018-10-02 20:47:08'),
(8, 5, 'Mối quan hệ với các cơ quan nhà nước', NULL, NULL, '1538538492_18.jpg', NULL, '<p>C&ocirc;ng ty Cổ phần Thương mại v&agrave; Du lịch &Acirc;u Việt c&oacute; lu&ocirc;n nguồn lao động dồi d&agrave;o, c&oacute; thể đối ứng mọi đơn h&agrave;ng từ ph&iacute;a kh&aacute;ch h&agrave;ng. B&ecirc;n cạnh đ&oacute;, chất lượng nguồn lao động lu&ocirc;n được kh&aacute;ch h&agrave;ng đ&aacute;nh gi&aacute; cao do c&oacute; kỹ năng tay nghề tốt v&agrave; &yacute; thức l&agrave;m việc chuy&ecirc;n nghiệp.</p>', NULL, 1, 0, 'the-manh', 2, '2018-10-02 20:48:12', '2018-10-02 20:48:12'),
(9, 5, 'Tên công ty', 'Company', NULL, '', NULL, '<h3 class=\"bold \">国際合資会社 IVY HR</h3>', NULL, 1, 0, 'thong-tin', 1, '2018-10-04 04:21:45', '2018-10-03 21:21:45'),
(10, 5, 'Địa chỉ', 'Address', NULL, '', NULL, '<h3>Tầng 2B t&ograve;a nh&agrave; Central Point, 219 Đường Trung K&iacute;nh, Phường Trung H&ograve;a, Quận Cầu Giấy, th&agrave;nh phố H&agrave; Nội</h3>', '<p>sdf sdf&nbsp;</p>', 1, 0, 'thong-tin', 2, '2018-10-03 03:58:29', '2018-10-02 20:58:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `linhvuc`
--

CREATE TABLE `linhvuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `linhvuc`
--

INSERT INTO `linhvuc` (`id`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(3, 'Kinh doanh', 'kkk', '2017-12-21 01:56:09', '2017-12-21 01:56:09'),
(4, 'Kế toán', 'kkkkdgdg', '2017-12-21 01:58:21', '2017-12-21 01:58:21'),
(5, 'Bán hàng', 'vccccsss', '2017-12-21 01:58:51', '2017-12-21 01:58:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `position` varchar(250) DEFAULT NULL,
  `des` text,
  `photo` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `members`
--

INSERT INTO `members` (`id`, `name`, `position`, `des`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Son Quach', 'Brand Design/UI Design', NULL, '1524537552_team-3.jpg', '2018-04-23 19:39:12', '2018-04-23 19:39:12'),
(2, 'Hang Do', 'Brand Design/UI Design', NULL, '1524537581_team-2.jpg', '2018-04-23 19:39:41', '2018-04-23 19:39:41'),
(3, 'Phuong Anh', 'Brand Design/UI Design', NULL, '1524537600_team-5.jpg', '2018-04-23 19:40:00', '2018-04-23 19:40:00'),
(4, 'xxx', 'Brand Design/UI Design', NULL, '1524537635_team-4.jpg', '2018-04-23 19:40:35', '2018-04-23 19:40:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `keyword_en` text CHARACTER SET utf8,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text CHARACTER SET utf8,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `status`, `lever`, `parent_id`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(3, 'Trang chủ', 'Home', 'http://localhost/thuanduc/', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 1, '2017-12-25 01:40:01', '2017-12-24 18:40:01'),
(2, 'Giới thiệu', 'About', 'http://localhost/thuanduc/gioi-thieu/gioi-thieu-ve-cong-ty', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 2, '2017-12-25 07:19:45', '2017-12-25 00:19:45'),
(12, 'Sản phẩm', 'Product', 'http://localhost/thuanduc/san-pham', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 4, '2017-12-22 04:10:25', '2017-12-21 21:10:25'),
(13, 'Tin tức', 'News', 'tin-tuc', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 6, '2017-12-25 04:52:49', '2017-12-24 21:52:49'),
(18, 'Quan hệ cổ đông', 'Shareholder relations', 'http://localhost/thuanduc/quan-he-co-dong', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 4, '2017-12-25 03:02:09', '2017-12-24 20:02:09'),
(19, 'Khách hàng', 'Customer', 'khach-hang', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 5, '2017-12-25 04:52:41', '2017-12-24 21:52:41'),
(33, 'Liên hệ', 'Contact', 'lien-he', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 8, '2017-12-21 02:54:52', '2017-12-20 19:54:52'),
(20, 'Quá trình phát triển', 'Development process', 'http://localhost/thuanduc/gioi-thieu/qua-trinh-phat-trien', NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 9, '2017-12-25 07:12:28', '2017-12-25 00:12:28'),
(21, 'Giới thiệu về công ty', 'About us', 'http://localhost/thuanduc/gioi-thieu/gioi-thieu-ve-cong-ty', NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 8, '2017-12-21 02:55:37', '2017-12-20 19:55:37'),
(23, 'Túi shoping', 'SHOPPING BAG', 'http://localhost/thuanduc/san-pham/tui-shoping', NULL, NULL, 1, 0, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 9, '2017-12-21 02:57:28', '2017-12-20 19:57:28'),
(25, 'Hạt nhựa tái sinh', 'Recycled plastic particles', 'http://localhost/thuanduc/san-pham/hat-nhua-tai-sinh', NULL, NULL, 1, 0, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 11, '2017-12-21 02:58:10', '2017-12-20 19:58:10'),
(26, 'Sự khác biệt', 'Differentiation', 'http://localhost/thuanduc/su-khac-biet', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 3, '2017-12-25 03:20:53', '2017-12-24 20:20:53'),
(27, 'Bao bì nông nghiệp', 'agricultural packaging', 'http://localhost/thuanduc/san-pham/bao-bi-nong-nghiep', NULL, NULL, 1, 0, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 13, '2017-12-21 02:59:42', '2017-12-20 19:59:42'),
(28, 'Bao bì pp', 'pp packaging', 'http://localhost/thuanduc/san-pham/bao-bi-pp', NULL, NULL, 1, 0, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 14, '2017-12-21 03:00:23', '2017-12-20 20:00:23'),
(36, 'Tin chứng khoán', NULL, 'http://localhost/thuanduc/tin-tuc/tin-chung-khoan', NULL, NULL, 1, 0, 13, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 17, '2017-12-21 20:58:42', '2017-12-21 20:58:42'),
(34, 'Tuyển dụng', 'Recruitment', 'tuyen-dung', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 7, '2017-12-25 04:53:11', '2017-12-24 21:53:11'),
(35, 'Tin hoạt động', 'Active news', 'http://localhost/thuanduc/tin-tuc/tin-hoat-dong', NULL, NULL, 1, 0, 13, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 16, '2017-12-21 19:16:16', '2017-12-21 19:16:16'),
(37, 'Tin tuyển dụng', 'News recruiment', 'tin-tuyen-dung', NULL, NULL, 1, 0, 34, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 18, '2017-12-22 20:40:22', '2017-12-22 20:40:22'),
(38, 'Cơ hội việc làm', 'Jobs', 'http://localhost/thuanduc/co-hoi-viec-lam', NULL, NULL, 1, 0, 34, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 19, '2017-12-25 04:54:46', '2017-12-24 21:54:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_06_05_042524_create_products_table', 1),
('2017_06_05_045215_create_images_table', 1),
('2017_06_07_033057_create_news_categories_table', 1),
('2017_06_07_033135_create_news_table', 1),
('2017_06_07_033425_create_setting_table', 1),
('2017_06_07_033619_create_pages_table', 1),
('2017_06_07_033944_create_contact_table', 1),
('2017_06_07_034012_create_footer_table', 1),
('2017_06_07_034035_create_slider_table', 1),
('2017_06_07_034117_create_useronline_table', 1),
('2017_06_07_034335_create_order_table', 1),
('2017_06_07_034407_create_order_detail_table', 1),
('2017_06_07_034448_create_newsletter_table', 1),
('2017_06_07_034655_create_order_status_table', 1),
('2017_06_07_064339_create_counter_table', 1),
('2017_06_07_070934_create_partner_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `photo_en` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `mota_en` text CHARACTER SET utf8,
  `content` longtext COLLATE utf8_unicode_ci,
  `content_en` text CHARACTER SET utf8,
  `status` int(11) NOT NULL,
  `noibat` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_en` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text CHARACTER SET utf8,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `status_en` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `cate_id`, `user_id`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `photo_en`, `background`, `mota`, `mota_en`, `content`, `content_en`, `status`, `noibat`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `com`, `stt`, `status_en`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'Bạn đã biết chưa? thông tin về chỗ để đi tu nghiệp sinh Nhật Hàn 2018', 'tên tin tức tiếng nhật', 'ban-da-biet-chua-thong-tin-ve-cho-de-di-tu-nghiep-sinh-nhat-han-2018', 'ten-tin-tuc-tieng-nhat', '1538454566_3.jpg', '1538454614_21.jpg', '', NULL, 'sfd sd', NULL, '<p>content jp</p>', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 0, 1, '2018-10-04 02:52:36', '2018-10-03 19:52:36'),
(2, 3, 5, 'tin tuyển dụng 1', 'tên iếng nhật', 'tin-tuyen-dung-1', 'ten-ieng-nhat', '1538456199_32.jpg', '1538629042_11.jpg', '', 'Người Việt Nam cùng một số nước khác đến làm việc tại Nhật Bản dưới dạng đi xuất khẩu lao động theo pháp luật của Nhật Bản', 'nội dung mô tả tiếng nhật', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 0, 1, '2018-10-04 07:11:57', '2018-10-04 00:11:57'),
(3, 3, 5, 'tuyen dung 2', 'tuyen dung 2 tiếng nhật', 'tuyen-dung-2', 'tuyen-dung-2-tieng-nhat', '1538465619_20.jpg', '1538629010_15.jpg', '', 'Việc lựa chọn ngành nghề để đi xuất khẩu lao động Nhật Bản là một trong những việc hết sức cần thiết, nếu bạn có kinh nghiệm trong một nghề nào đó thì có thể dễ dàng lựa chọn.', 'Nội dung mo ta tiếng nhật', '<div class=\"medium bdetail-sum\">\r\n<p>Người Việt Nam c&ugrave;ng một số nước kh&aacute;c đến l&agrave;m việc tại Nhật Bản dưới dạng đi xuất khẩu lao động theo ph&aacute;p luật của Nhật Bản được gọi l&agrave; tu nghiệp sinh v&agrave; thực tập sinh. Hiện nay, phổ biến nhất vẫn l&agrave; visa thực tập sinh, v&igrave; theo chương tr&igrave;nh n&agrave;y th&igrave; người lao động c&oacute; thể được hưởng lương cơ bản từ th&aacute;ng thứ hai.</p>\r\n</div>\r\n<p>Chế độ tu nghiệp sinh v&agrave; thực tập sinh được ch&iacute;nh phủ Nhật Bản s&aacute;ng lập với mục đ&iacute;nh đưa người nước ngo&agrave;i sang đất nước Nhật Bản học hỏi kinh nghiệm khoa học kỹ thuật, kỹ năng của Nhật Bản đem về truyền b&aacute; v&agrave; phục vụ đất nước, học hỏi đa ng&agrave;nh nghề, được ph&aacute;t triển dưới dạng chế độ tu nghiệp d&agrave;nh cho người nước ngo&agrave;i, giao lưu quốc tế v&agrave; cống hiến quốc tế.</p>\r\n<p>C&aacute;c cơ quan li&ecirc;n quan như: C&ocirc;ng ty tiếp nhận, hiệp hội tiếp nhận, c&ocirc;ng ty xuất khẩu lao động c&aacute;c nước v&agrave; c&aacute;c sở ban ng&agrave;nh Nhật Bản gồm: sở ph&aacute;p vụ, sở ngoại giao, sở lao động, sở kinh tế, sở giao th&ocirc;ng&hellip;Trong c&aacute;c sở li&ecirc;n ng&agrave;nh kết hợp v&agrave; thiết lập n&ecirc;n cơ quan tổ chức hiệp lực ph&aacute;p nh&acirc;n tu nghiệp quốc tế c&oacute; t&ecirc;n l&agrave; JITCO trực tiếp chỉ đạo v&agrave; điều h&agrave;nh.</p>\r\n<p>Cơ quan JITCO trực tiếp chỉ đạo thực h&agrave;nh chế độ tu nghiệp sinh v&agrave; thực tập sinh, hội thảo v&agrave; trao đổi giải quyết c&aacute;c vấn đề lien quan. Khi xảy ra việc lien quan đến nh&acirc;n quyền hay việc nhập quốc, tư c&aacute;ch lưu tr&uacute; đều được hỗ trợ từ hiệp hội JITCO.</p>\r\n<p class=\"medium t1\">1. Mục đ&iacute;ch chế độ</p>\r\n<p>Chương tr&igrave;nh gửi v&agrave; nhận tu nghiệp sinh Việt Nam sang tu nghiệp tại c&aacute;c c&ocirc;ng ty Nhật Bản l&agrave; nhằm mục đ&iacute;ch tiếp thu kiến thức, khoa học kỹ thuật c&ocirc;ng nghệ cao của Nhật Bản. Sau khi về nước sẽ thực hiện chuyển giao kỹ thuật khoa học c&ocirc;ng nghệ cho đất nước, g&oacute;p phần th&uacute;c đẩy ph&aacute;t triển đất nước. Ngo&agrave;i ta cũng l&agrave; cầu nối nhằm mục đ&iacute;ch tăng cường hữu nghị v&agrave; hiểu biết lẫn nhau giữa Việt Nam v&agrave; Nhật Bản.</p>\r\n<p class=\"medium t1\">2. Thời gian tu nghiệp</p>\r\n<p>Thời hạn tu nghiệp kỹ thuật tại Nhật Bản l&agrave; một năm, sau đ&oacute; sẽ thi kỹ năng tại Nhật Bản. Dựa theo kết quả thi kỹ năng v&agrave; c&ocirc;ng nhận của c&ocirc;ng ty tiếp nhận, nghiệp đo&agrave;n tiếp nhận cũng như hiệp hội quốc tế JITCO đ&aacute;nh gi&aacute; th&igrave; sẽ được gia hạn tiếp năm tiếp theo</p>\r\n<p>(Mỗi lần gia hạn kh&ocirc;ng qu&aacute; một năm.)</p>', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 0, 1, '2018-10-04 07:11:51', '2018-10-04 00:11:51'),
(4, 5, 5, 'Đào tạo tiếng nhật 1', 'sdf s', 'dao-tao-tieng-nhat-1', 'sdf-s', '', '', '', NULL, NULL, '<p>nội dung đ&agrave;o tạo tiếng nhật 1</p>', '<p>sd fsf&nbsp;</p>', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dao-tao', 0, 1, '2018-10-04 02:39:39', '2018-10-02 02:29:25'),
(5, 5, 5, 'Đào tạo tiếng nhât 2', NULL, 'dao-tao-tieng-nhat-2', '', '', '', '', NULL, NULL, '<p>nội dung đ&agrave;o tạo tiếng nhật 2</p>', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dao-tao', 0, 1, '2018-10-04 02:53:29', '2018-10-03 19:53:29'),
(6, 0, 5, 'xuat khau lao dong 1', '外国人技能実習制度とは 1', 'xuat-khau-lao-dong-1', '外国人技能実習制度とは-1', '', '', '', NULL, NULL, '<p>d fsdf</p>', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'xuat-khau', 0, 1, '2018-10-04 02:39:40', '2018-10-03 19:21:02'),
(7, 0, 5, 'xuat khau lao dong 2', '外国人技能実習制度とは 2', 'xuat-khau-lao-dong-2', '外国人技能実習制度とは-2', '', '', '', NULL, NULL, '<p>&nbsp;sdf sf&nbsp;</p>', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'xuat-khau', 0, 1, '2018-10-04 02:39:53', '2018-10-03 19:20:40'),
(8, 0, 5, 'xuat khau lao dong 3', '外国人技能実習制度とは 3', 'xuat-khau-lao-dong-3', '外国人技能実習制度とは-3', '', '', '', NULL, NULL, '<p>sd fsdf&nbsp;</p>', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'xuat-khau', 0, 0, '2018-10-04 02:39:57', '2018-10-03 19:20:52'),
(9, 2, 5, 'sự kiên 1', NULL, 'su-kien-1', '', '1538550806_33.jpg', '', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 0, 1, '2018-10-04 02:37:06', '2018-10-03 19:37:06'),
(10, 2, 5, 'tin sự kiện 2', 'sự kiên 2 tiếng nhật', 'tin-su-kien-2', 'su-kien-2-tieng-nhat', '1538707740_11.jpg', '1538707754_4.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 0, 1, '2018-09-26 02:52:27', '2018-10-04 19:52:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newsletter`
--

INSERT INTO `newsletter` (`id`, `user_id`, `name`, `link`, `email`, `phone`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(47, 0, NULL, NULL, 'abc@gmail.com', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-04-25 21:39:27', '2018-04-25 21:39:27'),
(46, 0, NULL, NULL, 'c@gmail.com', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2017-12-21 23:47:00', '2017-12-21 23:47:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias_en` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `mota_en` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `title_en` text CHARACTER SET utf8,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `keyword_en` text CHARACTER SET utf8,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `status_en` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `background` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `mota`, `mota_en`, `status`, `lever`, `parent_id`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `com`, `stt`, `status_en`, `created_at`, `background`, `updated_at`) VALUES
(1, 'Tin tức', 'ニュース', 'tin-tuc', '', '', NULL, NULL, 1, 0, 0, 'Tin tức', 'ニュース', 'Tin tức', 'ニュース', 'Tin tức', 'ニュース', 'tin-tuc', 1, NULL, '2018-10-04 02:43:46', '', '2018-10-03 19:43:46'),
(2, 'Sự kiện', 'イベント', 'su-kien', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 2, NULL, '2018-10-04 01:39:21', '', '2018-10-03 18:39:21'),
(3, 'Tuyển thực tập sinh', NULL, 'tuyen-thuc-tap-sinh', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 1, NULL, '2018-10-01 21:50:17', '', '2018-10-01 21:50:17'),
(4, 'Tuyển kĩ sư', 'エンジニア募集', 'tuyen-ki-su', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 2, NULL, '2018-10-04 07:30:07', '', '2018-10-04 00:30:07'),
(5, 'Đào tạo tiếng nhật', '日本語トレーニング', 'dao-tao-tieng-nhat', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dao-tao', 1, NULL, '2018-10-04 02:44:30', '', '2018-10-03 19:44:30'),
(6, 'Đào tạo nghề', '職業訓練', 'dao-tao-nghe', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dao-tao', 2, NULL, '2018-10-04 01:36:17', '', '2018-10-03 18:36:17'),
(7, 'Đào tạo tác phong', 'トレーニングスタイル', 'dao-tao-tac-phong', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dao-tao', 3, NULL, '2018-10-04 01:37:05', '', '2018-10-03 18:37:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `audult` int(11) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `cate_room` int(11) DEFAULT NULL,
  `number_room` int(11) DEFAULT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `full_name`, `phone`, `audult`, `children`, `cate_room`, `number_room`, `check_in`, `check_out`, `created_at`, `updated_at`) VALUES
(4, 'Hoàng Hồng Chương', '0987654321', 2, 3, 2, 8, '2018-05-17', '2018-05-17', '2018-05-16 02:30:19', '2018-05-16 02:30:19'),
(5, 'Hoàng Hồng Chương', '0987654321', 4, 3, 1, 3, '2018-05-17', '2018-05-26', '2018-05-16 02:32:08', '2018-05-16 02:32:08'),
(6, 'bgdc', '0987654321', 7, 6, 2, 42, '2018-05-22', '2018-06-12', '2018-05-21 02:59:39', '2018-05-20 19:59:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `com` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partner`
--

CREATE TABLE `partner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `partner`
--

INSERT INTO `partner` (`id`, `name`, `name_en`, `url`, `photo`, `desc`, `content`, `com`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Đối tác 1', NULL, NULL, '1526370621_client-1.png', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:37:56', '2018-05-15 00:50:21'),
(4, 'Đối tác 2', NULL, NULL, '1526370628_client-2.png', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:39:46', '2018-05-15 00:50:28'),
(5, 'Đối tác 3', NULL, NULL, '1526370634_client-3.png', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:39:55', '2018-05-15 00:50:34'),
(6, 'Đối tác 4', NULL, NULL, '1526370641_client-4.png', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:40:10', '2018-05-15 00:50:41'),
(7, 'Đối tác 5', NULL, NULL, '1526370647_client-5.png', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:40:20', '2018-05-15 00:50:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `photo` text,
  `name` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `code` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) DEFAULT '0',
  `price_old` int(11) DEFAULT '0',
  `mota` longtext COLLATE utf8_unicode_ci,
  `mota_en` text CHARACTER SET utf8,
  `content` longtext COLLATE utf8_unicode_ci,
  `content_en` text CHARACTER SET utf8,
  `banggia` text COLLATE utf8_unicode_ci,
  `banggia_en` text COLLATE utf8_unicode_ci,
  `tinhtrang` int(11) NOT NULL DEFAULT '1',
  `baohanh` text COLLATE utf8_unicode_ci,
  `properties` text CHARACTER SET utf8,
  `model` text COLLATE utf8_unicode_ci,
  `namsanxuat` text COLLATE utf8_unicode_ci,
  `ratepoint` int(2) DEFAULT NULL,
  `quatang` text COLLATE utf8_unicode_ci,
  `huongdan` text COLLATE utf8_unicode_ci,
  `vanchuyen` text COLLATE utf8_unicode_ci,
  `noibat` int(11) NOT NULL DEFAULT '0',
  `spbc` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `title_en` text CHARACTER SET utf8,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `keyword_en` text CHARACTER SET utf8,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text CHARACTER SET utf8,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `user_id`, `cate_id`, `code`, `stt`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `price`, `sale`, `price_old`, `mota`, `mota_en`, `content`, `content_en`, `banggia`, `banggia_en`, `tinhtrang`, `baohanh`, `properties`, `model`, `namsanxuat`, `ratepoint`, `quatang`, `huongdan`, `vanchuyen`, `noibat`, `spbc`, `status`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `created_at`, `updated_at`) VALUES
(1, 5, 0, NULL, 1, 'phòng 1', 'Follow our Resort Luxury Hotels', 'phong-1', '', '1526357132_room-7.jpg', 0, 0, 0, 'A luxuriously separate bedroom & living room, with 10 meter-long balcony providing street & city view.', 'A luxuriously separate bedroom & living room, with 10 meter-long balcony providing street & city view. Living room has a sofa bed that is convertible for extra person.', '<p>Each guest room is cozy with a bowl of popcorn and one of the resort most romantic resorts by hotel Just 6 private rooms ensures a quiet, relaxing stay. .. Each room at Hotel resort offers comfort and signature New hotel City style. Most of the rooms and suites are individually furnished and feature dark room rich surfaces and opulent fabrics. With just 30 villas, this stunning fully inclusive resort evokes the heritage of luxury dating back to the era of the Sultans. Superior Queen bathrooms include a room shower with a rainfall hotel The resort aspect is simple, traditional and very typical for this area. resort offers 104 guest rooms, an abundance of contemporary room charm and a caring and attentive staff.Each guest room is cozy with a bowl of popcorn and one of the resort most romantic resorts by hotel Just 6 private rooms ensures a quiet, relaxing stay. .. Each room at Hotel resort offers comfort and signature New hotel City style. Most of the rooms and suites are individually furnished and feature dark room rich surfaces and opulent fabrics. With just 30 villas, this stunning fully inclusive resort evokes the heritage of luxury dating back to the era of the Sultans. Superior Queen bathrooms include a room shower with a rainfall hotel The resort aspect is simple, traditional and very typical for this area. resort offers 104 guest rooms, an abundance of contemporary room charm and a caring and attentive staff.</p>', '<p>Each guest room is cozy with a bowl of popcorn and one of the resort most romantic resorts by hotel Just 6 private rooms ensures a quiet, relaxing stay. .. Each room at Hotel resort offers comfort and signature New hotel City style. Most of the rooms and suites are individually furnished and feature dark room rich surfaces and opulent fabrics. With just 30 villas, this stunning fully inclusive resort evokes the heritage of luxury dating back to the era of the Sultans. Superior Queen bathrooms include a room shower with a rainfall hotel The resort aspect is simple, traditional and very typical for this area. resort offers 104 guest rooms, an abundance of contemporary room charm and a caring and attentive staff.Each guest room is cozy with a bowl of popcorn and one of the resort most romantic resorts by hotel Just 6 private rooms ensures a quiet, relaxing stay. .. Each room at Hotel resort offers comfort and signature New hotel City style. Most of the rooms and suites are individually furnished and feature dark room rich surfaces and opulent fabrics. With just 30 villas, this stunning fully inclusive resort evokes the heritage of luxury dating back to the era of the Sultans. Superior Queen bathrooms include a room shower with a rainfall hotel The resort aspect is simple, traditional and very typical for this area. resort offers 104 guest rooms, an abundance of contemporary room charm and a caring and attentive staff.</p>\r\n<p>Each guest room is cozy with a bowl of popcorn and one of the resort most romantic resorts by hotel Just 6 private rooms ensures a quiet, relaxing stay. .. Each room at Hotel resort offers comfort and signature New hotel City style. Most of the rooms and suites are individually furnished and feature dark room rich surfaces and opulent fabrics. With just 30 villas, this stunning fully inclusive resort evokes the heritage of luxury dating back to the era of the Sultans. Superior Queen bathrooms include a room shower with a rainfall hotel The resort aspect is simple, traditional and very typical for this area. resort offers 104 guest rooms, an abundance of contemporary room charm and a caring and attentive staff.Each guest room is cozy with a bowl of popcorn and one of the resort most romantic resorts by hotel Just 6 private rooms ensures a quiet, relaxing stay. .. Each room at Hotel resort offers comfort and signature New hotel City style. Most of the rooms and suites are individually furnished and feature dark room rich surfaces and opulent fabrics. With just 30 villas, this stunning fully inclusive resort evokes the heritage of luxury dating back to the era of the Sultans. Superior Queen bathrooms include a room shower with a rainfall hotel The resort aspect is simple, traditional and very typical for this area. resort offers 104 guest rooms, an abundance of contemporary room charm and a caring and attentive staff.</p>', '<p class=\"desc mgb-20\">Bằng c&aacute;ch đặt chỗ trực tiếp với ch&uacute;ng t&ocirc;i, bạn sẽ nhận được mức gi&aacute; v&agrave; đặc quyền được đảm bảo tốt nhất</p>\r\n<table class=\"table-responsive\" border=\"1\" cellspacing=\"0\" cellpadding=\"8\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"2\"><strong>Room Type</strong></td>\r\n<td rowspan=\"2\"><strong>Public Rates (US$) (start for single)</strong></td>\r\n<td colspan=\"5\"><strong>Promotional Rates (US$)</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>Single</strong></td>\r\n<td><strong>Double/Twin</strong></td>\r\n<td><strong>Triple</strong></td>\r\n<td><strong>Quadruple</strong></td>\r\n<td><strong>Quintuple</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Superior&nbsp; Room</td>\r\n<td>(VND2.750.000) US$105++</td>\r\n<td>60</td>\r\n<td>70</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Deluxe Window</td>\r\n<td>(VND3.145.000)&nbsp; &nbsp;US$120++</td>\r\n<td>70</td>\r\n<td>80</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Deluxe Balcony</td>\r\n<td>(VND3.400.000)&nbsp; &nbsp;US$130++</td>\r\n<td>75</td>\r\n<td>85</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Junior Suite Window</td>\r\n<td>(VND3.800.000) US$145++</td>\r\n<td>80</td>\r\n<td>95</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Junior Suite Balcony</td>\r\n<td>(VND4.060.000) US$155++</td>\r\n<td>85</td>\r\n<td>100</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Suite City View</td>\r\n<td>(VND4.450.000) US$170++</td>\r\n<td>100</td>\r\n<td>115</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Essence Suite Balcony</td>\r\n<td>(VND4.450.000) US$170++</td>\r\n<td>100</td>\r\n<td>115</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Family Interconnecting</td>\r\n<td>(VND5.240.000) US$200++&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>115</td>\r\n<td>125</td>\r\n<td>135</td>\r\n<td>*</td>\r\n</tr>\r\n<tr>\r\n<td>Family Premier</td>\r\n<td>(VND5.240.000) US$200++&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>n/a</td>\r\n<td>120</td>\r\n<td>130</td>\r\n<td>140</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-15 07:12:54', '2018-05-15 00:12:54'),
(2, 5, 0, NULL, 2, 'Phòng 2', 'room 2', 'phong-2', '', '1526356364_room-2.jpg', 0, 0, 0, 'A luxuriously separate bedroom & living room, with 10 meter-long balcony providing street & city view.', 'A luxuriously separate bedroom & living room, with 10 meter-long balcony providing street & city view. Living room has a sofa bed that is convertible for extra person.', '<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view. Living room has a sofa bed that is convertible for extra person.</p>\r\n<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view. Living room has a sofa bed that is convertible for extra person.</p>\r\n<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view. Living room has a sofa bed that is convertible for extra person.</p>', '<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view. Living room has a sofa bed that is convertible for extra person.</p>\r\n<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view. Living room has a sofa bed that is convertible for extra person.&nbsp;A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view. Living room has a sofa bed that is convertible for extra person.&nbsp;</p>\r\n<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view. Living room has a sofa bed that is convertible for extra person.</p>\r\n<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view. Living room has a sofa bed that is convertible for extra person.</p>', '<p class=\"desc mgb-20\">Bằng c&aacute;ch đặt chỗ trực tiếp với ch&uacute;ng t&ocirc;i, bạn sẽ nhận được mức gi&aacute; v&agrave; đặc quyền được đảm bảo tốt nhất</p>\r\n<table class=\"table-responsive\" border=\"1\" cellspacing=\"0\" cellpadding=\"8\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"2\"><strong>Room Type</strong></td>\r\n<td rowspan=\"2\"><strong>Public Rates (US$) (start for single)</strong></td>\r\n<td colspan=\"5\"><strong>Promotional Rates (US$)</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>Single</strong></td>\r\n<td><strong>Double/Twin</strong></td>\r\n<td><strong>Triple</strong></td>\r\n<td><strong>Quadruple</strong></td>\r\n<td><strong>Quintuple</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Superior&nbsp; Room</td>\r\n<td>(VND2.750.000) US$105++</td>\r\n<td>60</td>\r\n<td>70</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Deluxe Window</td>\r\n<td>(VND3.145.000)&nbsp; &nbsp;US$120++</td>\r\n<td>70</td>\r\n<td>80</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Deluxe Balcony</td>\r\n<td>(VND3.400.000)&nbsp; &nbsp;US$130++</td>\r\n<td>75</td>\r\n<td>85</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Junior Suite Window</td>\r\n<td>(VND3.800.000) US$145++</td>\r\n<td>80</td>\r\n<td>95</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Junior Suite Balcony</td>\r\n<td>(VND4.060.000) US$155++</td>\r\n<td>85</td>\r\n<td>100</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Suite City View</td>\r\n<td>(VND4.450.000) US$170++</td>\r\n<td>100</td>\r\n<td>115</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Essence Suite Balcony</td>\r\n<td>(VND4.450.000) US$170++</td>\r\n<td>100</td>\r\n<td>115</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Family Interconnecting</td>\r\n<td>(VND5.240.000) US$200++&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>115</td>\r\n<td>125</td>\r\n<td>135</td>\r\n<td>*</td>\r\n</tr>\r\n<tr>\r\n<td>Family Premier</td>\r\n<td>(VND5.240.000) US$200++&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>n/a</td>\r\n<td>120</td>\r\n<td>130</td>\r\n<td>140</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<p class=\"desc mgb-20\">Bằng c&aacute;ch đặt chỗ trực tiếp với ch&uacute;ng t&ocirc;i</p>\r\n<table class=\"table-responsive\" border=\"1\" cellspacing=\"0\" cellpadding=\"8\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"2\"><strong>Room Type</strong></td>\r\n<td rowspan=\"2\"><strong>Public Rates (US$) (start for single)</strong></td>\r\n<td colspan=\"5\"><strong>Promotional Rates (US$)</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>Single</strong></td>\r\n<td><strong>Double/Twin</strong></td>\r\n<td><strong>Triple</strong></td>\r\n<td><strong>Quadruple</strong></td>\r\n<td><strong>Quintuple</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Superior&nbsp; Room</td>\r\n<td>(VND2.750.000) US$105++</td>\r\n<td>60</td>\r\n<td>70</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Deluxe Window</td>\r\n<td>(VND3.145.000)&nbsp; &nbsp;US$120++</td>\r\n<td>70</td>\r\n<td>80</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Deluxe Balcony</td>\r\n<td>(VND3.400.000)&nbsp; &nbsp;US$130++</td>\r\n<td>75</td>\r\n<td>85</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Junior Suite Window</td>\r\n<td>(VND3.800.000) US$145++</td>\r\n<td>80</td>\r\n<td>95</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Junior Suite Balcony</td>\r\n<td>(VND4.060.000) US$155++</td>\r\n<td>85</td>\r\n<td>100</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Suite City View</td>\r\n<td>(VND4.450.000) US$170++</td>\r\n<td>100</td>\r\n<td>115</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Essence Suite Balcony</td>\r\n<td>(VND4.450.000) US$170++</td>\r\n<td>100</td>\r\n<td>115</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Family Interconnecting</td>\r\n<td>(VND5.240.000) US$200++&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>115</td>\r\n<td>125</td>\r\n<td>135</td>\r\n<td>*</td>\r\n</tr>\r\n<tr>\r\n<td>Family Premier</td>\r\n<td>(VND5.240.000) US$200++&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>n/a</td>\r\n<td>120</td>\r\n<td>130</td>\r\n<td>140</td>\r\n</tr>\r\n</tbody>\r\n</table>', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-14 20:52:44', '2018-05-14 20:52:44'),
(3, 5, 0, NULL, 3, 'Phòng 3', 'room 3', 'phong-3', '', '1526356434_room-4.jpg', 0, 0, 0, 'A luxuriously separate bedroom & living room, with 10 meter-long balcony providing street & city view.', 'A luxuriously separate bedroom & living room, with 10 meter-long balcony providing street & city view.', '<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.&nbsp;A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view. v&nbsp;A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.</p>\r\n<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.</p>\r\n<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.</p>', '<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.&nbsp;A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.&nbsp;A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.</p>\r\n<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.</p>\r\n<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.</p>\r\n<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.</p>\r\n<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.</p>', '<p class=\"desc mgb-20\">Bằng c&aacute;ch đặt chỗ trực tiếp với ch&uacute;ng t&ocirc;i, bạn sẽ nhận được mức gi&aacute; v&agrave; đặc quyền được đảm bảo tốt nhất</p>\r\n<table class=\"table-responsive\" border=\"1\" cellspacing=\"0\" cellpadding=\"8\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"2\"><strong>Room Type</strong></td>\r\n<td rowspan=\"2\"><strong>Public Rates (US$) (start for single)</strong></td>\r\n<td colspan=\"5\"><strong>Promotional Rates (US$)</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>Single</strong></td>\r\n<td><strong>Double/Twin</strong></td>\r\n<td><strong>Triple</strong></td>\r\n<td><strong>Quadruple</strong></td>\r\n<td><strong>Quintuple</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Superior&nbsp; Room</td>\r\n<td>(VND2.750.000) US$105++</td>\r\n<td>60</td>\r\n<td>70</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Deluxe Window</td>\r\n<td>(VND3.145.000)&nbsp; &nbsp;US$120++</td>\r\n<td>70</td>\r\n<td>80</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Deluxe Balcony</td>\r\n<td>(VND3.400.000)&nbsp; &nbsp;US$130++</td>\r\n<td>75</td>\r\n<td>85</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Junior Suite Window</td>\r\n<td>(VND3.800.000) US$145++</td>\r\n<td>80</td>\r\n<td>95</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Junior Suite Balcony</td>\r\n<td>(VND4.060.000) US$155++</td>\r\n<td>85</td>\r\n<td>100</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Suite City View</td>\r\n<td>(VND4.450.000) US$170++</td>\r\n<td>100</td>\r\n<td>115</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Essence Suite Balcony</td>\r\n<td>(VND4.450.000) US$170++</td>\r\n<td>100</td>\r\n<td>115</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Family Interconnecting</td>\r\n<td>(VND5.240.000) US$200++&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>115</td>\r\n<td>125</td>\r\n<td>135</td>\r\n<td>*</td>\r\n</tr>\r\n<tr>\r\n<td>Family Premier</td>\r\n<td>(VND5.240.000) US$200++&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>n/a</td>\r\n<td>120</td>\r\n<td>130</td>\r\n<td>140</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<p class=\"desc mgb-20\">Bằng c&aacute;ch đặt chỗ trực tiếp với ch&uacute;ng t&ocirc;i, bạn sẽ nhận được mức gi&aacute; v&agrave; đặc quyền được đảm bảo tốt nhất</p>\r\n<table class=\"table-responsive\" border=\"1\" cellspacing=\"0\" cellpadding=\"8\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"2\"><strong>Room Type</strong></td>\r\n<td rowspan=\"2\"><strong>Public Rates (US$) (start for single)</strong></td>\r\n<td colspan=\"5\"><strong>Promotional Rates (US$)</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>Single</strong></td>\r\n<td><strong>Double/Twin</strong></td>\r\n<td><strong>Triple</strong></td>\r\n<td><strong>Quadruple</strong></td>\r\n<td><strong>Quintuple</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Superior&nbsp; Room</td>\r\n<td>(VND2.750.000) US$105++</td>\r\n<td>60</td>\r\n<td>70</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Deluxe Window</td>\r\n<td>(VND3.145.000)&nbsp; &nbsp;US$120++</td>\r\n<td>70</td>\r\n<td>80</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Deluxe Balcony</td>\r\n<td>(VND3.400.000)&nbsp; &nbsp;US$130++</td>\r\n<td>75</td>\r\n<td>85</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Junior Suite Window</td>\r\n<td>(VND3.800.000) US$145++</td>\r\n<td>80</td>\r\n<td>95</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Junior Suite Balcony</td>\r\n<td>(VND4.060.000) US$155++</td>\r\n<td>85</td>\r\n<td>100</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Suite City View</td>\r\n<td>(VND4.450.000) US$170++</td>\r\n<td>100</td>\r\n<td>115</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Essence Suite Balcony</td>\r\n<td>(VND4.450.000) US$170++</td>\r\n<td>100</td>\r\n<td>115</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Family Interconnecting</td>\r\n<td>(VND5.240.000) US$200++&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>115</td>\r\n<td>125</td>\r\n<td>135</td>\r\n<td>*</td>\r\n</tr>\r\n<tr>\r\n<td>Family Premier</td>\r\n<td>(VND5.240.000) US$200++&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>n/a</td>\r\n<td>120</td>\r\n<td>130</td>\r\n<td>140</td>\r\n</tr>\r\n</tbody>\r\n</table>', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-16 03:26:00', '2018-05-15 20:26:00'),
(4, 5, 0, NULL, 4, 'phòng 4', 'room 4', 'phong-4', '', '1526356499_room-6.jpg', 0, 0, 0, 'A luxuriously separate bedroom & living room, with 10 meter-long balcony providing street & city view.', 'A luxuriously separate bedroom & living room, with 10 meter-long balcony providing street & city view.', '<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.&nbsp;A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.&nbsp;A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.&nbsp;A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.</p>\r\n<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.</p>', '<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.&nbsp;A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view. v&nbsp;A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.</p>\r\n<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.</p>\r\n<p>A luxuriously separate bedroom &amp; living room, with 10 meter-long balcony providing street &amp; city view.</p>', '<p class=\"desc mgb-20\">Bằng c&aacute;ch đặt chỗ trực tiếp với ch&uacute;ng t&ocirc;i, bạn sẽ nhận được mức gi&aacute; v&agrave; đặc quyền được đảm bảo tốt nhất</p>\r\n<table class=\"table-responsive\" border=\"1\" cellspacing=\"0\" cellpadding=\"8\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"2\"><strong>Room Type</strong></td>\r\n<td rowspan=\"2\"><strong>Public Rates (US$) (start for single)</strong></td>\r\n<td colspan=\"5\"><strong>Promotional Rates (US$)</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>Single</strong></td>\r\n<td><strong>Double/Twin</strong></td>\r\n<td><strong>Triple</strong></td>\r\n<td><strong>Quadruple</strong></td>\r\n<td><strong>Quintuple</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Superior&nbsp; Room</td>\r\n<td>(VND2.750.000) US$105++</td>\r\n<td>60</td>\r\n<td>70</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Deluxe Window</td>\r\n<td>(VND3.145.000)&nbsp; &nbsp;US$120++</td>\r\n<td>70</td>\r\n<td>80</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Deluxe Balcony</td>\r\n<td>(VND3.400.000)&nbsp; &nbsp;US$130++</td>\r\n<td>75</td>\r\n<td>85</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Junior Suite Window</td>\r\n<td>(VND3.800.000) US$145++</td>\r\n<td>80</td>\r\n<td>95</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Junior Suite Balcony</td>\r\n<td>(VND4.060.000) US$155++</td>\r\n<td>85</td>\r\n<td>100</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Suite City View</td>\r\n<td>(VND4.450.000) US$170++</td>\r\n<td>100</td>\r\n<td>115</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Essence Suite Balcony</td>\r\n<td>(VND4.450.000) US$170++</td>\r\n<td>100</td>\r\n<td>115</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Family Interconnecting</td>\r\n<td>(VND5.240.000) US$200++&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>115</td>\r\n<td>125</td>\r\n<td>135</td>\r\n<td>*</td>\r\n</tr>\r\n<tr>\r\n<td>Family Premier</td>\r\n<td>(VND5.240.000) US$200++&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>n/a</td>\r\n<td>120</td>\r\n<td>130</td>\r\n<td>140</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<p class=\"desc mgb-20\">Bằng c&aacute;ch đặt chỗ trực tiếp với ch&uacute;ng t&ocirc;i, bạn sẽ nhận được mức gi&aacute; v&agrave; đặc quyền được đảm bảo tốt nhất</p>\r\n<table class=\"table-responsive\" border=\"1\" cellspacing=\"0\" cellpadding=\"8\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"2\"><strong>Room Type</strong></td>\r\n<td rowspan=\"2\"><strong>Public Rates (US$) (start for single)</strong></td>\r\n<td colspan=\"5\"><strong>Promotional Rates (US$)</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>Single</strong></td>\r\n<td><strong>Double/Twin</strong></td>\r\n<td><strong>Triple</strong></td>\r\n<td><strong>Quadruple</strong></td>\r\n<td><strong>Quintuple</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Superior&nbsp; Room</td>\r\n<td>(VND2.750.000) US$105++</td>\r\n<td>60</td>\r\n<td>70</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Deluxe Window</td>\r\n<td>(VND3.145.000)&nbsp; &nbsp;US$120++</td>\r\n<td>70</td>\r\n<td>80</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Deluxe Balcony</td>\r\n<td>(VND3.400.000)&nbsp; &nbsp;US$130++</td>\r\n<td>75</td>\r\n<td>85</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Junior Suite Window</td>\r\n<td>(VND3.800.000) US$145++</td>\r\n<td>80</td>\r\n<td>95</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Junior Suite Balcony</td>\r\n<td>(VND4.060.000) US$155++</td>\r\n<td>85</td>\r\n<td>100</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Suite City View</td>\r\n<td>(VND4.450.000) US$170++</td>\r\n<td>100</td>\r\n<td>115</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Essence Suite Balcony</td>\r\n<td>(VND4.450.000) US$170++</td>\r\n<td>100</td>\r\n<td>115</td>\r\n<td>*</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Family Interconnecting</td>\r\n<td>(VND5.240.000) US$200++&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>115</td>\r\n<td>125</td>\r\n<td>135</td>\r\n<td>*</td>\r\n</tr>\r\n<tr>\r\n<td>Family Premier</td>\r\n<td>(VND5.240.000) US$200++&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>n/a</td>\r\n<td>120</td>\r\n<td>130</td>\r\n<td>140</td>\r\n</tr>\r\n</tbody>\r\n</table>', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-16 02:16:03', '2018-05-15 19:16:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `stt` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text CHARACTER SET utf8,
  `mota_en` text CHARACTER SET utf8,
  `photo` text COLLATE utf8_unicode_ci,
  `noibat` int(2) DEFAULT '0',
  `status` int(11) NOT NULL,
  `lever` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `keyword_en` text CHARACTER SET utf8,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `stt`, `name`, `name_en`, `alias`, `mota`, `mota_en`, `photo`, `noibat`, `status`, `lever`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Phòng đơn', 'Single room', 'phong-don', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-16 00:40:59', '2018-05-16 00:40:59'),
(2, NULL, 2, 'Phòng đôi', 'Double room', 'phong-doi', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-16 00:41:20', '2018-05-16 00:41:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `province_name` varchar(250) DEFAULT NULL,
  `province_en` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`id`, `province_name`, `province_en`, `created_at`, `updated_at`) VALUES
(8, 'Hà Nội', 'Ha noi', '2017-12-20 22:01:17', '2017-12-22 21:01:21'),
(9, 'Đà Nẵng', 'Da Nang', '2017-12-20 22:01:26', '2017-12-22 21:01:30'),
(10, 'Hải Phòng', 'Hai Phong', '2017-12-20 22:01:32', '2017-12-22 21:01:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `recruitment`
--

INSERT INTO `recruitment` (`id`, `name`, `address`, `phone`, `email`, `created_at`, `updated_at`, `status`) VALUES
(6, 'Công ty Gco', 'trường chinh, thanh xuân, hà nội', '0943249', 'gco@gmail.com', '2017-09-15 04:21:08', '2017-09-14 21:21:08', 1),
(7, 'Hoàng Hồng Chương', 'Hà Nội', '0987654321', 'chuonghoanghong@gmail.com', '2017-09-17 20:31:17', '2017-09-17 20:31:17', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `title_en` text CHARACTER SET utf8,
  `company` text COLLATE utf8_unicode_ci,
  `company_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `website` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `address_en` text CHARACTER SET utf8,
  `phone` text COLLATE utf8_unicode_ci,
  `hotline` text COLLATE utf8_unicode_ci,
  `fax` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `logo` text COLLATE utf8_unicode_ci,
  `favico` text COLLATE utf8_unicode_ci,
  `title_index` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `mota_en` text CHARACTER SET utf8,
  `content` longtext COLLATE utf8_unicode_ci,
  `content_en` text CHARACTER SET utf8,
  `facebook` text COLLATE utf8_unicode_ci,
  `twitter` text COLLATE utf8_unicode_ci,
  `skype` text COLLATE utf8_unicode_ci,
  `google` text COLLATE utf8_unicode_ci,
  `youtube` text COLLATE utf8_unicode_ci,
  `slogan` text CHARACTER SET utf8,
  `slogan_en` text CHARACTER SET utf8,
  `status` int(11) NOT NULL DEFAULT '0',
  `toado` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `iframemap` text COLLATE utf8_unicode_ci,
  `codechat` longtext COLLATE utf8_unicode_ci,
  `analytics` longtext COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `name`, `name_en`, `title`, `title_en`, `company`, `company_en`, `website`, `address`, `address_en`, `phone`, `hotline`, `fax`, `email`, `photo`, `logo`, `favico`, `title_index`, `mota`, `mota_en`, `content`, `content_en`, `facebook`, `twitter`, `skype`, `google`, `youtube`, `slogan`, `slogan_en`, `status`, `toado`, `copyright`, `iframemap`, `codechat`, `analytics`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Ivy', NULL, 'Ivy', NULL, 'Ivy', '国際合資会社 IVY HR', 'www.auviethr.vn', 'Tầng 8, TOYOTA Thanh Xuân 315 Trường Chinh, Thanh Xuân, Hà Nội', '8th , TOYOTA Thanh Xuan, 315 Truong Chinh street, Thanh Xuan, Ha Noi', '0987654321', '0963251487', NULL, 'acb@gmail.com', '1538446450_logov.png', '1525742871_zed.jpg', '1538446450_logov.png', NULL, NULL, NULL, NULL, NULL, 'https://www.facebook.com/FacebookforDevelopers/', 'https://twitter.com/?lang=vi', 'alsls', 'https://plus.google.com/?hl=vi', 'https://www.youtube.com/', '<h1 class=\"vk-cate__heading\">&nbsp;</h1>', '<h1>&nbsp;</h1>', 1, NULL, '© GCO 2018. All rights reserved', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7451.171877144796!2d105.871187!3d20.969137!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac25be4ca5e3%3A0xe81d88694b0116b9!2zWcOqbiBEdXnDqm4sIFnDqm4gU-G7nywgSG_DoG5nIE1haSwgSMOgIE7hu5lpLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1509609109763\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2018-10-04 01:55:10', '2018-10-03 18:55:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `user_id`, `name`, `link`, `photo`, `icon`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(41, 5, '1', NULL, '1538549558_slider1.jpg', '', NULL, NULL, 1, 0, 'gioi-thieu', 2, '2018-10-03 06:52:38', '2018-10-02 23:52:38'),
(47, 5, 'Chứng chỉ 3', NULL, '1509931153_certify-3.jpg', '', NULL, NULL, 1, 0, 'thu-vien-anh', 3, '2017-11-05 18:19:13', '2017-11-05 18:19:13'),
(46, 5, 'Chứng chỉ 2', NULL, '1509931145_certify-2.jpg', '', NULL, NULL, 1, 0, 'thu-vien-anh', 2, '2017-11-05 18:19:05', '2017-11-05 18:19:05'),
(45, 5, 'chứng chỉ 1', NULL, '1509931135_certify-1.jpg', '', NULL, NULL, 1, 0, 'thu-vien-anh', 1, '2017-11-08 03:13:43', '2017-11-07 20:13:43'),
(29, 5, 'MIỄN PHÍ VẬN CHUYỂN', NULL, '1504143783_oto.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 1, '2017-08-31 01:44:03', '2017-08-30 18:44:03'),
(30, 5, 'ĐỔI TRẢ TRONG VÒNG 07 NGÀY', NULL, '1504143807_phone.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 2, '2017-08-30 18:43:27', '2017-08-30 18:43:27'),
(31, 5, 'HỖ TRỢ ONLINE 24/7', NULL, '1504143833_watch.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 3, '2017-08-30 18:43:53', '2017-08-30 18:43:53'),
(42, 5, '2', NULL, '1538549567_slider2.jpg', '', NULL, NULL, 1, 0, 'gioi-thieu', 1, '2018-10-03 06:52:47', '2018-10-02 23:52:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slogan`
--

CREATE TABLE `slogan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `photo` text,
  `content` text,
  `content_en` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slogan`
--

INSERT INTO `slogan` (`id`, `name`, `name_en`, `photo`, `content`, `content_en`, `created_at`, `updated_at`) VALUES
(1, 'Giao hàng kịp thời', 'Timely delivery', '1513754983_quality-item-1.png', '<p>Kh&ocirc;ng m&aacute;y in n&agrave;o nhanh hơn. Đặt h&agrave;ng ng&agrave;y h&ocirc;m nay v&agrave;o l&uacute;c 8 giờ tối theo giờ EST</p>', '<p>No printer any faster. Order today at 8pm EST</p>', '2017-12-20 09:42:26', '2017-12-20 02:42:26'),
(3, 'In chất lượng', NULL, '1513754996_quality-item-2.png', '<p>Mực tươi s&aacute;ng. Giấy d&agrave;y. Cắt ch&iacute;nh x&aacute;c. Ch&uacute;ng t&ocirc;i tin rằng vấn đề in chất lượng l&agrave; vấn đề.</p>', NULL, '2017-12-20 07:30:08', '2017-12-20 00:30:08'),
(4, 'Lời hứa của công ty', NULL, '1513755045_quality-item-3.png', '<p>Lu&ocirc;n l&agrave;m việc chuy&ecirc;n nghiệp, sản phẩm uy t&iacute;n v&agrave; chất lượng đến tay kh&aacute;ch h&agrave;ng</p>', NULL, '2017-12-20 07:30:45', '2017-12-20 00:30:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `useronline`
--

CREATE TABLE `useronline` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '2',
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `level`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'tuanduy2012', '$2y$10$DceYJxR4ALmUW.Vt6k9En.1ubJhJGvWX1HISRloBERLNJ8Qq85itO', 'Tuan Duy', 'duydoan.nina@gmail.com', '', '', 1, NULL, 1, 'X37mpbjW1WDCjwH3s4Vq1Jkv3WRNJceXZlbLwHaa', '2017-06-14 23:42:39', '2017-06-14 23:42:39'),
(4, 'evernigh', '$2y$10$pprRO9LhYKADS60bvetRnOYoS3L74giVWf3D/wNZXlDLDRRx0bH6e', 'Duy Đoàn', 'tuanduy_mc2006@yahoo.com', '', '', 0, NULL, 1, '6CirvIekDhWLx3xFrnv7v39bFmalTsH21F4WABTq', '2017-06-16 02:51:34', '2017-06-16 02:51:34'),
(5, 'gco_admin', '$2y$10$Lm3vxVo0UYuWFSzJkpvmwOKecqZm5coQSy1D3QW/Tc8c569RgBNFK', 'Admin', 'gco@gmail.com', '0985431797', '315 Trường chinh, Thanh Xuân, Hà Nội', 1, '5.jpg', 1, 'KyjC2pTepYQJtT1Og50Mhl6ZKKd2iUb0K5eYAI9tJ46l7Yh3FxK6DnXbFlfD', '2018-05-21 08:39:19', '2017-09-24 19:31:27'),
(7, 'hoangchuong', '$2y$10$PnaSJxmZdL0x0wRtj4q0tODPWKtxI85VefEFNZWDQKEH6q8rxjLc6', 'chuong', 'chuonghoanghong@gmail.com', NULL, NULL, 1, NULL, 1, 'DSYV3dr0q7IjUiVKsa4tl4ApOSuDPybd17EupcaO', '2017-11-07 01:31:10', '2017-11-07 01:31:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `name_en` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `name`, `name_en`, `link`, `created_at`, `updated_at`) VALUES
(2, 'Video 1', 'Video 15', '3K0NDbqFxe8', '2018-10-02 02:56:36', '2018-10-03 20:58:04'),
(3, 'Video 2', 'video 23', '3K0NDbqFxe8', '2018-10-02 02:56:46', '2018-10-03 20:58:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vieclam`
--

CREATE TABLE `vieclam` (
  `id` int(11) NOT NULL,
  `province_id` int(11) DEFAULT NULL,
  `linhvuc_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `expiration_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mota` text,
  `mota_en` text,
  `content` text,
  `content_en` text,
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `keyword` text,
  `keyword_en` text,
  `description` text,
  `description_en` text,
  `hot` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `vieclam`
--

INSERT INTO `vieclam` (`id`, `province_id`, `linhvuc_id`, `name`, `name_en`, `alias`, `expiration_date`, `mota`, `mota_en`, `content`, `content_en`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `hot`, `created_at`, `updated_at`) VALUES
(1, 8, 5, 'Nhân viên-Triển khai các chiến dịch gọi ra', 'ssf sf sf', 'nhan-vien-trien-khai-cac-chien-dich-goi-ra', '2017-12-21 09:16:31', '<p>ffff</p>', NULL, '<p>sssss</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 02:16:31', '2017-12-21 02:16:31'),
(2, 8, 3, 'Nhân viên tư vấn', 'gggg', 'nhan-vien-tu-van', '2017-12-21 09:17:44', '<p>ggsfsf</p>', '<p>gggg</p>', '<p>fsfsf</p>', '<p>ggggg</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 02:17:44', '2017-12-21 02:17:44'),
(3, 9, 4, 'Kế toán', 'Accountant', 'ke-toan', '2017-12-29 17:00:00', '<p>d</p>', '<p>k</p>', '<p>d</p>', '<p>k</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-25 03:50:02', '2017-12-24 20:50:02');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banggia`
--
ALTER TABLE `banggia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner_content`
--
ALTER TABLE `banner_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner_position`
--
ALTER TABLE `banner_position`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `campaign_cards`
--
ALTER TABLE `campaign_cards`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lienket`
--
ALTER TABLE `lienket`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `linhvuc`
--
ALTER TABLE `linhvuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slogan`
--
ALTER TABLE `slogan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vieclam`
--
ALTER TABLE `vieclam`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `banggia`
--
ALTER TABLE `banggia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `banner_content`
--
ALTER TABLE `banner_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `banner_position`
--
ALTER TABLE `banner_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `campaign_cards`
--
ALTER TABLE `campaign_cards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `langs`
--
ALTER TABLE `langs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `lienket`
--
ALTER TABLE `lienket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `linhvuc`
--
ALTER TABLE `linhvuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `slogan`
--
ALTER TABLE `slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `useronline`
--
ALTER TABLE `useronline`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `vieclam`
--
ALTER TABLE `vieclam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
