-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 23, 2018 lúc 05:43 AM
-- Phiên bản máy phục vụ: 10.1.26-MariaDB
-- Phiên bản PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `longanh`
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
(31, 5, 'PANTONE CREATIVE', NULL, 'pantone-creative', NULL, '1526378728_banner-2.jpg', 'Proin quis tortor orci. Etiam at risus et justo ales dignissim congue.', 'Proin quis tortor orci. Etiam at risus et justo ales dignissim congue.Donec congue lacinia dui, a porttitor lectus condimentum laoreet. Nunc eu ullamcorper orci. Quisque eget', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'gioi-thieu', '2018-05-15 10:06:07', '2018-05-15 03:06:07'),
(83, 5, NULL, NULL, '', NULL, NULL, 'experienced and rediscovered each visit. Free wireless internet and laptops are available throughout all guestrooms and public areas, fresh seasonal fruit awaits you upon arrival, your mini-bar is replenished daily, bath amenities and flowers help you enjoy the custom tubs, super quiet, spacious rooms and incredible down bedding beckons you back from wherever your day takes you.xxx', 'experienced and rediscovered each visit. Free wireless internet and laptops are available throughout all guestrooms and public areas, fresh seasonal fruit awaits you upon arrival, your mini-bar is replenished daily, bath amenities and flowers help you enjoy the custom tubs, super quiet, spacious rooms and incredible down bedding beckons you back from wherever your day takes you.', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'phong', '2018-05-16 03:24:00', '2018-05-15 20:24:00'),
(80, 5, NULL, NULL, '', NULL, NULL, '<h1 class=\"title-h\">Ch&uacute;ng ta c&oacute; thể l&agrave;m g&igrave; cho doanh nghiệp của bạn?</h1>', NULL, NULL, '<h2>Ch&uacute;ng t&ocirc;i<br />lu&ocirc;n lắng nghe<br />từ kh&aacute;ch h&agrave;ng !!!</h2>', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'lien-he', '2018-04-24 01:55:46', '2018-04-23 18:55:46'),
(81, 5, NULL, NULL, '', NULL, NULL, '<h2 class=\"title-h\">H&atilde;y tham khảo c&ocirc;ng việc v&agrave; tự tin gửi CV cho ch&uacute;ng t&ocirc;i !</h2>', '<p>description english</p>', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyendung', '2018-04-24 02:57:17', '2018-04-23 19:57:17'),
(82, 5, NULL, NULL, '', NULL, NULL, 'Những dịch vụ tốt nhất', 'The most beautiful clothes that can dress a woman are the arms of the man she loves.', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', '2018-05-15 01:30:23', '2018-05-14 18:30:23');

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
(9, '1526873245_banner-10.jpg', NULL, 4, '2018-05-20 20:27:25', '2017-12-22 04:12:07'),
(10, '1526873265_banner-10.jpg', NULL, 6, '2018-05-20 20:27:45', '2017-11-07 19:07:17'),
(11, '1526873278_banner-9.jpg', NULL, 7, '2018-05-20 20:27:58', '2017-11-07 19:07:29'),
(12, '1526873288_banner-12.jpg', NULL, 2, '2018-05-20 20:28:08', '2017-11-07 19:07:42'),
(13, '1526873303_banner-11.jpg', NULL, 5, '2018-05-20 20:28:23', '2017-11-07 19:22:59');

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
(2, 'Tin tức', '2017-10-14 03:36:18', '2017-10-13 20:36:18'),
(4, 'Trang liên hệ', '2018-05-21 03:25:09', '2018-05-20 20:25:09'),
(5, 'Trang dịch vụ', '2018-05-21 03:24:23', '2018-05-20 20:24:23'),
(6, 'Trang bar nhà hàng', '2018-05-21 03:24:01', '2018-05-20 20:24:01'),
(7, 'Trang phòng', '2018-05-21 03:23:02', '2018-05-20 20:23:02');

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
(1, 'Giới thiệu về công ty', 'About us', 'gioi-thieu-ve-cong-ty', '1513819499_about-1.jpg', '<p class=\"vk-about__title text-uppercase animation fadeIn animation-active\">C&ocirc;ng ty Cổ phần Thuận Đức được th&agrave;nh lập v&agrave;o ng&agrave;y 22/01/2007 tại Hưng Y&ecirc;n, Việt Nam bởi doanh nh&acirc;n Nguyễn Đức Cường, l&agrave; doanh nghiệp hoạt động trong lĩnh vực sản xuất c&aacute;c sản phẩm từ polypropylene, nổi bật l&agrave; hạt nhựa t&aacute;i chế v&agrave; bao b&igrave; PP.</p>', '<p>Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.</p>', '<p class=\"animation fadeIn animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n<p class=\"animation fadeIn animation-active\">Tại C&ocirc;ng ty TNHH sản xuất nhựa Ch&acirc;u &Acirc;u ch&uacute;ng t&ocirc;i tin tưởng rằng chỉ c&oacute; nghi&ecirc;m ngặt tu&acirc;n theo quy tr&igrave;nh quản l&yacute; chất lượng để tạo ra những sản phẩm đạt chất lượng cao v&agrave; dịch vụ tốt, ch&uacute;ng t&ocirc;i mới chiếm được l&ograve;ng tin của kh&aacute;ch h&agrave;ng đồng thời x&aacute;c lập vị tr&iacute; của m&igrave;nh tr&ecirc;n thị trường, để người Việt c&oacute; thể tin d&ugrave;ng h&agrave;ng Việt</p>\r\n<div class=\"row\">\r\n<div class=\"col-lg-9\">\r\n<p class=\"animation fadeIn delay1 animation-active\"><strong>Lịch sử h&igrave;nh th&agrave;nh</strong></p>\r\n<p class=\"animation fadeIn delay1 animation-active\">C&ocirc;ng ty TNHH Thiết Bị Điện Nước H&agrave; Th&agrave;nh được ch&iacute;nh thức th&agrave;nh lập v&agrave; đi v&agrave;o hoạt động từ th&aacute;ng 3 năm 2009. Ng&agrave;nh nghề ch&iacute;nh của ch&uacute;ng t&ocirc;i l&agrave; sản xuất thiết bị điện nước mang thương hiệu HATHACO. Nh&agrave; m&aacute;y sản xuất phụ kiện ống nhựa HDPE đặt tại Th&agrave;nh phố Hải Dương. Với nhiều m&aacute;y &eacute;p phun, m&aacute;y &eacute;p gioăng cao su v&agrave; hơn 200 bộ khu&ocirc;n sản phẩm kh&aacute;c nhau, ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang sản xuất cung cấp cho thị trường c&aacute;c loại phụ kiện HDPE vặn ren v&agrave; đai khởi thủy k&iacute;ch thước từ D20 đến D110 mang thương hiệu HATHACO đạt ti&ecirc;u chuẩn Dụng cụ bằng nhựa tiếp x&uacute;c trực tiếp thực phẩm của Bộ Y Tế: QCVN 12-1:2011/BYT v&agrave; tu&acirc;n theo Quy tr&igrave;nh quản l&yacute; chất lượng TCVN ISO 9001:2008.</p>\r\n<p class=\"animation fadeIn delay1 animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n</div>\r\n</div>', '<p>Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.</p>\r\n<p>Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-12-21 02:45:24', '2017-12-20 19:45:24'),
(2, 'Quá trình phát triển', NULL, 'qua-trinh-phat-trien', NULL, NULL, NULL, '<p class=\"animation fadeIn animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n<p class=\"animation fadeIn animation-active\">Tại C&ocirc;ng ty TNHH sản xuất nhựa Ch&acirc;u &Acirc;u ch&uacute;ng t&ocirc;i tin tưởng rằng chỉ c&oacute; nghi&ecirc;m ngặt tu&acirc;n theo quy tr&igrave;nh quản l&yacute; chất lượng để tạo ra những sản phẩm đạt chất lượng cao v&agrave; dịch vụ tốt, ch&uacute;ng t&ocirc;i mới chiếm được l&ograve;ng tin của kh&aacute;ch h&agrave;ng đồng thời x&aacute;c lập vị tr&iacute; của m&igrave;nh tr&ecirc;n thị trường, để người Việt c&oacute; thể tin d&ugrave;ng h&agrave;ng Việt</p>\r\n<div class=\"row\">\r\n<div class=\"col-lg-9\">\r\n<p class=\"animation fadeIn delay1 animation-active\"><strong>Lịch sử h&igrave;nh th&agrave;nh</strong></p>\r\n<p class=\"animation fadeIn delay1 animation-active\">C&ocirc;ng ty TNHH Thiết Bị Điện Nước H&agrave; Th&agrave;nh được ch&iacute;nh thức th&agrave;nh lập v&agrave; đi v&agrave;o hoạt động từ th&aacute;ng 3 năm 2009. Ng&agrave;nh nghề ch&iacute;nh của ch&uacute;ng t&ocirc;i l&agrave; sản xuất thiết bị điện nước mang thương hiệu HATHACO. Nh&agrave; m&aacute;y sản xuất phụ kiện ống nhựa HDPE đặt tại Th&agrave;nh phố Hải Dương. Với nhiều m&aacute;y &eacute;p phun, m&aacute;y &eacute;p gioăng cao su v&agrave; hơn 200 bộ khu&ocirc;n sản phẩm kh&aacute;c nhau, ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang sản xuất cung cấp cho thị trường c&aacute;c loại phụ kiện HDPE vặn ren v&agrave; đai khởi thủy k&iacute;ch thước từ D20 đến D110 mang thương hiệu HATHACO đạt ti&ecirc;u chuẩn Dụng cụ bằng nhựa tiếp x&uacute;c trực tiếp thực phẩm của Bộ Y Tế: QCVN 12-1:2011/BYT v&agrave; tu&acirc;n theo Quy tr&igrave;nh quản l&yacute; chất lượng TCVN ISO 9001:2008.</p>\r\n<p class=\"animation fadeIn delay1 animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-12-21 02:45:39', '2017-12-20 19:45:39');

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
(32, 'Sản phẩm liên quan', 'Related products', NULL, '_sanphamlienquan', NULL, 1, 0, NULL, NULL, NULL, 'langs', 12, '2017-08-27 21:07:23', '2017-08-27 21:07:23'),
(31, 'Dịch vụ', 'Service', NULL, '_dichvu', NULL, 1, 0, NULL, NULL, NULL, 'langs', 10, '2017-10-09 08:14:14', '2017-10-09 01:14:14'),
(30, 'Danh mục sản phẩm', 'Product category', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 10, '2017-12-22 07:03:12', '2017-12-22 00:03:12'),
(29, 'Danh mục dự án', 'Project List', NULL, '_danhmucduan', NULL, 1, 0, NULL, NULL, NULL, 'langs', 9, '2017-08-26 01:13:13', '2017-08-25 18:13:13'),
(28, 'Tin tức sự kiện', 'News event', NULL, '_tintucsukien', NULL, 1, 0, NULL, NULL, NULL, 'langs', 8, '2017-08-24 23:40:43', '2017-08-24 23:40:43'),
(27, 'Giới thiệu', 'About Us', NULL, '_gioithieu', NULL, 1, 0, NULL, NULL, NULL, 'langs', 7, '2017-10-09 08:12:46', '2017-10-09 01:12:46'),
(21, 'Trang chủ', 'Home', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'langs', NULL, '2017-12-20 08:07:27', '2017-12-20 01:07:27'),
(22, 'Sản phẩm', 'Product', NULL, '_sanpham', NULL, 1, 0, NULL, NULL, NULL, 'langs', 2, '2017-08-22 02:50:27', '2017-08-22 02:50:27'),
(23, 'Dự án', 'Project', NULL, '_duan', NULL, 1, 0, NULL, NULL, NULL, 'langs', 3, '2017-08-22 02:51:17', '2017-08-22 02:51:17'),
(24, 'Tin tức', 'News', NULL, '_tintuc', NULL, 1, 0, NULL, NULL, NULL, 'langs', 4, '2017-08-22 02:51:30', '2017-08-22 02:51:30'),
(25, 'Liên hệ', 'Contact', NULL, '_lienhe', NULL, 1, 0, NULL, NULL, NULL, 'langs', 5, '2017-08-22 02:51:42', '2017-08-22 02:51:42'),
(26, 'Tin mới', 'News', NULL, '_tinmoi', NULL, 1, 0, NULL, NULL, NULL, 'langs', 16, '2017-08-26 04:09:58', '2017-08-25 21:09:58'),
(33, 'Họ tên', 'Name', NULL, '_hoten', NULL, 1, 0, NULL, NULL, NULL, 'langs', 13, '2017-08-27 21:41:35', '2017-08-27 21:41:35'),
(34, 'Số điện thoại', 'Phone', NULL, '_sodienthoai', NULL, 1, 0, NULL, NULL, NULL, 'langs', 14, '2017-08-27 21:41:49', '2017-08-27 21:41:49'),
(35, 'Địa chỉ', 'Address', NULL, '_diachi', NULL, 1, 0, NULL, NULL, NULL, 'langs', 15, '2017-08-27 21:42:03', '2017-08-27 21:42:03'),
(36, 'Nội dung', 'Content', NULL, '_noidung', NULL, 1, 0, NULL, NULL, NULL, 'langs', 16, '2017-08-27 21:42:21', '2017-08-27 21:42:21'),
(37, 'Gửi', 'Send', NULL, '_gui', NULL, 1, 0, NULL, NULL, NULL, 'langs', 17, '2017-08-27 21:42:32', '2017-08-27 21:42:32'),
(38, 'Tin tức liên quan', 'Related news', NULL, '_tintuclienquan', NULL, 1, 0, NULL, NULL, NULL, 'langs', 18, '2017-08-28 01:49:13', '2017-08-28 01:49:13'),
(39, 'Tìm kiếm', 'Search', NULL, '_timkiem', NULL, 1, 0, NULL, NULL, NULL, 'langs', 19, '2017-10-09 03:12:37', '2017-10-09 03:12:37'),
(40, 'Từ khóa tìm kiếm', 'Keyword search', NULL, '_tukhoatimkiem', NULL, 1, 0, NULL, NULL, NULL, 'langs', 20, '2017-10-09 03:14:05', '2017-10-09 03:14:05'),
(41, 'Dịch vụ của chúng tôi', 'Our services', NULL, '_dichvucuachung toi', NULL, 1, 0, NULL, NULL, NULL, 'langs', 21, '2017-10-10 20:20:15', '2017-10-10 20:20:15'),
(42, 'Về chúng tôi', 'About us', NULL, '_vechungtoi', NULL, 1, 0, NULL, NULL, NULL, 'langs', 22, '2017-10-11 01:55:11', '2017-10-11 01:55:11'),
(43, 'Tầm nhìn sứ mệnh', 'Vision, mission', NULL, '_tamnhinsumenh', NULL, 1, 0, NULL, NULL, NULL, 'langs', 23, '2017-10-11 01:58:09', '2017-10-11 01:58:09'),
(44, 'Nhân sự chủ chốt', 'Key personnel', NULL, '_nhansuchuchot', NULL, 1, 0, NULL, NULL, NULL, 'langs', 24, '2017-10-11 01:58:31', '2017-10-11 01:58:31'),
(45, 'Diện tích', 'Acreage', NULL, '_dientich', NULL, 1, 0, NULL, NULL, NULL, 'langs', 25, '2017-10-12 20:09:06', '2017-10-12 20:09:06'),
(46, 'Thiết kế, thi công', 'Construction Design', NULL, '_thietkethicong', NULL, 1, 0, NULL, NULL, NULL, 'langs', 26, '2017-10-12 20:09:33', '2017-10-12 20:09:33'),
(47, 'Đọc tiếp', 'Read more', NULL, '_doctiep', NULL, 1, 0, NULL, NULL, NULL, 'langs', 27, '2017-10-13 00:39:31', '2017-10-13 00:39:31'),
(49, 'Liên kết', 'Link', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 28, '2017-12-20 01:59:09', '2017-12-20 01:59:09'),
(50, 'Mạng xã hội', 'Socialite', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 29, '2017-12-20 02:00:13', '2017-12-20 02:00:13'),
(51, 'Gửi liên hệ', 'Send contact', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 30, '2017-12-21 18:36:59', '2017-12-21 18:36:59'),
(52, 'Đăng kí nhận báo giá', 'Sign up for a quote', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 31, '2017-12-21 23:52:51', '2017-12-21 23:52:51'),
(53, 'Khách hàng', 'Customer', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 32, '2018-04-23 08:58:16', '2018-04-23 01:58:16'),
(54, 'Sự khác biệt', 'Difference', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 33, '2017-12-24 20:20:01', '2017-12-24 20:20:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienket`
--

CREATE TABLE `lienket` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
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
-- Đang đổ dữ liệu cho bảng `lienket`
--

INSERT INTO `lienket` (`id`, `user_id`, `name`, `link`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(4, 5, 'Slider 1', NULL, '1503972273_banner.png', NULL, NULL, 1, 0, 'slider', 1, '2017-08-29 02:04:33', '2017-08-28 19:04:33'),
(5, 5, 'Slider 2', 'http://gco.vn/', '1503972281_banner.png', NULL, NULL, 1, 0, 'slider', 2, '2017-08-29 02:04:41', '2017-08-28 19:04:41'),
(8, 5, 'Chị Thanh Lam', NULL, '1504774299_relation-3.png', NULL, NULL, 1, 0, 'cam-nhan', 1, '2017-09-07 08:51:40', '2017-09-07 01:51:40'),
(9, 5, 'Chị Lê Thu Thủy', 'http://gco.vn/', '1504774309_relation-4.png', NULL, NULL, 1, 0, 'cam-nhan', 2, '2017-09-07 08:51:49', '2017-09-07 01:51:49'),
(10, 5, 'Chị Khánh Ngọc', NULL, '1504774321_relation-1.png', NULL, NULL, 1, 0, 'cam-nhan', 3, '2017-09-07 08:52:01', '2017-09-07 01:52:01'),
(11, 5, 'Anh Tuấn Lâm Nhã', NULL, '1504774330_relation-2.png', NULL, NULL, 1, 0, 'cam-nhan', 4, '2017-09-07 08:52:10', '2017-09-07 01:52:10'),
(50, 5, 'ss', NULL, '1526290993_pic-1.jpg', NULL, NULL, 1, 0, 'tieu-chi', 1, '2018-05-14 09:43:13', '2018-05-14 02:43:13'),
(16, 5, 'Chi nhánh Hà Nội', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782745_bv3.jpg', 'Số 65 Cửa Bắc, Phường Trúc Bạch, Quận Ba Đình', '<p>X&atilde; Trưng Trắc, Huyện Văn L&acirc;m, Tỉnh Hưng Y&ecirc;n&nbsp;<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;<br />Email: chauhungjsc@hn.vnn.vn</p>', 1, 0, 'chi-nhanh', 1, '2017-09-05 09:34:50', '2017-09-05 02:34:50'),
(17, 5, 'Chi nhánh HCM', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782773_bv1.jpg', '85 Nguyễn Thị Thập(Khu dân cư Himlam, Phường Tân Hưng) Quận 7', '<p>144 Khuất Duy Tiến, P. Nh&acirc;n Ch&iacute;nh, Q. Thanh Xu&acirc;n, HN<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;</p>', 1, 0, 'chi-nhanh', 2, '2017-09-05 09:35:59', '2017-09-05 02:35:59'),
(25, 5, 'Đối tác 1', 'http://gco.vn/', '1503974583_dt3.png', NULL, NULL, 1, 0, 'doi-tac', 1, '2017-08-28 19:43:03', '2017-08-28 19:43:03'),
(26, 5, 'Đối tác 2', NULL, '1503974601_dt2.png', NULL, NULL, 1, 0, 'doi-tac', 2, '2017-08-28 19:43:21', '2017-08-28 19:43:21'),
(27, 5, 'Đối tác 3', NULL, '1503974611_dt4.png', NULL, NULL, 1, 0, 'doi-tac', 3, '2017-08-28 19:43:31', '2017-08-28 19:43:31'),
(28, 5, 'Đối tác 4', NULL, '1503974620_dt1.png', NULL, NULL, 1, 0, 'doi-tac', 4, '2017-08-28 19:43:40', '2017-08-28 19:43:40'),
(29, 5, 'Đối tác 5', 'http://gco.vn/', '1503974634_dt5.png', NULL, NULL, 1, 0, 'doi-tac', 5, '2017-08-28 19:43:54', '2017-08-28 19:43:54'),
(35, 5, 'Hình 1', 'http://gco.vn/', '1504230555_1.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 1, '2017-08-31 18:49:15', '2017-08-31 18:49:15'),
(36, 5, 'Hình ảnh 2', NULL, '1504230566_2.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 2, '2017-08-31 18:49:26', '2017-08-31 18:49:26'),
(51, 5, NULL, NULL, '1526290981_pic-2.jpg', NULL, NULL, 1, 0, 'thu-vien', 2, '2018-05-14 02:43:01', '2018-05-14 02:43:01'),
(52, 5, NULL, NULL, '1526291082_pic-1.jpg', NULL, NULL, 1, 0, 'thu-vien', 2, '2018-05-14 02:44:42', '2018-05-14 02:44:42'),
(53, 5, NULL, NULL, '1526291088_pic-3.jpg', NULL, NULL, 1, 0, 'thu-vien', 3, '2018-05-14 02:44:48', '2018-05-14 02:44:48'),
(54, 5, NULL, NULL, '1526291095_pic-4.jpg', NULL, NULL, 1, 0, 'thu-vien', 4, '2018-05-14 02:44:55', '2018-05-14 02:44:55'),
(55, 5, NULL, NULL, '1526291101_pic-5.jpg', NULL, NULL, 1, 0, 'thu-vien', 5, '2018-05-14 02:45:01', '2018-05-14 02:45:01'),
(56, 5, NULL, NULL, '1526291116_pic-6.jpg', NULL, NULL, 1, 0, 'thu-vien', 6, '2018-05-14 02:45:16', '2018-05-14 02:45:16'),
(57, 5, NULL, NULL, '1526291129_pic-7.jpg', NULL, NULL, 1, 0, 'thu-vien', 7, '2018-05-14 02:45:29', '2018-05-14 02:45:29'),
(58, 5, NULL, NULL, '1526291136_pic-8.jpg', NULL, NULL, 1, 0, 'thu-vien', 8, '2018-05-14 02:45:36', '2018-05-14 02:45:36'),
(59, 5, NULL, NULL, '1526291143_pic-9.jpg', NULL, NULL, 1, 0, 'thu-vien', 9, '2018-05-14 02:45:43', '2018-05-14 02:45:43');

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `cate_id`, `user_id`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `background`, `mota`, `mota_en`, `content`, `content_en`, `status`, `noibat`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 0, 5, 'Hotel California: từ bìa album đến điểm', 'demo new', 'hotel-california-tu-bia-album-den-diem', 'demo-new', '1526287757_news-2.jpg', '', 'Trên 5 triệu người sống tại các vùng nông thôn và vùng núi nghèo nhất Việt Nam sẽ được tiếp cận với nguồn nước sạch và điều kiện vệ sinh môi trường tốt hơn nhờ vào khoản tín dụng trị giá 200 triệu USD vừa được Ban Giám đốc Điều hành Ngân Hàng Thế Giới phê duyệt hôm nay (ngày 12/11/2015)', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitor. Ut in nulla enim. Phasellus molestie magna non est bibendum non venenatis nisl tempor. Suspendisse dictum feugiat nisl ut dapibus.</p>\r\n<p>Mauris iaculis porttitor posuere. Praesent id metus massa, ut blandit odio. Proin quis tortor orci. Etiam at risus et justo dignissim congue. Donec congue lacinia dui, a porttitor lectus condimentum laoreet. Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus tortor. Nulla facilisi. Duis aliquet egestas purus in blandit. Curabitur vulputate, ligula lacinia scelerisque tempor, lacus lacus ornare ante, ac egestas est urna sit amet arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed.</p>\r\n<p>Molestie augue sit amet leo consequat posuere. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin vel ante a orci tempus eleifend ut et magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla.</p>', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 1, '2018-05-14 08:49:17', '2018-05-14 01:49:17'),
(20, 0, 5, 'KARAOKE', 'Karaoke', 'karaoke', 'karaoke', '1526292903_service-4.jpg', '', 'Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus tortor. Nulla facilisi. Duis aliquet egestas purus in blandit. Curabitur', 'Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus tortor. Nulla facilisi. Duis aliquet egestas purus in blandit. Curabitur', '<p>Thiết kế v&agrave; thiết kế hệ thống nhận diện thương hiệu lớn hay nhỏ lu&ocirc;n đ&ograve;i hỏi sự kết hợp giữa nghi&ecirc;n cứu v&agrave; ph&acirc;n t&iacute;ch giữa nh&agrave; thiết kế v&agrave; kh&aacute;ch h&agrave;ng, đ&acirc;y l&agrave; c&aacute;ch tốt nhất để chuyển hướng s&aacute;ng tạo. Kh&aacute;c biệt với c&aacute;c thương hiệu kh&aacute;c. Mặt kh&aacute;c, chủ doanh nghiệp phải buộc phải tham gia ngay từ giai đoạn n&agrave;y.</p>\r\n<ul>\r\n<li>- Nghi&ecirc;n cứu nội bộ</li>\r\n<li>- Hiểu người sử dụng</li>\r\n<li>- Ph&acirc;n t&iacute;ch đối thủ cạnh tranh</li>\r\n</ul>', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 0, '2018-05-15 01:40:47', '2018-05-14 18:40:47'),
(21, 0, 5, 'KHIÊU VŨ', 'Dancing', 'khieu-vu', 'dancing', '1526292880_service-3.jpg', '', 'Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus tortor. Nulla facilisi. Duis aliquet egestas purus in blandit. Curabitur', 'Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus tortor. Nulla facilisi. Duis aliquet egestas purus in blandit. Curabitur', '<p>Sketching, these are the early stages of the brand. This is the stage that has decided the main idea and direction of the project to implement the basic design. The basic design completed will be presented to the customer and will be adjusted to select the most appropriate template. The selected template is the starting point for implementing all the design elements of the brand identity of the project.</p>', '<p>Sketching, these are the early stages of the brand. This is the stage that has decided the main idea and direction of the project to implement the basic design. The basic design completed will be presented to the customer and will be adjusted to select the most appropriate template. The selected template is the starting point for implementing all the design elements of the brand identity of the project.</p>\r\n<p>Sketching, these are the early stages of the brand. This is the stage that has decided the main idea and direction of the project to implement the basic design. The basic design completed will be presented to the customer and will be adjusted to select the most appropriate template. The selected template is the starting point for implementing all the design elements of the brand identity of the project.</p>', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 0, '2018-05-15 03:36:39', '2018-05-14 20:36:39'),
(22, 0, 5, 'Spa', 'Spa', 'spa', 'spa', '1526292862_service-1.jpg', '', 'Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus tortor. Nulla facilisi. Duis aliquet egestas purus in blandit. Curabitur', 'Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus tortor. Nulla facilisi. Duis aliquet egestas purus in blandit. Curabitur', '<p>Nội dung tiếng việt</p>', '<p>Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus tortor. Nulla facilisi. Duis aliquet egestas purus in blandit. Curabitur</p>\r\n<p>Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus tortor. Nulla facilisi. Duis aliquet egestas purus in blandit. Curabitur</p>', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 0, '2018-05-15 03:18:46', '2018-05-14 20:18:46'),
(23, 0, 5, 'MASSAGE', 'MASSAGE', 'massage', 'massage', '1526292779_service-2.jpg', '', 'Dịch vụ massage', 'Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus tortor. Nulla facilisi. Duis aliquet egestas purus in blandit. Curabitur', '<p>The whole design concept of the brand identity system of the project is designed in basic groups, the customer adjusts and approves by group until finished. Complete designs include all the design elements in terms of style, color, material, and customer consultation for actual production.</p>', '<p>Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus tortor. Nulla facilisi. Duis aliquet egestas purus in blandit. Curabitur&nbsp;Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus tortor. Nulla facilisi. Duis aliquet egestas purus in blandit. Curabitur</p>\r\n<p>Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus tortor. Nulla facilisi. Duis aliquet egestas purus in blandit. Curabitur</p>', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 0, '2018-05-15 07:47:46', '2018-05-15 00:47:46'),
(2, 0, 5, 'Hotel California: từ bìa album đến điểm \'check in\'x', 'happy birth day', 'hotel-california-tu-bia-album-den-diem-check-inx', 'happy-birth-day', '1526287852_news-3.jpg', '', 'Bên cạnh việc sản xuất, chúng tôi còn nhập khẩu và phân phối các sản phẩm như: phụ kiện HDPE hàn nối đầu, phụ kiện HDPE hàn điện trở, các loại máy hàn ống nhựa HDPE, máy thử áp lực…', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 2, '2018-05-14 08:50:52', '2018-05-14 01:50:52'),
(8, 0, 5, 'tin tuc demo multi language', 'new multi laguage', 'tin-tuc-demo-multi-language', 'new-multi-laguage', '1526287779_news-3.jpg', '', 'sdf', NULL, '<p>fd s fsd&nbsp;</p>', NULL, 1, 0, 'fxjj', 'sf sf', 'fx', 'xx', 'fx', 's', 'tin-tuc', 0, '2018-05-14 08:49:39', '2018-05-14 01:49:39'),
(9, 0, 5, 'Hotel California: từ bìa album đến điểm \'check in\'', 'demo new 1x', 'hotel-california-tu-bia-album-den-diem-check-in', 'demo-new-1x', '1526287710_news-1.jpg', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitor. Ut in nulla enim. Phasellus molestie magna non est bibendum non venenatis nisl tempor. Suspendisse', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitor. Ut in nulla enim. Phasellus molestie magna non est bibendum non venenatis nisl tempor. Suspendisse dictum feugiat nisl ut dapibus.</p>\r\n<p>Mauris iaculis porttitor posuere. Praesent id metus massa, ut blandit odio. Proin quis tortor orci. Etiam at risus et justo dignissim congue. Donec congue lacinia dui, a porttitor lectus condimentum laoreet. Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus tortor. Nulla facilisi. Duis aliquet egestas purus in blandit. Curabitur vulputate, ligula lacinia scelerisque tempor, lacus lacus ornare ante, ac egestas est urna sit amet arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed.</p>\r\n<p>Molestie augue sit amet leo consequat posuere. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin vel ante a orci tempus eleifend ut et magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla.</p>', '<p>content english</p>', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 0, '2018-05-14 08:48:30', '2018-05-14 01:48:30'),
(12, 0, 5, 'Sự khác biệt 1', 'Differentiation 1', 'su-khac-biet-1', 'differentiation-1', '1513831028_news-item-7.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'su-khac-biet', 0, '2017-12-21 04:37:45', '2017-12-20 21:37:44'),
(11, 0, 5, 'Sự khác biệt 2', 'Differentiation 2', 'su-khac-biet-2', 'differentiation-2', '1513830921_news-item-6.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'su-khac-biet', 0, '2017-12-21 04:37:56', '2017-12-20 21:37:56'),
(13, 0, 5, 'Sự khác biệt 3', 'Differentiation 3', 'su-khac-biet-3', 'differentiation-3', '1513831050_news-item-4.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'su-khac-biet', 0, '2017-12-20 21:37:30', '2017-12-20 21:37:30'),
(14, 0, 5, 'Quan hệ cổ đông 1', 'relation 1', 'quan-he-co-dong-1', 'relation-1', '1513831182_news-item-8.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'quan-he-co-dong', 0, '2017-12-20 21:39:42', '2017-12-20 21:39:42'),
(15, 0, 5, 'Quan hệ cổ đông 2', 'relation 2', 'quan-he-co-dong-2', 'relation-2', '1513831196_news-item-9.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'quan-he-co-dong', 0, '2017-12-20 21:39:56', '2017-12-20 21:39:56'),
(16, 0, 5, 'quan hệ cổ đông 3', 'relation 3', 'quan-he-co-dong-3', 'relation-3', '1513831226_news-item-10.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'quan-he-co-dong', 0, '2017-12-20 21:40:26', '2017-12-20 21:40:26'),
(17, 0, 5, 'Tin tuyển dụng 1', 'recruitment 1', 'tin-tuyen-dung-1', 'recruitment-1', '1524538793_join-3.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 0, '2018-04-24 02:59:53', '2018-04-23 19:59:53'),
(18, 0, 5, 'Tin tuyển dụng 2', 'recruitment 2', 'tin-tuyen-dung-2', 'recruitment-2', '1524538779_join-2.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 0, '2018-04-24 02:59:39', '2018-04-23 19:59:39'),
(19, 0, 5, 'TUYỂN DỤNG CREATIVE DESIGN', 'recruitment 3', 'tuyen-dung-creative-design', 'recruitment-3', '1524538708_join-1.jpg', '', 'Creative Designer phụ trách các dự án thiết kế sáng tạo tại công ty từ thiết kế logo, nhận diện thương hiệu, ấn phẩm quảng cáo, bao bì nhãn mác, website ...', NULL, '<p>Số lượng: 02</p>\r\n<p>Vị tr&iacute;: Creative Designer</p>\r\n<p>- L&agrave;m việc tại: H&agrave; Nội</p>\r\n<p>- Số năm kinh nghiệm: 1 năm trở l&ecirc;n</p>\r\n<p class=\"font-weight-bold\">1. M&ocirc; tả c&ocirc;ng việc:</p>\r\n<p>- Thiết kế kiến tr&uacute;c v&agrave; nội thất theo y&ecirc;u cầu.</p>\r\n<p>- Triển khai bản vẽ thi c&ocirc;ng. Chủ động đưa ra c&aacute;c giải ph&aacute;p vật liệu v&agrave; giải ph&aacute;p thi c&ocirc;ng.</p>\r\n<p>- Quản l&yacute; c&aacute;c project được giao.</p>\r\n<p>(C&ocirc;ng việc cụ thể sẽ được trao đổi trong buổi phỏng vấn)</p>', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 0, '2018-04-24 03:38:13', '2018-04-23 20:38:13'),
(4, 0, 5, 'Hotel California: từ bìa albumx', 'happy women day 20-10', 'hotel-california-tu-bia-albumx', 'happy-women-day-20-10', '1526287839_news-2.jpg', '', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 4, '2018-05-14 08:50:39', '2018-05-14 01:50:39'),
(7, 0, 5, 'Hotel California: từ bìa album', 'Why use pp plastic packaging?', 'hotel-california-tu-bia-album', 'why-use-pp-plastic-packaging', '1526287830_news-1.jpg', '', NULL, NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 0, '2018-05-14 08:50:30', '2018-05-14 01:50:30'),
(27, 0, 5, 'ESSENCE BAR', 'ESSENCE BAR', 'essence-bar', 'essence-bar', '1526438991_bar-2.jpg', '', NULL, NULL, '<p>Face give, above made forth open. Over his. Female he moving winged thing bearing won&rsquo;t appear so. Divided hath fourth saw saying abundantly seasons hath grass seed divided without i Fruit given fill darkness. Had. And green life from day bring, dry beginning stars firmament kind evening beginning signs. Whales. Won&rsquo;t beast saw set i very heaven lesser years third, so female moved without tree Don&rsquo;t dry thing, rule heaven. Bearing stars one upon morning in i us likeness good grass isn&rsquo;t moved evening make in saying. Unto seas midst. Upon dry void don&rsquo;t give. Bring. God bearing great multiply.</p>\r\n<p>ere forth of good fourth fourth winged seasons. Fifth without winged. Be fish he evening were signs form fifth moved deep two sea doesn&rsquo;t. Gathering thing upon green all divided face creeping us gathered don&rsquo;t upon so movo was for firmament heaven gathered great won&rsquo;t fly, own bearing light creeping, creature green yielding female him. Yielding heaven firmament male years so. Deep forth man them fly you is green them days.</p>\r\n<p>multiply unto were upon seed fish firmament fourth stars god i image may give you&rsquo;ll them thing cattle a she&rsquo;d waters have wherein days he two.</p>', '<p>Face give, above made forth open. Over his. Female he moving winged thing bearing won&rsquo;t appear so. Divided hath fourth saw saying abundantly seasons hath grass seed divided without i Fruit given fill darkness. Had. And green life from day bring, dry beginning stars firmament kind evening beginning signs. Whales. Won&rsquo;t beast saw set i very heaven lesser years third, so female moved without tree Don&rsquo;t dry thing, rule heaven. Bearing stars one upon morning in i us likeness good grass isn&rsquo;t moved evening make in saying. Unto seas midst. Upon dry void don&rsquo;t give. Bring. God bearing great multiply.</p>\r\n<p>ere forth of good fourth fourth winged seasons. Fifth without winged. Be fish he evening were signs form fifth moved deep two sea doesn&rsquo;t. Gathering thing upon green all divided face creeping us gathered don&rsquo;t upon so movo was for firmament heaven gathered great won&rsquo;t fly, own bearing light creeping, creature green yielding female him. Yielding heaven firmament male years so. Deep forth man them fly you is green them days.</p>\r\n<p>multiply unto were upon seed fish firmament fourth stars god i image may give you&rsquo;ll them thing cattle a she&rsquo;d waters have wherein days he two.</p>', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'bar', 0, '2018-05-15 19:49:51', '2018-05-15 19:49:51'),
(28, 0, 5, 'ESSENCE RESTAURANT', 'ESSENCE RESTAURANT', 'essence-restaurant', 'essence-restaurant', '1526439579_bar-1.jpg', '', NULL, NULL, '<p>Face give, above made forth open. Over his. Female he moving winged thing bearing won&rsquo;t appear so. Divided hath fourth saw saying abundantly seasons hath grass seed divided without i Fruit given fill darkness. Had. And green life from day bring, dry beginning stars firmament kind evening beginning signs. Whales. Won&rsquo;t beast saw set i very heaven lesser years third, so female moved without tree Don&rsquo;t dry thing, rule heaven. Bearing stars one upon morning in i us likeness good grass isn&rsquo;t moved evening make in saying. Unto seas midst. Upon dry void don&rsquo;t give. Bring. God bearing great multiply.</p>\r\n<p>ere forth of good fourth fourth winged seasons. Fifth without winged. Be fish he evening were signs form fifth moved deep two sea doesn&rsquo;t. Gathering thing upon green all divided face creeping us gathered don&rsquo;t upon so movo was for firmament heaven gathered great won&rsquo;t fly, own bearing light creeping, creature green yielding female him. Yielding heaven firmament male years so. Deep forth man them fly you is green them days.</p>\r\n<p>multiply unto were upon seed fish firmament fourth stars god i image may give you&rsquo;ll them thing cattle a she&rsquo;d waters have wherein days he two.</p>', '<p>Face give, above made forth open. Over his. Female he moving winged thing bearing won&rsquo;t appear so. Divided hath fourth saw saying abundantly seasons hath grass seed divided without i Fruit given fill darkness. Had. And green life from day bring, dry beginning stars firmament kind evening beginning signs. Whales. Won&rsquo;t beast saw set i very heaven lesser years third, so female moved without tree Don&rsquo;t dry thing, rule heaven. Bearing stars one upon morning in i us likeness good grass isn&rsquo;t moved evening make in saying. Unto seas midst. Upon dry void don&rsquo;t give. Bring. God bearing great multiply.</p>\r\n<p>ere forth of good fourth fourth winged seasons. Fifth without winged. Be fish he evening were signs form fifth moved deep two sea doesn&rsquo;t. Gathering thing upon green all divided face creeping us gathered don&rsquo;t upon so movo was for firmament heaven gathered great won&rsquo;t fly, own bearing light creeping, creature green yielding female him. Yielding heaven firmament male years so. Deep forth man them fly you is green them days.</p>\r\n<p>multiply unto were upon seed fish firmament fourth stars god i image may give you&rsquo;ll them thing cattle a she&rsquo;d waters have wherein days he two.</p>', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'bar', 0, '2018-05-15 19:59:39', '2018-05-15 19:59:39');

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `background` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `mota`, `mota_en`, `status`, `lever`, `parent_id`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `com`, `stt`, `created_at`, `background`, `updated_at`) VALUES
(47, 'Tin tức', NULL, 'tin-tuc', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 1, '2017-12-21 04:11:30', '', '2017-12-20 21:11:30'),
(50, 'Tin tuyển dụng', NULL, 'tin-tuyen-dung', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 1, '2017-12-20 21:41:18', '', '2017-12-20 21:41:18'),
(51, 'Việc làm', NULL, 'viec-lam', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 2, '2017-12-20 21:44:53', '', '2017-12-20 21:44:53'),
(54, 'Sự khác biệtx', NULL, 'su-khac-bietx', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'bai-viet', 2, '2017-12-22 02:37:22', '', '2017-12-21 19:37:22'),
(55, 'Quan hệ cổ đôngx', NULL, 'quan-he-co-dongx', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'bai-viet', 3, '2017-12-22 02:37:31', '', '2017-12-21 19:37:31'),
(45, 'Tin hoạt động', 'Action news', 'tin-hoat-dong', 'action-news', '', NULL, NULL, 1, 0, 47, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 1, '2017-12-22 02:49:41', '', '2017-12-21 19:49:41'),
(46, 'Tin chứng khoán', NULL, 'tin-chung-khoan', '', '', NULL, NULL, 1, 0, 47, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 2, '2017-12-21 04:11:41', '', '2017-12-20 21:11:41'),
(56, 'Thiết kế thương hiệu', 'name english 2', 'thiet-ke-thuong-hieu', 'name-english-2', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 1, '2018-04-26 02:54:09', '', '2018-04-25 19:54:09'),
(57, 'Ứng dụng tương tác', 'name english', 'ung-dung-tuong-tac', 'name-english', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 2, '2018-04-25 19:53:37', '', '2018-04-25 19:53:37'),
(58, 'Truyền thông maketing', 'name english 3', 'truyen-thong-maketing', 'name-english-3', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 3, '2018-04-25 19:53:59', '', '2018-04-25 19:53:59'),
(59, 'Naming & Slogan', NULL, 'naming-slogan', '', '', NULL, NULL, 1, 0, 56, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 4, '2018-04-25 19:55:04', '', '2018-04-25 19:55:04'),
(60, 'Logo Design', NULL, 'logo-design', '', '', NULL, NULL, 1, 0, 56, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 5, '2018-04-25 19:55:14', '', '2018-04-25 19:55:14'),
(61, 'Brand Applications', NULL, 'brand-applications', '', '', NULL, NULL, 1, 0, 56, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 6, '2018-04-25 19:55:24', '', '2018-04-25 19:55:24'),
(62, 'Visual Identity System', NULL, 'visual-identity-system', '', '', NULL, NULL, 1, 0, 56, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 7, '2018-04-25 19:55:33', '', '2018-04-25 19:55:33'),
(63, 'Corporate Brand Identity', NULL, 'corporate-brand-identity', '', '', NULL, NULL, 1, 0, 56, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 8, '2018-04-25 19:55:41', '', '2018-04-25 19:55:41'),
(64, 'Packaging & Label Design', NULL, 'packaging-label-design', '', '', NULL, NULL, 1, 0, 56, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 9, '2018-04-25 19:55:51', '', '2018-04-25 19:55:51'),
(65, 'Brand Image', NULL, 'brand-image', '', '', NULL, NULL, 1, 0, 56, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 10, '2018-04-25 19:56:02', '', '2018-04-25 19:56:02'),
(66, 'Web Design', NULL, 'web-design', '', '', NULL, NULL, 1, 0, 57, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 11, '2018-04-25 19:56:16', '', '2018-04-25 19:56:16'),
(67, 'Web Development', NULL, 'web-development', '', '', NULL, NULL, 1, 0, 57, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 12, '2018-04-25 19:56:25', '', '2018-04-25 19:56:25'),
(68, 'Landing Page', NULL, 'landing-page', '', '', NULL, NULL, 1, 0, 57, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 13, '2018-04-25 19:56:37', '', '2018-04-25 19:56:37'),
(69, 'User Interface Design', NULL, 'user-interface-design', '', '', NULL, NULL, 1, 0, 57, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 14, '2018-04-25 19:56:46', '', '2018-04-25 19:56:46'),
(70, 'Application Design', NULL, 'application-design', '', '', NULL, NULL, 1, 0, 57, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 15, '2018-04-25 19:56:56', '', '2018-04-25 19:56:56'),
(71, 'App Icon', NULL, 'app-icon', '', '', NULL, NULL, 1, 0, 57, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 16, '2018-04-25 19:57:05', '', '2018-04-25 19:57:05'),
(72, 'Email Marketing', NULL, 'email-marketing', '', '', NULL, NULL, 1, 0, 57, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 17, '2018-04-25 19:57:14', '', '2018-04-25 19:57:14'),
(73, 'Profile Company', NULL, 'profile-company', '', '', NULL, NULL, 1, 0, 58, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 18, '2018-04-25 19:57:33', '', '2018-04-25 19:57:33'),
(74, 'Catalog', NULL, 'catalog', '', '', NULL, NULL, 1, 0, 58, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 19, '2018-04-25 19:57:45', '', '2018-04-25 19:57:45'),
(75, 'Brochure', NULL, 'brochure', '', '', NULL, NULL, 1, 0, 58, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 20, '2018-04-25 19:57:53', '', '2018-04-25 19:57:53'),
(76, 'Flyer, Leaflet', NULL, 'flyer-leaflet', '', '', NULL, NULL, 1, 0, 58, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 21, '2018-04-25 19:58:02', '', '2018-04-25 19:58:02'),
(77, 'Poster', NULL, 'poster', '', '', NULL, NULL, 1, 0, 58, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 22, '2018-04-25 19:58:13', '', '2018-04-25 19:58:13'),
(78, 'Standy, Banner', NULL, 'standy-banner', '', '', NULL, NULL, 1, 0, 58, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 23, '2018-04-25 19:58:24', '', '2018-04-25 19:58:24');

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
(1, 'Khách sạn Long Anh', NULL, 'Long Anh', NULL, 'Khách sạn Long Anh', 'LONGANH HOTEL', NULL, 'Tầng 8, TOYOTA Thanh Xuân 315 Trường Chinh, Thanh Xuân, Hà Nội', '8th , TOYOTA Thanh Xuan, 315 Truong Chinh street, Thanh Xuan, Ha Noi', '0987654321', '0963251487', NULL, 'acb@gmail.com', '1526284231_logo.png', '1525742871_zed.jpg', '1526284231_logo.png', NULL, NULL, NULL, NULL, NULL, 'https://www.facebook.com/FacebookforDevelopers/', 'https://twitter.com/?lang=vi', 'alsls', 'https://plus.google.com/?hl=vi', 'https://www.youtube.com/', '<h1 class=\"vk-cate__heading\">&nbsp;</h1>', '<h1>&nbsp;</h1>', 1, NULL, '© GCO 2018. All rights reserved', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7451.171877144796!2d105.871187!3d20.969137!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac25be4ca5e3%3A0xe81d88694b0116b9!2zWcOqbiBEdXnDqm4sIFnDqm4gU-G7nywgSG_DoG5nIE1haSwgSMOgIE7hu5lpLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1509609109763\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2018-05-14 08:11:07', '2018-05-14 01:11:07');

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
(41, 5, 'banner', NULL, '1526284255_banner.jpg', '', NULL, NULL, 1, 0, 'gioi-thieu', 2, '2018-05-14 07:50:55', '2018-05-14 00:50:55'),
(47, 5, 'Chứng chỉ 3', NULL, '1509931153_certify-3.jpg', '', NULL, NULL, 1, 0, 'thu-vien-anh', 3, '2017-11-05 18:19:13', '2017-11-05 18:19:13'),
(46, 5, 'Chứng chỉ 2', NULL, '1509931145_certify-2.jpg', '', NULL, NULL, 1, 0, 'thu-vien-anh', 2, '2017-11-05 18:19:05', '2017-11-05 18:19:05'),
(45, 5, 'chứng chỉ 1', NULL, '1509931135_certify-1.jpg', '', NULL, NULL, 1, 0, 'thu-vien-anh', 1, '2017-11-08 03:13:43', '2017-11-07 20:13:43'),
(29, 5, 'MIỄN PHÍ VẬN CHUYỂN', NULL, '1504143783_oto.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 1, '2017-08-31 01:44:03', '2017-08-30 18:44:03'),
(30, 5, 'ĐỔI TRẢ TRONG VÒNG 07 NGÀY', NULL, '1504143807_phone.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 2, '2017-08-30 18:43:27', '2017-08-30 18:43:27'),
(31, 5, 'HỖ TRỢ ONLINE 24/7', NULL, '1504143833_watch.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 3, '2017-08-30 18:43:53', '2017-08-30 18:43:53'),
(42, 5, 'New Arrivals', NULL, '1526284486_banner.jpg', '', NULL, NULL, 1, 0, 'gioi-thieu', 1, '2018-05-14 07:54:46', '2018-05-14 00:54:46');

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
  `link` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `link`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nvy3XBg-tmU\" frameborder=\"0\" allowfullscreen></iframe>', '2017-10-15 20:31:58', '2017-10-15 20:34:30');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `banner_position`
--
ALTER TABLE `banner_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `langs`
--
ALTER TABLE `langs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `lienket`
--
ALTER TABLE `lienket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vieclam`
--
ALTER TABLE `vieclam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
