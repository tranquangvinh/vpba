-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 25, 2021 lúc 11:14 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vpba`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-03-24 03:01:16', '2021-03-24 03:01:16', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://vpba.demo', 'yes'),
(2, 'home', 'http://vpba.demo', 'yes'),
(3, 'blogname', 'vpba', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tranquangvinh5899@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:96:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'vpba', 'yes'),
(41, 'stylesheet', 'vpba', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1632106876', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', '', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'cron', 'a:7:{i:1616670078;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1616684478;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1616727678;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616727685;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616727688;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1617246078;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(119, 'recovery_keys', 'a:1:{s:22:\"mLaUvIrNO4idMrhfnaaB5g\";a:2:{s:10:\"hashed_key\";s:34:\"$P$Bbij1D02LKqKZKdCeCTOwrD2F1CvmD1\";s:10:\"created_at\";i:1616556998;}}', 'yes'),
(120, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:17:\"bad_response_code\";a:1:{i:0;s:9:\"Forbidden\";}}', 'yes'),
(122, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1616555797;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(132, '_site_transient_timeout_browser_72766ab2b1c85af98adbbb9683600fdf', '1617159687', 'no'),
(133, '_site_transient_browser_72766ab2b1c85af98adbbb9683600fdf', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"89.0.4389.90\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(134, '_site_transient_timeout_php_check_27ba000775e29cd0fe5915760b10a2bf', '1617159688', 'no'),
(135, '_site_transient_php_check_27ba000775e29cd0fe5915760b10a2bf', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(143, 'can_compress_scripts', '1', 'no'),
(152, 'new_admin_email', 'tranquangvinh5899@gmail.com', 'yes'),
(155, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1616641382;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}', 'no'),
(156, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1616641384;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(157, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1616641384;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";s:4:\"vpba\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(160, 'finished_updating_comment_type', '1', 'yes'),
(161, 'current_theme', 'Vpba', 'yes'),
(162, 'theme_mods_vpba', 'a:8:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:13:\"banner-header\";s:71:\"http://vpba.demo/wp-content/uploads/2021/03/banner_rcJ-b9I9hUy2oxYN.png\";s:11:\"link_banner\";s:17:\"http://vpba.demo/\";s:11:\"link-banner\";s:17:\"http://vpba.demo/\";s:15:\"option-category\";s:1:\"5\";s:20:\"option-category-home\";s:1:\"5\";}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(172, 'recovery_mode_email_last_sent', '1616556998', 'yes'),
(204, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(208, 'category_children', 'a:2:{i:4;a:5:{i:0;i:5;i:1;i:6;i:2;i:7;i:3;i:8;i:4;i:9;}i:10;a:7:{i:0;i:11;i:1;i:12;i:2;i:13;i:3;i:14;i:4;i:15;i:5;i:16;i:6;i:17;}}', 'yes'),
(210, '_site_transient_timeout_browser_55ba2223e272e2c08e4c012f3913ee52', '1617202859', 'no'),
(211, '_site_transient_browser_55ba2223e272e2c08e4c012f3913ee52', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"89.0.4389.90\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(212, '_site_transient_timeout_php_check_90e738eca301c4d89366b1a4d15fe37f', '1617202860', 'no'),
(213, '_site_transient_php_check_90e738eca301c4d89366b1a4d15fe37f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(218, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1616642681', 'no'),
(219, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:1:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:66:\"Demo + Discussion group: Intro to Publishing with the Block Editor\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/276945655/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-03-24 07:00:00\";s:8:\"end_date\";s:19:\"2021-03-24 08:00:00\";s:20:\"start_unix_timestamp\";i:1616594400;s:18:\"end_unix_timestamp\";i:1616598000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}}}', 'no'),
(220, 'option_category', '15', 'yes'),
(221, 'option-category', '18', 'yes'),
(238, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":7,\"critical\":1}', 'yes'),
(243, '_site_transient_timeout_theme_roots', '1616662626', 'no'),
(244, '_site_transient_theme_roots', 'a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:4:\"vpba\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2021/03/banner_rcJ-b9I9hUy2oxYN.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1554;s:6:\"height\";i:224;s:4:\"file\";s:35:\"2021/03/banner_rcJ-b9I9hUy2oxYN.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"banner_rcJ-b9I9hUy2oxYN-300x43.png\";s:5:\"width\";i:300;s:6:\"height\";i:43;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"banner_rcJ-b9I9hUy2oxYN-1024x148.png\";s:5:\"width\";i:1024;s:6:\"height\";i:148;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"banner_rcJ-b9I9hUy2oxYN-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"banner_rcJ-b9I9hUy2oxYN-768x111.png\";s:5:\"width\";i:768;s:6:\"height\";i:111;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"banner_rcJ-b9I9hUy2oxYN-1536x221.png\";s:5:\"width\";i:1536;s:6:\"height\";i:221;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_wp_trash_meta_status', 'publish'),
(6, 6, '_wp_trash_meta_time', '1616559932'),
(7, 7, '_wp_trash_meta_status', 'publish'),
(8, 7, '_wp_trash_meta_time', '1616559963'),
(9, 8, '_menu_item_type', 'custom'),
(10, 8, '_menu_item_menu_item_parent', '0'),
(11, 8, '_menu_item_object_id', '8'),
(12, 8, '_menu_item_object', 'custom'),
(13, 8, '_menu_item_target', ''),
(14, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(15, 8, '_menu_item_xfn', ''),
(16, 8, '_menu_item_url', 'http://vpba.demo/'),
(17, 8, '_menu_item_orphaned', '1616564141'),
(18, 9, '_menu_item_type', 'post_type'),
(19, 9, '_menu_item_menu_item_parent', '0'),
(20, 9, '_menu_item_object_id', '2'),
(21, 9, '_menu_item_object', 'page'),
(22, 9, '_menu_item_target', ''),
(23, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 9, '_menu_item_xfn', ''),
(25, 9, '_menu_item_url', ''),
(26, 9, '_menu_item_orphaned', '1616564142'),
(27, 10, '_edit_lock', '1616564103:1'),
(28, 12, '_edit_lock', '1616564123:1'),
(31, 14, '_edit_lock', '1616564136:1'),
(34, 16, '_edit_lock', '1616564153:1'),
(37, 18, '_edit_lock', '1616564166:1'),
(40, 20, '_edit_lock', '1616564181:1'),
(43, 22, '_edit_lock', '1616564196:1'),
(46, 24, '_edit_lock', '1616564205:1'),
(49, 26, '_edit_lock', '1616564548:1'),
(59, 29, '_menu_item_type', 'post_type'),
(60, 29, '_menu_item_menu_item_parent', '0'),
(61, 29, '_menu_item_object_id', '10'),
(62, 29, '_menu_item_object', 'page'),
(63, 29, '_menu_item_target', ''),
(64, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 29, '_menu_item_xfn', ''),
(66, 29, '_menu_item_url', ''),
(67, 29, '_menu_item_orphaned', '1616564697'),
(68, 30, '_menu_item_type', 'post_type'),
(69, 30, '_menu_item_menu_item_parent', '0'),
(70, 30, '_menu_item_object_id', '26'),
(71, 30, '_menu_item_object', 'page'),
(72, 30, '_menu_item_target', ''),
(73, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 30, '_menu_item_xfn', ''),
(75, 30, '_menu_item_url', ''),
(76, 30, '_menu_item_orphaned', '1616564697'),
(77, 31, '_menu_item_type', 'post_type'),
(78, 31, '_menu_item_menu_item_parent', '0'),
(79, 31, '_menu_item_object_id', '2'),
(80, 31, '_menu_item_object', 'page'),
(81, 31, '_menu_item_target', ''),
(82, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 31, '_menu_item_xfn', ''),
(84, 31, '_menu_item_url', ''),
(85, 31, '_menu_item_orphaned', '1616564697'),
(86, 32, '_menu_item_type', 'custom'),
(87, 32, '_menu_item_menu_item_parent', '0'),
(88, 32, '_menu_item_object_id', '32'),
(89, 32, '_menu_item_object', 'custom'),
(90, 32, '_menu_item_target', ''),
(91, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 32, '_menu_item_xfn', ''),
(93, 32, '_menu_item_url', '#'),
(95, 33, '_edit_lock', '1616564724:1'),
(96, 35, '_edit_lock', '1616566263:1'),
(97, 37, '_edit_lock', '1616566276:1'),
(98, 39, '_edit_lock', '1616566286:1'),
(99, 41, '_edit_lock', '1616566297:1'),
(100, 43, '_edit_lock', '1616566310:1'),
(101, 45, '_edit_lock', '1616566577:1'),
(102, 24, '_wp_trash_meta_status', 'publish'),
(103, 24, '_wp_trash_meta_time', '1616566490'),
(104, 24, '_wp_desired_post_slug', 'hoi-vien-to-chuc'),
(105, 22, '_wp_trash_meta_status', 'publish'),
(106, 22, '_wp_trash_meta_time', '1616566492'),
(107, 22, '_wp_desired_post_slug', 'cac-chi-hoi'),
(108, 20, '_wp_trash_meta_status', 'publish'),
(109, 20, '_wp_trash_meta_time', '1616566496'),
(110, 20, '_wp_desired_post_slug', 'cac-to-chuc-thuoc-hoi'),
(111, 16, '_wp_trash_meta_status', 'publish'),
(112, 16, '_wp_trash_meta_time', '1616566498'),
(113, 16, '_wp_desired_post_slug', 'ban-thuong-vu-ban-thuong-truc-ban-kiem-tra-tw-hoi'),
(114, 18, '_wp_trash_meta_status', 'publish'),
(115, 18, '_wp_trash_meta_time', '1616566499'),
(116, 18, '_wp_desired_post_slug', 'ban-lanh-dao-hoi-dong-thi-dua-khen-thuong-tw-hoi'),
(117, 12, '_wp_trash_meta_status', 'publish'),
(118, 12, '_wp_trash_meta_time', '1616566502'),
(119, 12, '_wp_desired_post_slug', 'dieu-le-hoat-dong'),
(120, 14, '_wp_trash_meta_status', 'publish'),
(121, 14, '_wp_trash_meta_time', '1616566503'),
(122, 14, '_wp_desired_post_slug', 'ban-chap-hanh-tw-hoi'),
(123, 1, '_wp_trash_meta_status', 'publish'),
(124, 1, '_wp_trash_meta_time', '1616566504'),
(125, 1, '_wp_desired_post_slug', 'chao-moi-nguoi'),
(126, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(127, 48, '_menu_item_type', 'post_type'),
(128, 48, '_menu_item_menu_item_parent', '32'),
(129, 48, '_menu_item_object_id', '45'),
(130, 48, '_menu_item_object', 'page'),
(131, 48, '_menu_item_target', ''),
(132, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(133, 48, '_menu_item_xfn', ''),
(134, 48, '_menu_item_url', ''),
(136, 49, '_menu_item_type', 'post_type'),
(137, 49, '_menu_item_menu_item_parent', '32'),
(138, 49, '_menu_item_object_id', '43'),
(139, 49, '_menu_item_object', 'page'),
(140, 49, '_menu_item_target', ''),
(141, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(142, 49, '_menu_item_xfn', ''),
(143, 49, '_menu_item_url', ''),
(145, 50, '_menu_item_type', 'post_type'),
(146, 50, '_menu_item_menu_item_parent', '32'),
(147, 50, '_menu_item_object_id', '41'),
(148, 50, '_menu_item_object', 'page'),
(149, 50, '_menu_item_target', ''),
(150, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(151, 50, '_menu_item_xfn', ''),
(152, 50, '_menu_item_url', ''),
(154, 51, '_menu_item_type', 'post_type'),
(155, 51, '_menu_item_menu_item_parent', '32'),
(156, 51, '_menu_item_object_id', '39'),
(157, 51, '_menu_item_object', 'page'),
(158, 51, '_menu_item_target', ''),
(159, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(160, 51, '_menu_item_xfn', ''),
(161, 51, '_menu_item_url', ''),
(172, 53, '_menu_item_type', 'post_type'),
(173, 53, '_menu_item_menu_item_parent', '32'),
(174, 53, '_menu_item_object_id', '33'),
(175, 53, '_menu_item_object', 'page'),
(176, 53, '_menu_item_target', ''),
(177, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(178, 53, '_menu_item_xfn', ''),
(179, 53, '_menu_item_url', ''),
(181, 54, '_menu_item_type', 'post_type'),
(182, 54, '_menu_item_menu_item_parent', '32'),
(183, 54, '_menu_item_object_id', '10'),
(184, 54, '_menu_item_object', 'page'),
(185, 54, '_menu_item_target', ''),
(186, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(187, 54, '_menu_item_xfn', ''),
(188, 54, '_menu_item_url', ''),
(190, 55, '_edit_lock', '1616566803:1'),
(191, 57, '_menu_item_type', 'post_type'),
(192, 57, '_menu_item_menu_item_parent', '32'),
(193, 57, '_menu_item_object_id', '55'),
(194, 57, '_menu_item_object', 'page'),
(195, 57, '_menu_item_target', ''),
(196, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(197, 57, '_menu_item_xfn', ''),
(198, 57, '_menu_item_url', ''),
(200, 58, '_menu_item_type', 'custom'),
(201, 58, '_menu_item_menu_item_parent', '32'),
(202, 58, '_menu_item_object_id', '58'),
(203, 58, '_menu_item_object', 'custom'),
(204, 58, '_menu_item_target', ''),
(205, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(206, 58, '_menu_item_xfn', ''),
(207, 58, '_menu_item_url', '#'),
(209, 59, '_edit_lock', '1616566804:1'),
(210, 61, '_edit_lock', '1616566815:1'),
(211, 63, '_edit_lock', '1616568468:1'),
(212, 65, '_menu_item_type', 'post_type'),
(213, 65, '_menu_item_menu_item_parent', '58'),
(214, 65, '_menu_item_object_id', '59'),
(215, 65, '_menu_item_object', 'page'),
(216, 65, '_menu_item_target', ''),
(217, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(218, 65, '_menu_item_xfn', ''),
(219, 65, '_menu_item_url', ''),
(221, 66, '_menu_item_type', 'post_type'),
(222, 66, '_menu_item_menu_item_parent', '58'),
(223, 66, '_menu_item_object_id', '61'),
(224, 66, '_menu_item_object', 'page'),
(225, 66, '_menu_item_target', ''),
(226, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(227, 66, '_menu_item_xfn', ''),
(228, 66, '_menu_item_url', ''),
(230, 67, '_menu_item_type', 'post_type'),
(231, 67, '_menu_item_menu_item_parent', '58'),
(232, 67, '_menu_item_object_id', '63'),
(233, 67, '_menu_item_object', 'page'),
(234, 67, '_menu_item_target', ''),
(235, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(236, 67, '_menu_item_xfn', ''),
(237, 67, '_menu_item_url', ''),
(239, 68, '_menu_item_type', 'taxonomy'),
(240, 68, '_menu_item_menu_item_parent', '0'),
(241, 68, '_menu_item_object_id', '2'),
(242, 68, '_menu_item_object', 'category'),
(243, 68, '_menu_item_target', ''),
(244, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(245, 68, '_menu_item_xfn', ''),
(246, 68, '_menu_item_url', ''),
(248, 69, '_menu_item_type', 'taxonomy'),
(249, 69, '_menu_item_menu_item_parent', '68'),
(250, 69, '_menu_item_object_id', '3'),
(251, 69, '_menu_item_object', 'category'),
(252, 69, '_menu_item_target', ''),
(253, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(254, 69, '_menu_item_xfn', ''),
(255, 69, '_menu_item_url', ''),
(257, 70, '_menu_item_type', 'custom'),
(258, 70, '_menu_item_menu_item_parent', '68'),
(259, 70, '_menu_item_object_id', '70'),
(260, 70, '_menu_item_object', 'custom'),
(261, 70, '_menu_item_target', ''),
(262, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(263, 70, '_menu_item_xfn', ''),
(264, 70, '_menu_item_url', '#'),
(266, 71, '_menu_item_type', 'taxonomy'),
(267, 71, '_menu_item_menu_item_parent', '0'),
(268, 71, '_menu_item_object_id', '4'),
(269, 71, '_menu_item_object', 'category'),
(270, 71, '_menu_item_target', ''),
(271, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(272, 71, '_menu_item_xfn', ''),
(273, 71, '_menu_item_url', ''),
(275, 72, '_menu_item_type', 'taxonomy'),
(276, 72, '_menu_item_menu_item_parent', '71'),
(277, 72, '_menu_item_object_id', '9'),
(278, 72, '_menu_item_object', 'category'),
(279, 72, '_menu_item_target', ''),
(280, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(281, 72, '_menu_item_xfn', ''),
(282, 72, '_menu_item_url', ''),
(284, 73, '_menu_item_type', 'taxonomy'),
(285, 73, '_menu_item_menu_item_parent', '71'),
(286, 73, '_menu_item_object_id', '8'),
(287, 73, '_menu_item_object', 'category'),
(288, 73, '_menu_item_target', ''),
(289, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(290, 73, '_menu_item_xfn', ''),
(291, 73, '_menu_item_url', ''),
(293, 74, '_menu_item_type', 'taxonomy'),
(294, 74, '_menu_item_menu_item_parent', '71'),
(295, 74, '_menu_item_object_id', '6'),
(296, 74, '_menu_item_object', 'category'),
(297, 74, '_menu_item_target', ''),
(298, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(299, 74, '_menu_item_xfn', ''),
(300, 74, '_menu_item_url', ''),
(302, 75, '_menu_item_type', 'taxonomy'),
(303, 75, '_menu_item_menu_item_parent', '71'),
(304, 75, '_menu_item_object_id', '7'),
(305, 75, '_menu_item_object', 'category'),
(306, 75, '_menu_item_target', ''),
(307, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(308, 75, '_menu_item_xfn', ''),
(309, 75, '_menu_item_url', ''),
(311, 76, '_menu_item_type', 'taxonomy'),
(312, 76, '_menu_item_menu_item_parent', '71'),
(313, 76, '_menu_item_object_id', '5'),
(314, 76, '_menu_item_object', 'category'),
(315, 76, '_menu_item_target', ''),
(316, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(317, 76, '_menu_item_xfn', ''),
(318, 76, '_menu_item_url', ''),
(320, 77, '_menu_item_type', 'taxonomy'),
(321, 77, '_menu_item_menu_item_parent', '0'),
(322, 77, '_menu_item_object_id', '10'),
(323, 77, '_menu_item_object', 'category'),
(324, 77, '_menu_item_target', ''),
(325, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(326, 77, '_menu_item_xfn', ''),
(327, 77, '_menu_item_url', ''),
(329, 78, '_menu_item_type', 'taxonomy'),
(330, 78, '_menu_item_menu_item_parent', '77'),
(331, 78, '_menu_item_object_id', '15'),
(332, 78, '_menu_item_object', 'category'),
(333, 78, '_menu_item_target', ''),
(334, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(335, 78, '_menu_item_xfn', ''),
(336, 78, '_menu_item_url', ''),
(338, 79, '_menu_item_type', 'taxonomy'),
(339, 79, '_menu_item_menu_item_parent', '77'),
(340, 79, '_menu_item_object_id', '16'),
(341, 79, '_menu_item_object', 'category'),
(342, 79, '_menu_item_target', ''),
(343, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(344, 79, '_menu_item_xfn', ''),
(345, 79, '_menu_item_url', ''),
(347, 80, '_menu_item_type', 'taxonomy'),
(348, 80, '_menu_item_menu_item_parent', '77'),
(349, 80, '_menu_item_object_id', '11'),
(350, 80, '_menu_item_object', 'category'),
(351, 80, '_menu_item_target', ''),
(352, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(353, 80, '_menu_item_xfn', ''),
(354, 80, '_menu_item_url', ''),
(356, 81, '_menu_item_type', 'taxonomy'),
(357, 81, '_menu_item_menu_item_parent', '77'),
(358, 81, '_menu_item_object_id', '12'),
(359, 81, '_menu_item_object', 'category'),
(360, 81, '_menu_item_target', ''),
(361, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(362, 81, '_menu_item_xfn', ''),
(363, 81, '_menu_item_url', ''),
(365, 82, '_menu_item_type', 'taxonomy'),
(366, 82, '_menu_item_menu_item_parent', '77'),
(367, 82, '_menu_item_object_id', '14'),
(368, 82, '_menu_item_object', 'category'),
(369, 82, '_menu_item_target', ''),
(370, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(371, 82, '_menu_item_xfn', ''),
(372, 82, '_menu_item_url', ''),
(374, 83, '_menu_item_type', 'taxonomy'),
(375, 83, '_menu_item_menu_item_parent', '77'),
(376, 83, '_menu_item_object_id', '17'),
(377, 83, '_menu_item_object', 'category'),
(378, 83, '_menu_item_target', ''),
(379, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(380, 83, '_menu_item_xfn', ''),
(381, 83, '_menu_item_url', ''),
(383, 84, '_menu_item_type', 'taxonomy'),
(384, 84, '_menu_item_menu_item_parent', '77'),
(385, 84, '_menu_item_object_id', '13'),
(386, 84, '_menu_item_object', 'category'),
(387, 84, '_menu_item_target', ''),
(388, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(389, 84, '_menu_item_xfn', ''),
(390, 84, '_menu_item_url', ''),
(392, 85, '_menu_item_type', 'taxonomy'),
(393, 85, '_menu_item_menu_item_parent', '0'),
(394, 85, '_menu_item_object_id', '18'),
(395, 85, '_menu_item_object', 'category'),
(396, 85, '_menu_item_target', ''),
(397, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(398, 85, '_menu_item_xfn', ''),
(399, 85, '_menu_item_url', ''),
(401, 86, '_menu_item_type', 'post_type'),
(402, 86, '_menu_item_menu_item_parent', '0'),
(403, 86, '_menu_item_object_id', '26'),
(404, 86, '_menu_item_object', 'page'),
(405, 86, '_menu_item_target', ''),
(406, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(407, 86, '_menu_item_xfn', ''),
(408, 86, '_menu_item_url', ''),
(410, 87, '_menu_item_type', 'custom'),
(411, 87, '_menu_item_menu_item_parent', '0'),
(412, 87, '_menu_item_object_id', '87'),
(413, 87, '_menu_item_object', 'custom'),
(414, 87, '_menu_item_target', ''),
(415, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(416, 87, '_menu_item_xfn', ''),
(417, 87, '_menu_item_url', '#'),
(419, 88, '_edit_lock', '1616567305:1'),
(420, 90, '_edit_lock', '1616567324:1'),
(421, 92, '_edit_lock', '1616568471:1'),
(422, 94, '_menu_item_type', 'taxonomy'),
(423, 94, '_menu_item_menu_item_parent', '87'),
(424, 94, '_menu_item_object_id', '20'),
(425, 94, '_menu_item_object', 'category'),
(426, 94, '_menu_item_target', ''),
(427, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(428, 94, '_menu_item_xfn', ''),
(429, 94, '_menu_item_url', ''),
(431, 95, '_menu_item_type', 'post_type'),
(432, 95, '_menu_item_menu_item_parent', '87'),
(433, 95, '_menu_item_object_id', '92'),
(434, 95, '_menu_item_object', 'page'),
(435, 95, '_menu_item_target', ''),
(436, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(437, 95, '_menu_item_xfn', ''),
(438, 95, '_menu_item_url', ''),
(440, 96, '_menu_item_type', 'post_type'),
(441, 96, '_menu_item_menu_item_parent', '87'),
(442, 96, '_menu_item_object_id', '90'),
(443, 96, '_menu_item_object', 'page'),
(444, 96, '_menu_item_target', ''),
(445, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(446, 96, '_menu_item_xfn', ''),
(447, 96, '_menu_item_url', ''),
(449, 97, '_menu_item_type', 'post_type'),
(450, 97, '_menu_item_menu_item_parent', '87'),
(451, 97, '_menu_item_object_id', '88'),
(452, 97, '_menu_item_object', 'page'),
(453, 97, '_menu_item_target', ''),
(454, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(455, 97, '_menu_item_xfn', ''),
(456, 97, '_menu_item_url', ''),
(458, 98, '_menu_item_type', 'custom'),
(459, 98, '_menu_item_menu_item_parent', '0'),
(460, 98, '_menu_item_object_id', '98'),
(461, 98, '_menu_item_object', 'custom'),
(462, 98, '_menu_item_target', ''),
(463, 98, '_menu_item_classes', 'a:1:{i:0;s:9:\"icon-home\";}'),
(464, 98, '_menu_item_xfn', ''),
(465, 98, '_menu_item_url', '#'),
(466, 99, '_edit_lock', '1616599472:1'),
(467, 99, '_customize_restore_dismissed', '1'),
(468, 100, '_wp_trash_meta_status', 'publish'),
(469, 100, '_wp_trash_meta_time', '1616600332'),
(470, 101, '_wp_trash_meta_status', 'publish'),
(471, 101, '_wp_trash_meta_time', '1616600599'),
(472, 102, '_edit_lock', '1616600694:1'),
(473, 102, '_customize_restore_dismissed', '1'),
(474, 103, '_edit_lock', '1616600883:1'),
(475, 103, '_customize_restore_dismissed', '1'),
(476, 104, '_edit_lock', '1616600927:1'),
(477, 104, '_customize_restore_dismissed', '1'),
(478, 105, '_wp_trash_meta_status', 'publish'),
(479, 105, '_wp_trash_meta_time', '1616601020'),
(480, 106, '_edit_lock', '1616601165:1'),
(481, 106, '_customize_restore_dismissed', '1'),
(482, 107, '_edit_lock', '1616601319:1'),
(483, 107, '_customize_restore_dismissed', '1'),
(484, 108, '_edit_lock', '1616601377:1'),
(485, 108, '_customize_restore_dismissed', '1'),
(486, 109, '_edit_lock', '1616601844:1'),
(487, 110, '_edit_lock', '1616601414:1'),
(490, 110, '_wp_trash_meta_status', 'publish'),
(491, 110, '_wp_trash_meta_time', '1616601560'),
(492, 110, '_wp_desired_post_slug', 'adasd'),
(493, 112, '_edit_lock', '1616601432:1'),
(494, 113, '_edit_lock', '1616661196:1'),
(495, 114, '_edit_lock', '1616661170:1'),
(496, 115, '_edit_lock', '1616661161:1'),
(497, 116, '_edit_lock', '1616661016:1'),
(502, 118, '_edit_lock', '1616661188:1'),
(503, 119, '_edit_lock', '1616661179:1'),
(514, 109, '_wp_trash_meta_status', 'publish'),
(515, 109, '_wp_trash_meta_time', '1616601876'),
(516, 125, '_wp_trash_meta_status', 'publish'),
(517, 125, '_wp_trash_meta_time', '1616640977'),
(518, 127, '_wp_attached_file', '2021/03/chinhphu_6Wd6eRW7qUaE6zS1_png.jpg'),
(519, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:41:\"2021/03/chinhphu_6Wd6eRW7qUaE6zS1_png.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"chinhphu_6Wd6eRW7qUaE6zS1_png-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"chinhphu_6Wd6eRW7qUaE6zS1_png-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(520, 128, '_wp_attached_file', '2021/03/golf_7LSrw9nUyEi9z5Ba_png.jpg'),
(521, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:312;s:4:\"file\";s:37:\"2021/03/golf_7LSrw9nUyEi9z5Ba_png.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"golf_7LSrw9nUyEi9z5Ba_png-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"golf_7LSrw9nUyEi9z5Ba_png-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(522, 129, '_wp_attached_file', '2021/03/hoi_xZrEzjtt0Ee9NSO3_png.jpg'),
(523, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:605;s:6:\"height\";i:365;s:4:\"file\";s:36:\"2021/03/hoi_xZrEzjtt0Ee9NSO3_png.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"hoi_xZrEzjtt0Ee9NSO3_png-300x181.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"hoi_xZrEzjtt0Ee9NSO3_png-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(524, 130, '_wp_attached_file', '2021/03/khdt_iZjMHFaxqEuthqW5_png.jpg'),
(525, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:429;s:4:\"file\";s:37:\"2021/03/khdt_iZjMHFaxqEuthqW5_png.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"khdt_iZjMHFaxqEuthqW5_png-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"khdt_iZjMHFaxqEuthqW5_png-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(526, 131, '_wp_attached_file', '2021/03/npt_BFLNwQ3vgk2k5YN4_png.jpg'),
(527, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:413;s:4:\"file\";s:36:\"2021/03/npt_BFLNwQ3vgk2k5YN4_png.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"npt_BFLNwQ3vgk2k5YN4_png-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"npt_BFLNwQ3vgk2k5YN4_png-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(528, 132, '_wp_attached_file', '2021/03/nxp_QfIiNbMFuECjYvCq_png.jpg'),
(529, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:401;s:4:\"file\";s:36:\"2021/03/nxp_QfIiNbMFuECjYvCq_png.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"nxp_QfIiNbMFuECjYvCq_png-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"nxp_QfIiNbMFuECjYvCq_png-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(530, 133, '_wp_attached_file', '2021/03/phuc_IEKJofkgK0uqRGZ2_png.jpg'),
(531, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:469;s:4:\"file\";s:37:\"2021/03/phuc_IEKJofkgK0uqRGZ2_png.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"phuc_IEKJofkgK0uqRGZ2_png-300x220.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"phuc_IEKJofkgK0uqRGZ2_png-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(534, 116, '_thumbnail_id', '133'),
(537, 115, '_thumbnail_id', '132'),
(540, 114, '_thumbnail_id', '131'),
(543, 119, '_thumbnail_id', '130'),
(546, 118, '_thumbnail_id', '129'),
(549, 113, '_thumbnail_id', '128');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-03-24 03:01:16', '2021-03-24 03:01:16', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'trash', 'open', 'open', '', 'chao-moi-nguoi__trashed', '', '', '2021-03-24 06:15:04', '2021-03-24 06:15:04', '', 0, 'http://vpba.demo/?p=1', 0, 'post', '', 1),
(2, 1, '2021-03-24 03:01:16', '2021-03-24 03:01:16', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://vpba.demo/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2021-03-24 03:01:16', '2021-03-24 03:01:16', '', 0, 'http://vpba.demo/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-03-24 03:01:16', '2021-03-24 03:01:16', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Địa chỉ website là: http://vpba.demo.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Bình luận</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Nội dung nhúng từ website khác</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph -->', 'Chính sách bảo mật', '', 'draft', 'closed', 'open', '', 'chinh-sach-bao-mat', '', '', '2021-03-24 03:01:16', '2021-03-24 03:01:16', '', 0, 'http://vpba.demo/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-03-24 03:01:28', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-03-24 03:01:28', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=4', 0, 'post', '', 0),
(5, 1, '2021-03-24 04:25:21', '2021-03-24 04:25:21', '', 'banner_rcJ-b9I9hUy2oxYN', '', 'inherit', 'open', 'closed', '', 'banner_rcj-b9i9huy2oxyn', '', '', '2021-03-24 04:25:21', '2021-03-24 04:25:21', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/banner_rcJ-b9I9hUy2oxYN.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2021-03-24 04:25:32', '2021-03-24 04:25:32', '{\n    \"vpba::banner-header\": {\n        \"value\": \"http://vpba.demo/wp-content/uploads/2021/03/banner_rcJ-b9I9hUy2oxYN.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-24 04:25:32\"\n    },\n    \"vpba::link_banner\": {\n        \"value\": \"http://vpba.demo/\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-24 04:25:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '445c759f-d143-45aa-bee4-51edc95692d1', '', '', '2021-03-24 04:25:32', '2021-03-24 04:25:32', '', 0, 'http://vpba.demo/2021/03/24/445c759f-d143-45aa-bee4-51edc95692d1/', 0, 'customize_changeset', '', 0),
(7, 1, '2021-03-24 04:26:03', '2021-03-24 04:26:03', '{\n    \"vpba::link-banner\": {\n        \"value\": \"http://vpba.demo/\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-24 04:26:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '248a945a-8ec5-4699-8e90-a1ca20280055', '', '', '2021-03-24 04:26:03', '2021-03-24 04:26:03', '', 0, 'http://vpba.demo/2021/03/24/248a945a-8ec5-4699-8e90-a1ca20280055/', 0, 'customize_changeset', '', 0),
(8, 1, '2021-03-24 05:35:41', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-24 05:35:41', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2021-03-24 05:35:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-24 05:35:41', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2021-03-24 05:37:13', '2021-03-24 05:37:13', '', 'Giới thiệu VPBA', '', 'publish', 'closed', 'closed', '', 'gioi-thieu-vpba', '', '', '2021-03-24 05:37:13', '2021-03-24 05:37:13', '', 0, 'http://vpba.demo/?page_id=10', 0, 'page', '', 0),
(11, 1, '2021-03-24 05:37:13', '2021-03-24 05:37:13', '', 'Giới thiệu VPBA', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-03-24 05:37:13', '2021-03-24 05:37:13', '', 10, 'http://vpba.demo/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-03-24 05:37:37', '2021-03-24 05:37:37', '', 'Điều lệ hoạt động', '', 'trash', 'open', 'open', '', 'dieu-le-hoat-dong__trashed', '', '', '2021-03-24 06:15:02', '2021-03-24 06:15:02', '', 0, 'http://vpba.demo/?p=12', 0, 'post', '', 0),
(13, 1, '2021-03-24 05:37:37', '2021-03-24 05:37:37', '', 'Điều lệ hoạt động', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-03-24 05:37:37', '2021-03-24 05:37:37', '', 12, 'http://vpba.demo/?p=13', 0, 'revision', '', 0),
(14, 1, '2021-03-24 05:37:51', '2021-03-24 05:37:51', '', 'Ban chấp hành TW Hội', '', 'trash', 'open', 'open', '', 'ban-chap-hanh-tw-hoi__trashed', '', '', '2021-03-24 06:15:03', '2021-03-24 06:15:03', '', 0, 'http://vpba.demo/?p=14', 0, 'post', '', 0),
(15, 1, '2021-03-24 05:37:51', '2021-03-24 05:37:51', '', 'Ban chấp hành TW Hội', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-03-24 05:37:51', '2021-03-24 05:37:51', '', 14, 'http://vpba.demo/?p=15', 0, 'revision', '', 0),
(16, 1, '2021-03-24 05:38:05', '2021-03-24 05:38:05', '', 'Ban thường vụ - Ban thường trực - Ban kiểm tra TW Hội', '', 'trash', 'open', 'open', '', 'ban-thuong-vu-ban-thuong-truc-ban-kiem-tra-tw-hoi__trashed', '', '', '2021-03-24 06:14:58', '2021-03-24 06:14:58', '', 0, 'http://vpba.demo/?p=16', 0, 'post', '', 0),
(17, 1, '2021-03-24 05:38:05', '2021-03-24 05:38:05', '', 'Ban thường vụ - Ban thường trực - Ban kiểm tra TW Hội', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-03-24 05:38:05', '2021-03-24 05:38:05', '', 16, 'http://vpba.demo/?p=17', 0, 'revision', '', 0),
(18, 1, '2021-03-24 05:38:22', '2021-03-24 05:38:22', '', 'Ban lãnh đạo - Hội đồng thi đua khen thưởng TW Hội', '', 'trash', 'open', 'open', '', 'ban-lanh-dao-hoi-dong-thi-dua-khen-thuong-tw-hoi__trashed', '', '', '2021-03-24 06:14:59', '2021-03-24 06:14:59', '', 0, 'http://vpba.demo/?p=18', 0, 'post', '', 0),
(19, 1, '2021-03-24 05:38:22', '2021-03-24 05:38:22', '', 'Ban lãnh đạo - Hội đồng thi đua khen thưởng TW Hội', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-03-24 05:38:22', '2021-03-24 05:38:22', '', 18, 'http://vpba.demo/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-03-24 05:38:35', '2021-03-24 05:38:35', '', 'Các Tổ chức thuộc Hội', '', 'trash', 'open', 'open', '', 'cac-to-chuc-thuoc-hoi__trashed', '', '', '2021-03-24 06:14:56', '2021-03-24 06:14:56', '', 0, 'http://vpba.demo/?p=20', 0, 'post', '', 0),
(21, 1, '2021-03-24 05:38:35', '2021-03-24 05:38:35', '', 'Các Tổ chức thuộc Hội', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-03-24 05:38:35', '2021-03-24 05:38:35', '', 20, 'http://vpba.demo/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-03-24 05:38:50', '2021-03-24 05:38:50', '', 'Các Chi hội', '', 'trash', 'open', 'open', '', 'cac-chi-hoi__trashed', '', '', '2021-03-24 06:14:52', '2021-03-24 06:14:52', '', 0, 'http://vpba.demo/?p=22', 0, 'post', '', 0),
(23, 1, '2021-03-24 05:38:50', '2021-03-24 05:38:50', '', 'Các Chi hội', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-03-24 05:38:50', '2021-03-24 05:38:50', '', 22, 'http://vpba.demo/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-03-24 05:39:04', '2021-03-24 05:39:04', '', 'Hội viên tổ chức', '', 'trash', 'open', 'open', '', 'hoi-vien-to-chuc__trashed', '', '', '2021-03-24 06:14:50', '2021-03-24 06:14:50', '', 0, 'http://vpba.demo/?p=24', 0, 'post', '', 0),
(25, 1, '2021-03-24 05:39:04', '2021-03-24 05:39:04', '', 'Hội viên tổ chức', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-03-24 05:39:04', '2021-03-24 05:39:04', '', 24, 'http://vpba.demo/?p=25', 0, 'revision', '', 0),
(26, 1, '2021-03-24 05:44:50', '2021-03-24 05:44:50', '', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2021-03-24 05:44:50', '2021-03-24 05:44:50', '', 0, 'http://vpba.demo/?page_id=26', 0, 'page', '', 0),
(27, 1, '2021-03-24 05:44:50', '2021-03-24 05:44:50', '', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-03-24 05:44:50', '2021-03-24 05:44:50', '', 26, 'http://vpba.demo/?p=27', 0, 'revision', '', 0),
(29, 1, '2021-03-24 05:44:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-24 05:44:57', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2021-03-24 05:44:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-24 05:44:57', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2021-03-24 05:44:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-24 05:44:57', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2021-03-24 06:48:50', '2021-03-24 05:46:02', '', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2021-03-24 06:48:50', '2021-03-24 06:48:50', '', 0, 'http://vpba.demo/?p=32', 2, 'nav_menu_item', '', 0),
(33, 1, '2021-03-24 05:47:28', '2021-03-24 05:47:28', '', 'Hội viên tổ chức', '', 'publish', 'closed', 'closed', '', 'hoi-vien-to-chuc', '', '', '2021-03-24 05:47:28', '2021-03-24 05:47:28', '', 0, 'http://vpba.demo/?page_id=33', 0, 'page', '', 0),
(34, 1, '2021-03-24 05:47:28', '2021-03-24 05:47:28', '', 'Hội viên tổ chức', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-03-24 05:47:28', '2021-03-24 05:47:28', '', 33, 'http://vpba.demo/?p=34', 0, 'revision', '', 0),
(35, 1, '2021-03-24 06:13:24', '2021-03-24 06:13:24', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td><strong><a href=\"http://vpba.demo/wp-admin/post.php?post=22&amp;action=edit\"><br>Các Chi hội</a></strong></td></tr></tbody></table></figure>\n<!-- /wp:table -->', '', '', 'publish', 'closed', 'closed', '', '35-2', '', '', '2021-03-24 06:13:24', '2021-03-24 06:13:24', '', 0, 'http://vpba.demo/?page_id=35', 0, 'page', '', 0),
(36, 1, '2021-03-24 06:13:24', '2021-03-24 06:13:24', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td><strong><a href=\"http://vpba.demo/wp-admin/post.php?post=22&amp;action=edit\"><br>Các Chi hội</a></strong></td></tr></tbody></table></figure>\n<!-- /wp:table -->', '', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2021-03-24 06:13:24', '2021-03-24 06:13:24', '', 35, 'http://vpba.demo/?p=36', 0, 'revision', '', 0),
(37, 1, '2021-03-24 06:13:35', '2021-03-24 06:13:35', '', 'Các Tổ chức thuộc Hội', '', 'publish', 'closed', 'closed', '', 'cac-to-chuc-thuoc-hoi', '', '', '2021-03-24 06:13:35', '2021-03-24 06:13:35', '', 0, 'http://vpba.demo/?page_id=37', 0, 'page', '', 0),
(38, 1, '2021-03-24 06:13:35', '2021-03-24 06:13:35', '', 'Các Tổ chức thuộc Hội', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-03-24 06:13:35', '2021-03-24 06:13:35', '', 37, 'http://vpba.demo/?p=38', 0, 'revision', '', 0),
(39, 1, '2021-03-24 06:13:48', '2021-03-24 06:13:48', '', 'Ban lãnh đạo – Hội đồng thi đua khen thưởng TW Hội', '', 'publish', 'closed', 'closed', '', 'ban-lanh-dao-hoi-dong-thi-dua-khen-thuong-tw-hoi', '', '', '2021-03-24 06:13:48', '2021-03-24 06:13:48', '', 0, 'http://vpba.demo/?page_id=39', 0, 'page', '', 0),
(40, 1, '2021-03-24 06:13:48', '2021-03-24 06:13:48', '', 'Ban lãnh đạo – Hội đồng thi đua khen thưởng TW Hội', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2021-03-24 06:13:48', '2021-03-24 06:13:48', '', 39, 'http://vpba.demo/?p=40', 0, 'revision', '', 0),
(41, 1, '2021-03-24 06:13:59', '2021-03-24 06:13:59', '', 'Ban thường vụ – Ban thường trực – Ban kiểm tra TW Hội', '', 'publish', 'closed', 'closed', '', 'ban-thuong-vu-ban-thuong-truc-ban-kiem-tra-tw-hoi', '', '', '2021-03-24 06:13:59', '2021-03-24 06:13:59', '', 0, 'http://vpba.demo/?page_id=41', 0, 'page', '', 0),
(42, 1, '2021-03-24 06:13:59', '2021-03-24 06:13:59', '', 'Ban thường vụ – Ban thường trực – Ban kiểm tra TW Hội', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-03-24 06:13:59', '2021-03-24 06:13:59', '', 41, 'http://vpba.demo/?p=42', 0, 'revision', '', 0),
(43, 1, '2021-03-24 06:14:08', '2021-03-24 06:14:08', '', 'Ban chấp hành TW Hội', '', 'publish', 'closed', 'closed', '', 'ban-chap-hanh-tw-hoi', '', '', '2021-03-24 06:14:08', '2021-03-24 06:14:08', '', 0, 'http://vpba.demo/?page_id=43', 0, 'page', '', 0),
(44, 1, '2021-03-24 06:14:08', '2021-03-24 06:14:08', '', 'Ban chấp hành TW Hội', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2021-03-24 06:14:08', '2021-03-24 06:14:08', '', 43, 'http://vpba.demo/?p=44', 0, 'revision', '', 0),
(45, 1, '2021-03-24 06:14:48', '2021-03-24 06:14:48', '', 'Điều lệ hoạt động', '', 'publish', 'closed', 'closed', '', 'dieu-le-hoat-dong', '', '', '2021-03-24 06:14:48', '2021-03-24 06:14:48', '', 0, 'http://vpba.demo/?page_id=45', 0, 'page', '', 0),
(46, 1, '2021-03-24 06:14:48', '2021-03-24 06:14:48', '', 'Điều lệ hoạt động', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2021-03-24 06:14:48', '2021-03-24 06:14:48', '', 45, 'http://vpba.demo/?p=46', 0, 'revision', '', 0),
(47, 1, '2021-03-24 06:15:04', '2021-03-24 06:15:04', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-03-24 06:15:04', '2021-03-24 06:15:04', '', 1, 'http://vpba.demo/?p=47', 0, 'revision', '', 0),
(48, 1, '2021-03-24 06:48:50', '2021-03-24 06:17:33', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2021-03-24 06:48:50', '2021-03-24 06:48:50', '', 0, 'http://vpba.demo/?p=48', 4, 'nav_menu_item', '', 0),
(49, 1, '2021-03-24 06:48:50', '2021-03-24 06:17:33', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2021-03-24 06:48:50', '2021-03-24 06:48:50', '', 0, 'http://vpba.demo/?p=49', 5, 'nav_menu_item', '', 0),
(50, 1, '2021-03-24 06:48:50', '2021-03-24 06:17:33', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2021-03-24 06:48:50', '2021-03-24 06:48:50', '', 0, 'http://vpba.demo/?p=50', 6, 'nav_menu_item', '', 0),
(51, 1, '2021-03-24 06:48:50', '2021-03-24 06:17:33', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2021-03-24 06:48:50', '2021-03-24 06:48:50', '', 0, 'http://vpba.demo/?p=51', 7, 'nav_menu_item', '', 0),
(53, 1, '2021-03-24 06:48:51', '2021-03-24 06:17:33', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=53', 13, 'nav_menu_item', '', 0),
(54, 1, '2021-03-24 06:48:50', '2021-03-24 06:17:33', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2021-03-24 06:48:50', '2021-03-24 06:48:50', '', 0, 'http://vpba.demo/?p=54', 3, 'nav_menu_item', '', 0),
(55, 1, '2021-03-24 06:18:03', '2021-03-24 06:18:03', '', 'Các chi hội', '', 'publish', 'closed', 'closed', '', 'cac-chi-hoi', '', '', '2021-03-24 06:18:03', '2021-03-24 06:18:03', '', 0, 'http://vpba.demo/?page_id=55', 0, 'page', '', 0),
(56, 1, '2021-03-24 06:18:03', '2021-03-24 06:18:03', '', 'Các chi hội', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2021-03-24 06:18:03', '2021-03-24 06:18:03', '', 55, 'http://vpba.demo/?p=56', 0, 'revision', '', 0),
(57, 1, '2021-03-24 06:48:51', '2021-03-24 06:18:22', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=57', 12, 'nav_menu_item', '', 0),
(58, 1, '2021-03-24 06:48:50', '2021-03-24 06:21:36', '', 'Các tổ chức thuộc hội', '', 'publish', 'closed', 'closed', '', 'cac-to-chuc-thuoc-hoi', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=58', 8, 'nav_menu_item', '', 0),
(59, 1, '2021-03-24 06:22:25', '2021-03-24 06:22:25', '', 'Văn phòng đại diện', '', 'publish', 'closed', 'closed', '', 'van-phong-dai-dien', '', '', '2021-03-24 06:22:25', '2021-03-24 06:22:25', '', 0, 'http://vpba.demo/?page_id=59', 0, 'page', '', 0),
(60, 1, '2021-03-24 06:22:25', '2021-03-24 06:22:25', '', 'Văn phòng đại diện', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2021-03-24 06:22:25', '2021-03-24 06:22:25', '', 59, 'http://vpba.demo/?p=60', 0, 'revision', '', 0),
(61, 1, '2021-03-24 06:22:36', '2021-03-24 06:22:36', '', 'Tạp chí', '', 'publish', 'closed', 'closed', '', 'tap-chi', '', '', '2021-03-24 06:22:36', '2021-03-24 06:22:36', '', 0, 'http://vpba.demo/?page_id=61', 0, 'page', '', 0),
(62, 1, '2021-03-24 06:22:36', '2021-03-24 06:22:36', '', 'Tạp chí', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2021-03-24 06:22:36', '2021-03-24 06:22:36', '', 61, 'http://vpba.demo/?p=62', 0, 'revision', '', 0),
(63, 1, '2021-03-24 06:22:51', '2021-03-24 06:22:51', '', 'Các viện, Trung tâm', '', 'publish', 'closed', 'closed', '', 'cac-vien-trung-tam', '', '', '2021-03-24 06:22:51', '2021-03-24 06:22:51', '', 0, 'http://vpba.demo/?page_id=63', 0, 'page', '', 0),
(64, 1, '2021-03-24 06:22:51', '2021-03-24 06:22:51', '', 'Các viện, Trung tâm', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2021-03-24 06:22:51', '2021-03-24 06:22:51', '', 63, 'http://vpba.demo/?p=64', 0, 'revision', '', 0),
(65, 1, '2021-03-24 06:48:51', '2021-03-24 06:23:34', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=65', 9, 'nav_menu_item', '', 0),
(66, 1, '2021-03-24 06:48:51', '2021-03-24 06:23:34', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=66', 10, 'nav_menu_item', '', 0),
(67, 1, '2021-03-24 06:48:51', '2021-03-24 06:23:34', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=67', 11, 'nav_menu_item', '', 0),
(68, 1, '2021-03-24 06:48:51', '2021-03-24 06:27:19', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=68', 19, 'nav_menu_item', '', 0),
(69, 1, '2021-03-24 06:48:51', '2021-03-24 06:27:19', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=69', 21, 'nav_menu_item', '', 0),
(70, 1, '2021-03-24 06:48:51', '2021-03-24 06:27:19', '', 'Hoạt động VPBA', '', 'publish', 'closed', 'closed', '', 'hoat-dong-vpba', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=70', 20, 'nav_menu_item', '', 0),
(71, 1, '2021-03-24 06:48:51', '2021-03-24 06:27:43', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=71', 22, 'nav_menu_item', '', 0),
(72, 1, '2021-03-24 06:48:51', '2021-03-24 06:27:43', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 4, 'http://vpba.demo/?p=72', 23, 'nav_menu_item', '', 0),
(73, 1, '2021-03-24 06:48:51', '2021-03-24 06:27:43', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 4, 'http://vpba.demo/?p=73', 24, 'nav_menu_item', '', 0),
(74, 1, '2021-03-24 06:48:51', '2021-03-24 06:27:43', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 4, 'http://vpba.demo/?p=74', 25, 'nav_menu_item', '', 0),
(75, 1, '2021-03-24 06:48:51', '2021-03-24 06:27:43', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 4, 'http://vpba.demo/?p=75', 26, 'nav_menu_item', '', 0),
(76, 1, '2021-03-24 06:48:51', '2021-03-24 06:27:43', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 4, 'http://vpba.demo/?p=76', 27, 'nav_menu_item', '', 0),
(77, 1, '2021-03-24 06:48:51', '2021-03-24 06:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=77', 28, 'nav_menu_item', '', 0),
(78, 1, '2021-03-24 06:48:51', '2021-03-24 06:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '78', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 10, 'http://vpba.demo/?p=78', 29, 'nav_menu_item', '', 0),
(79, 1, '2021-03-24 06:48:51', '2021-03-24 06:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 10, 'http://vpba.demo/?p=79', 30, 'nav_menu_item', '', 0),
(80, 1, '2021-03-24 06:48:51', '2021-03-24 06:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 10, 'http://vpba.demo/?p=80', 31, 'nav_menu_item', '', 0),
(81, 1, '2021-03-24 06:48:51', '2021-03-24 06:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 10, 'http://vpba.demo/?p=81', 32, 'nav_menu_item', '', 0),
(82, 1, '2021-03-24 06:48:51', '2021-03-24 06:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 10, 'http://vpba.demo/?p=82', 33, 'nav_menu_item', '', 0),
(83, 1, '2021-03-24 06:48:51', '2021-03-24 06:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 10, 'http://vpba.demo/?p=83', 34, 'nav_menu_item', '', 0),
(84, 1, '2021-03-24 06:48:51', '2021-03-24 06:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 10, 'http://vpba.demo/?p=84', 35, 'nav_menu_item', '', 0),
(85, 1, '2021-03-24 06:48:51', '2021-03-24 06:29:10', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=85', 36, 'nav_menu_item', '', 0),
(86, 1, '2021-03-24 06:48:51', '2021-03-24 06:29:10', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=86', 37, 'nav_menu_item', '', 0),
(87, 1, '2021-03-24 06:48:51', '2021-03-24 06:29:50', '', 'Hội viên', '', 'publish', 'closed', 'closed', '', 'hoi-vien', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=87', 14, 'nav_menu_item', '', 0),
(88, 1, '2021-03-24 06:30:47', '2021-03-24 06:30:47', '', 'Đăng kí hội viên', '', 'publish', 'closed', 'closed', '', 'dang-ki-hoi-vien', '', '', '2021-03-24 06:30:47', '2021-03-24 06:30:47', '', 0, 'http://vpba.demo/?page_id=88', 0, 'page', '', 0),
(89, 1, '2021-03-24 06:30:47', '2021-03-24 06:30:47', '', 'Đăng kí hội viên', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2021-03-24 06:30:47', '2021-03-24 06:30:47', '', 88, 'http://vpba.demo/?p=89', 0, 'revision', '', 0),
(90, 1, '2021-03-24 06:31:05', '2021-03-24 06:31:05', '', 'Quyền và nghĩa vụ Hội viên', '', 'publish', 'closed', 'closed', '', 'quyen-va-nghia-vu-hoi-vien', '', '', '2021-03-24 06:31:05', '2021-03-24 06:31:05', '', 0, 'http://vpba.demo/?page_id=90', 0, 'page', '', 0),
(91, 1, '2021-03-24 06:31:05', '2021-03-24 06:31:05', '', 'Quyền và nghĩa vụ Hội viên', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2021-03-24 06:31:05', '2021-03-24 06:31:05', '', 90, 'http://vpba.demo/?p=91', 0, 'revision', '', 0),
(92, 1, '2021-03-24 06:31:19', '2021-03-24 06:31:19', '', 'Danh bạ Hội viên', '', 'publish', 'closed', 'closed', '', 'danh-ba-hoi-vien', '', '', '2021-03-24 06:31:19', '2021-03-24 06:31:19', '', 0, 'http://vpba.demo/?page_id=92', 0, 'page', '', 0),
(93, 1, '2021-03-24 06:31:19', '2021-03-24 06:31:19', '', 'Danh bạ Hội viên', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2021-03-24 06:31:19', '2021-03-24 06:31:19', '', 92, 'http://vpba.demo/?p=93', 0, 'revision', '', 0),
(94, 1, '2021-03-24 06:48:51', '2021-03-24 06:32:38', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=94', 18, 'nav_menu_item', '', 0),
(95, 1, '2021-03-24 06:48:51', '2021-03-24 06:32:38', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=95', 17, 'nav_menu_item', '', 0),
(96, 1, '2021-03-24 06:48:51', '2021-03-24 06:32:38', ' ', '', '', 'publish', 'closed', 'closed', '', '96', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=96', 16, 'nav_menu_item', '', 0),
(97, 1, '2021-03-24 06:48:51', '2021-03-24 06:32:38', ' ', '', '', 'publish', 'closed', 'closed', '', '97', '', '', '2021-03-24 06:48:51', '2021-03-24 06:48:51', '', 0, 'http://vpba.demo/?p=97', 15, 'nav_menu_item', '', 0),
(98, 1, '2021-03-24 06:48:50', '2021-03-24 06:48:50', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-03-24 06:48:50', '2021-03-24 06:48:50', '', 0, 'http://vpba.demo/?p=98', 1, 'nav_menu_item', '', 0),
(99, 1, '2021-03-24 15:23:52', '0000-00-00 00:00:00', '{\n    \"option_category\": {\n        \"value\": \"cosmo\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-24 15:23:52\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '32f21ac3-2873-4d81-b1c3-b6294ee3cd35', '', '', '2021-03-24 15:23:52', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=99', 0, 'customize_changeset', '', 0),
(100, 1, '2021-03-24 15:38:52', '2021-03-24 15:38:52', '{\n    \"option_category\": {\n        \"value\": \"16\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-24 15:38:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4c1c38d5-4aee-4580-9043-821cd5919936', '', '', '2021-03-24 15:38:52', '2021-03-24 15:38:52', '', 0, 'http://vpba.demo/2021/03/24/4c1c38d5-4aee-4580-9043-821cd5919936/', 0, 'customize_changeset', '', 0),
(101, 1, '2021-03-24 15:43:19', '2021-03-24 15:43:19', '{\n    \"option_category\": {\n        \"value\": \"15\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-24 15:43:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd8965fd3-77cb-4bd5-a763-c30cfb0592f2', '', '', '2021-03-24 15:43:19', '2021-03-24 15:43:19', '', 0, 'http://vpba.demo/2021/03/24/d8965fd3-77cb-4bd5-a763-c30cfb0592f2/', 0, 'customize_changeset', '', 0),
(102, 1, '2021-03-24 15:44:54', '0000-00-00 00:00:00', '{\n    \"option_category\": {\n        \"value\": \"3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-24 15:44:54\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'ad4d325f-4cf4-47ae-be57-2cac15c5c52b', '', '', '2021-03-24 15:44:54', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=102', 0, 'customize_changeset', '', 0),
(103, 1, '2021-03-24 15:48:03', '0000-00-00 00:00:00', '{\n    \"option_category\": {\n        \"value\": \"16\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-24 15:48:03\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'd185a163-a3e6-4ccb-b95a-87b764c98abf', '', '', '2021-03-24 15:48:03', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=103', 0, 'customize_changeset', '', 0),
(104, 1, '2021-03-24 15:48:47', '0000-00-00 00:00:00', '{\n    \"option-category\": {\n        \"value\": \"16\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-24 15:48:47\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'ecedbc24-784d-471e-b797-86ecd2d64ed9', '', '', '2021-03-24 15:48:47', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=104', 0, 'customize_changeset', '', 0),
(105, 1, '2021-03-24 15:50:20', '2021-03-24 15:50:20', '{\n    \"option-category\": {\n        \"value\": \"18\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-24 15:50:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd161d4d2-8f9b-4f43-a84a-610d9c86e3b9', '', '', '2021-03-24 15:50:20', '2021-03-24 15:50:20', '', 0, 'http://vpba.demo/2021/03/24/d161d4d2-8f9b-4f43-a84a-610d9c86e3b9/', 0, 'customize_changeset', '', 0),
(106, 1, '2021-03-24 15:52:05', '0000-00-00 00:00:00', '{\n    \"option-category\": {\n        \"value\": \"cosmo\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-24 15:52:05\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'bdc40667-1086-4d29-a345-f2563913b778', '', '', '2021-03-24 15:52:05', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=106', 0, 'customize_changeset', '', 0),
(107, 1, '2021-03-24 15:53:20', '0000-00-00 00:00:00', '{\n    \"option-category\": {\n        \"value\": \"12\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-24 15:53:20\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'f4bf70ad-28d1-4b9f-9c9d-8d9698e78d38', '', '', '2021-03-24 15:53:20', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=107', 0, 'customize_changeset', '', 0),
(108, 1, '2021-03-24 15:56:17', '0000-00-00 00:00:00', '{\n    \"option-category\": {\n        \"value\": \"11\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-24 15:56:17\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'fc09b9e1-d534-4927-b853-c7e6139b0507', '', '', '2021-03-24 15:56:17', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=108', 0, 'customize_changeset', '', 0),
(109, 1, '2021-03-24 16:04:36', '2021-03-24 16:04:36', '{\n    \"vpba::option-category\": {\n        \"value\": \"5\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-24 16:04:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3ac5c40d-c3d8-479b-a14d-e15301b6ca5d', '', '', '2021-03-24 16:04:36', '2021-03-24 16:04:36', '', 0, 'http://vpba.demo/?p=109', 0, 'customize_changeset', '', 0),
(110, 1, '2021-03-24 15:59:06', '2021-03-24 15:59:06', '<!-- wp:paragraph -->\n<p>ấd</p>\n<!-- /wp:paragraph -->', 'ádasd', '', 'trash', 'open', 'open', '', 'adasd__trashed', '', '', '2021-03-24 15:59:20', '2021-03-24 15:59:20', '', 0, 'http://vpba.demo/?p=110', 0, 'post', '', 0),
(111, 1, '2021-03-24 15:59:06', '2021-03-24 15:59:06', '<!-- wp:paragraph -->\n<p>ấd</p>\n<!-- /wp:paragraph -->', 'ádasd', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2021-03-24 15:59:06', '2021-03-24 15:59:06', '', 110, 'http://vpba.demo/?p=111', 0, 'revision', '', 0),
(112, 1, '2021-03-24 15:59:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-03-24 15:59:35', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=112', 0, 'post', '', 0),
(113, 1, '2021-03-24 16:01:28', '2021-03-24 16:01:28', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Thủ tướng: Đến 2045, Việt Nam sẽ xuất hiện các tập đoàn khổng lồ', '', 'publish', 'open', 'open', '', 'thu-tuong-den-2045-viet-nam-se-xuat-hien-cac-tap-doan-khong-lo', '', '', '2021-03-25 08:33:26', '2021-03-25 08:33:26', '', 0, 'http://vpba.demo/?p=113', 0, 'post', '', 0),
(114, 1, '2021-03-24 16:02:49', '2021-03-24 16:02:49', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Mang lại ấm no, hạnh phúc thực chất cho nhân dân mới là thành công của Đại hội', '', 'publish', 'open', 'open', '', 'mang-lai-am-no-hanh-phuc-thuc-chat-cho-nhan-dan-moi-la-thanh-cong-cua-dai-hoi', '', '', '2021-03-25 08:32:57', '2021-03-25 08:32:57', '', 0, 'http://vpba.demo/?p=114', 0, 'post', '', 0),
(115, 1, '2021-03-24 16:03:57', '2021-03-24 16:03:57', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Kỷ niệm 75 năm Ngày thành lập ngành Kế hoạch và Đầu tư', '', 'publish', 'open', 'open', '', 'ky-niem-75-nam-ngay-thanh-lap-nganh-ke-hoach-va-dau-tu', '', '', '2021-03-25 08:32:48', '2021-03-25 08:32:48', '', 0, 'http://vpba.demo/?p=115', 0, 'post', '', 0),
(116, 1, '2021-03-24 16:04:13', '2021-03-24 16:04:13', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Đưa đổi mới sáng tạo trở thành động lực phát triển', '', 'publish', 'open', 'open', '', 'dua-doi-moi-sang-tao-tro-thanh-dong-luc-phat-trien', '', '', '2021-03-25 08:32:32', '2021-03-25 08:32:32', '', 0, 'http://vpba.demo/?p=116', 0, 'post', '', 0),
(117, 1, '2021-03-24 16:01:28', '2021-03-24 16:01:28', '', 'Thủ tướng: Đến 2045, Việt Nam sẽ xuất hiện các tập đoàn khổng lồ', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2021-03-24 16:01:28', '2021-03-24 16:01:28', '', 113, 'http://vpba.demo/?p=117', 0, 'revision', '', 0),
(118, 1, '2021-03-24 16:02:18', '2021-03-24 16:02:18', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Thủ tướng Nguyễn Xuân Phúc: Tạo mọi điều kiện cho kinh tế tư nhân yên tâm đầu tư, kinh doanh', '', 'publish', 'open', 'open', '', 'thu-tuong-nguyen-xuan-phuc-tao-moi-dieu-kien-cho-kinh-te-tu-nhan-yen-tam-dau-tu-kinh-doanh', '', '', '2021-03-25 08:33:14', '2021-03-25 08:33:14', '', 0, 'http://vpba.demo/?p=118', 0, 'post', '', 0),
(119, 1, '2021-03-24 16:02:34', '2021-03-24 16:02:34', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Nhiều chuyên gia kinh tế tham gia Hội đồng Biên tập Tạp chí Điện tử Doanh nhân Việt Nam', '', 'publish', 'open', 'open', '', 'nhieu-chuyen-gia-kinh-te-tham-gia-hoi-dong-bien-tap-tap-chi-dien-tu-doanh-nhan-viet-nam', '', '', '2021-03-25 08:33:05', '2021-03-25 08:33:05', '', 0, 'http://vpba.demo/?p=119', 0, 'post', '', 0),
(120, 1, '2021-03-24 16:02:18', '2021-03-24 16:02:18', '', 'Thủ tướng Nguyễn Xuân Phúc: Tạo mọi điều kiện cho kinh tế tư nhân yên tâm đầu tư, kinh doanh', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2021-03-24 16:02:18', '2021-03-24 16:02:18', '', 118, 'http://vpba.demo/?p=120', 0, 'revision', '', 0),
(121, 1, '2021-03-24 16:02:34', '2021-03-24 16:02:34', '', 'Nhiều chuyên gia kinh tế tham gia Hội đồng Biên tập Tạp chí Điện tử Doanh nhân Việt Nam', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2021-03-24 16:02:34', '2021-03-24 16:02:34', '', 119, 'http://vpba.demo/?p=121', 0, 'revision', '', 0),
(122, 1, '2021-03-24 16:02:49', '2021-03-24 16:02:49', '', 'Mang lại ấm no, hạnh phúc thực chất cho nhân dân mới là thành công của Đại hội', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2021-03-24 16:02:49', '2021-03-24 16:02:49', '', 114, 'http://vpba.demo/?p=122', 0, 'revision', '', 0),
(123, 1, '2021-03-24 16:03:57', '2021-03-24 16:03:57', '', 'Kỷ niệm 75 năm Ngày thành lập ngành Kế hoạch và Đầu tư', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2021-03-24 16:03:57', '2021-03-24 16:03:57', '', 115, 'http://vpba.demo/?p=123', 0, 'revision', '', 0),
(124, 1, '2021-03-24 16:04:13', '2021-03-24 16:04:13', '', 'Đưa đổi mới sáng tạo trở thành động lực phát triển', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2021-03-24 16:04:13', '2021-03-24 16:04:13', '', 116, 'http://vpba.demo/?p=124', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(125, 1, '2021-03-25 02:56:17', '2021-03-25 02:56:17', '{\n    \"vpba::option-category-home\": {\n        \"value\": \"5\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-25 02:56:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fc989acc-26d5-4299-9844-49162447cfe1', '', '', '2021-03-25 02:56:17', '2021-03-25 02:56:17', '', 0, 'http://vpba.demo/2021/03/25/fc989acc-26d5-4299-9844-49162447cfe1/', 0, 'customize_changeset', '', 0),
(126, 1, '2021-03-25 08:30:09', '2021-03-25 08:30:09', '', 'Đưa đổi mới sáng tạo trở thành động lực phát triển', '', 'inherit', 'closed', 'closed', '', '116-autosave-v1', '', '', '2021-03-25 08:30:09', '2021-03-25 08:30:09', '', 116, 'http://vpba.demo/?p=126', 0, 'revision', '', 0),
(127, 1, '2021-03-25 08:32:02', '2021-03-25 08:32:02', '', 'chinhphu_6Wd6eRW7qUaE6zS1_png', '', 'inherit', 'open', 'closed', '', 'chinhphu_6wd6erw7quae6zs1_png', '', '', '2021-03-25 08:32:02', '2021-03-25 08:32:02', '', 116, 'http://vpba.demo/wp-content/uploads/2021/03/chinhphu_6Wd6eRW7qUaE6zS1_png.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2021-03-25 08:32:03', '2021-03-25 08:32:03', '', 'golf_7LSrw9nUyEi9z5Ba_png', '', 'inherit', 'open', 'closed', '', 'golf_7lsrw9nuyei9z5ba_png', '', '', '2021-03-25 08:32:03', '2021-03-25 08:32:03', '', 116, 'http://vpba.demo/wp-content/uploads/2021/03/golf_7LSrw9nUyEi9z5Ba_png.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2021-03-25 08:32:04', '2021-03-25 08:32:04', '', 'hoi_xZrEzjtt0Ee9NSO3_png', '', 'inherit', 'open', 'closed', '', 'hoi_xzrezjtt0ee9nso3_png', '', '', '2021-03-25 08:32:04', '2021-03-25 08:32:04', '', 116, 'http://vpba.demo/wp-content/uploads/2021/03/hoi_xZrEzjtt0Ee9NSO3_png.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2021-03-25 08:32:05', '2021-03-25 08:32:05', '', 'khdt_iZjMHFaxqEuthqW5_png', '', 'inherit', 'open', 'closed', '', 'khdt_izjmhfaxqeuthqw5_png', '', '', '2021-03-25 08:32:05', '2021-03-25 08:32:05', '', 116, 'http://vpba.demo/wp-content/uploads/2021/03/khdt_iZjMHFaxqEuthqW5_png.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2021-03-25 08:32:06', '2021-03-25 08:32:06', '', 'npt_BFLNwQ3vgk2k5YN4_png', '', 'inherit', 'open', 'closed', '', 'npt_bflnwq3vgk2k5yn4_png', '', '', '2021-03-25 08:32:06', '2021-03-25 08:32:06', '', 116, 'http://vpba.demo/wp-content/uploads/2021/03/npt_BFLNwQ3vgk2k5YN4_png.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2021-03-25 08:32:07', '2021-03-25 08:32:07', '', 'nxp_QfIiNbMFuECjYvCq_png', '', 'inherit', 'open', 'closed', '', 'nxp_qfiinbmfuecjyvcq_png', '', '', '2021-03-25 08:32:07', '2021-03-25 08:32:07', '', 116, 'http://vpba.demo/wp-content/uploads/2021/03/nxp_QfIiNbMFuECjYvCq_png.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2021-03-25 08:32:08', '2021-03-25 08:32:08', '', 'phuc_IEKJofkgK0uqRGZ2_png', '', 'inherit', 'open', 'closed', '', 'phuc_iekjofkgk0uqrgz2_png', '', '', '2021-03-25 08:32:08', '2021-03-25 08:32:08', '', 116, 'http://vpba.demo/wp-content/uploads/2021/03/phuc_IEKJofkgK0uqRGZ2_png.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2021-03-25 08:32:32', '2021-03-25 08:32:32', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Đưa đổi mới sáng tạo trở thành động lực phát triển', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2021-03-25 08:32:32', '2021-03-25 08:32:32', '', 116, 'http://vpba.demo/?p=134', 0, 'revision', '', 0),
(135, 1, '2021-03-25 08:32:48', '2021-03-25 08:32:48', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Kỷ niệm 75 năm Ngày thành lập ngành Kế hoạch và Đầu tư', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2021-03-25 08:32:48', '2021-03-25 08:32:48', '', 115, 'http://vpba.demo/?p=135', 0, 'revision', '', 0),
(136, 1, '2021-03-25 08:32:57', '2021-03-25 08:32:57', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Mang lại ấm no, hạnh phúc thực chất cho nhân dân mới là thành công của Đại hội', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2021-03-25 08:32:57', '2021-03-25 08:32:57', '', 114, 'http://vpba.demo/?p=136', 0, 'revision', '', 0),
(137, 1, '2021-03-25 08:33:05', '2021-03-25 08:33:05', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Nhiều chuyên gia kinh tế tham gia Hội đồng Biên tập Tạp chí Điện tử Doanh nhân Việt Nam', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2021-03-25 08:33:05', '2021-03-25 08:33:05', '', 119, 'http://vpba.demo/?p=137', 0, 'revision', '', 0),
(138, 1, '2021-03-25 08:33:14', '2021-03-25 08:33:14', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Thủ tướng Nguyễn Xuân Phúc: Tạo mọi điều kiện cho kinh tế tư nhân yên tâm đầu tư, kinh doanh', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2021-03-25 08:33:14', '2021-03-25 08:33:14', '', 118, 'http://vpba.demo/?p=138', 0, 'revision', '', 0),
(139, 1, '2021-03-25 08:33:26', '2021-03-25 08:33:26', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Thủ tướng: Đến 2045, Việt Nam sẽ xuất hiện các tập đoàn khổng lồ', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2021-03-25 08:33:26', '2021-03-25 08:33:26', '', 113, 'http://vpba.demo/?p=139', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa phân loại', 'khong-phan-loai', 0),
(2, 'Hoạt động VPBA', 'hoat-dong-vpba', 0),
(3, 'Thông báo VPBA', 'thong-bao-vpba', 0),
(4, 'Tin tức', 'tin-tuc', 0),
(5, 'Tin Tổng hợp', 'tin-tong-hop', 0),
(6, 'Kinh tế', 'kinh-te', 0),
(7, 'Pháp luật', 'phap-luat', 0),
(8, 'Doanh nhân', 'doanh-nhan', 0),
(9, 'Doanh nghiệp', 'doanh-nghiep', 0),
(10, 'Doanh nghiệp', 'doanh-nghiep-2', 0),
(11, 'Kinh doanh', 'kinh-doanh', 0),
(12, 'Nghiên cứu', 'nghien-cuu', 0),
(13, 'Xúc tiến TM - ĐT', 'xuc-tien-tm-dt', 0),
(14, 'Tư vấn', 'tu-van', 0),
(15, 'Đào tạo', 'dao-tao', 0),
(16, 'Hội nghị - Hội thảo', 'hoi-nghi-hoi-thao', 0),
(17, 'Văn hóa - Từ thiện', 'van-hoa-tu-thien', 0),
(18, 'Kết nối DN', 'ket-noi-dn', 0),
(19, 'Menu main', 'menu-main', 0),
(20, 'Tin tức hội viên', 'tin-tuc-hoi-vien', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 1, 0),
(14, 1, 0),
(16, 1, 0),
(18, 1, 0),
(20, 1, 0),
(22, 1, 0),
(24, 1, 0),
(32, 19, 0),
(48, 19, 0),
(49, 19, 0),
(50, 19, 0),
(51, 19, 0),
(53, 19, 0),
(54, 19, 0),
(57, 19, 0),
(58, 19, 0),
(65, 19, 0),
(66, 19, 0),
(67, 19, 0),
(68, 19, 0),
(69, 19, 0),
(70, 19, 0),
(71, 19, 0),
(72, 19, 0),
(73, 19, 0),
(74, 19, 0),
(75, 19, 0),
(76, 19, 0),
(77, 19, 0),
(78, 19, 0),
(79, 19, 0),
(80, 19, 0),
(81, 19, 0),
(82, 19, 0),
(83, 19, 0),
(84, 19, 0),
(85, 19, 0),
(86, 19, 0),
(87, 19, 0),
(94, 19, 0),
(95, 19, 0),
(96, 19, 0),
(97, 19, 0),
(98, 19, 0),
(110, 1, 0),
(113, 5, 0),
(114, 5, 0),
(115, 5, 0),
(116, 5, 0),
(118, 5, 0),
(119, 5, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 4, 6),
(6, 6, 'category', '', 4, 0),
(7, 7, 'category', '', 4, 0),
(8, 8, 'category', '', 4, 0),
(9, 9, 'category', '', 4, 0),
(10, 10, 'category', '', 0, 0),
(11, 11, 'category', '', 10, 0),
(12, 12, 'category', '', 10, 0),
(13, 13, 'category', '', 10, 0),
(14, 14, 'category', '', 10, 0),
(15, 15, 'category', '', 10, 0),
(16, 16, 'category', '', 10, 0),
(17, 17, 'category', '', 10, 0),
(18, 18, 'category', '', 0, 0),
(19, 19, 'nav_menu', '', 0, 37),
(20, 20, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"385d0f85c4a9f7c1f934fde907800440c3df24faddf6c3e4ad2530667f1bd933\";a:4:{s:10:\"expiration\";i:1616727684;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\";s:5:\"login\";i:1616554884;}s:64:\"97b98b0e65468de556d47e1a3838a04b28c8c9348136a0caefeaa0de314e8c6a\";a:4:{s:10:\"expiration\";i:1616729337;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\";s:5:\"login\";i:1616556537;}s:64:\"379574854d824bbc466e8ad9588b5423dbc0ead426ccd351cf38878a98e45227\";a:4:{s:10:\"expiration\";i:1616770857;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\";s:5:\"login\";i:1616598057;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1616559944'),
(21, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BdKipJlHqhEb.hd0.ePsjzdREJJoYZ/', 'admin', 'tranquangvinh5899@gmail.com', 'http://vpba.demo', '2021-03-24 03:01:16', '', 0, 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
