-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2021 at 02:57 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `vpba`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_db7_forms`
--

CREATE TABLE `wp_db7_forms` (
  `form_id` bigint(20) NOT NULL,
  `form_post_id` bigint(20) NOT NULL,
  `form_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";}', 'yes'),
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
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"cfdb7_access\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
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
(117, 'cron', 'a:6:{i:1619535678;a:5:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1619578878;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619578885;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619578888;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619665278;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(122, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1616555797;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(143, 'can_compress_scripts', '1', 'no'),
(152, 'new_admin_email', 'tranquangvinh5899@gmail.com', 'yes'),
(160, 'finished_updating_comment_type', '1', 'yes'),
(161, 'current_theme', 'Vpba', 'yes'),
(162, 'theme_mods_vpba', 'a:22:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:14:\"my-custom-menu\";i:22;}s:18:\"custom_css_post_id\";i:-1;s:13:\"banner-header\";s:71:\"http://vpba.demo/wp-content/uploads/2021/03/banner_rcJ-b9I9hUy2oxYN.png\";s:11:\"link_banner\";s:17:\"http://vpba.demo/\";s:11:\"link-banner\";s:17:\"http://vpba.demo/\";s:15:\"option-category\";s:1:\"5\";s:20:\"option-category-home\";s:1:\"5\";s:17:\"option-category-1\";s:1:\"4\";s:17:\"option-category-2\";s:1:\"4\";s:17:\"option-category-3\";s:1:\"4\";s:17:\"option-category-4\";s:1:\"4\";s:12:\"list-gallery\";s:387:\"[{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/phuc_IEKJofkgK0uqRGZ2_png.jpg\",\"link\":\"\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/hoi_xZrEzjtt0Ee9NSO3_png.jpg\",\"link\":\"\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/chinhphu_6Wd6eRW7qUaE6zS1_png.jpg\",\"link\":\"\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/nxp_QfIiNbMFuECjYvCq_png.jpg\",\"link\":\"\"}]\";s:12:\"item_gallery\";s:405:\"[{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/phuc_IEKJofkgK0uqRGZ2_png.jpg\",\"link\":\"{\\\"external\\\":\\\"\\\",\\\"object\\\":\\\"\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"target\\\":0}\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/nxp_QfIiNbMFuECjYvCq_png.jpg\",\"link\":\"\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/hoi_xZrEzjtt0Ee9NSO3_png.jpg\",\"link\":\"\"}]\";s:10:\"item_video\";s:797:\"[{\"link\":\"{\\\"external\\\":\\\"https://www.youtube.com/embed/WYtgqdxpujA\\\",\\\"object\\\":\\\"0\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"Thời sự Việt Nam hôm nay\\\",\\\"target\\\":0}\"},{\"link\":\"{\\\"external\\\":\\\"https://www.youtube.com/embed/2Nhfwgb6q8o\\\",\\\"object\\\":\\\"0\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"Thời sự thế giới hôm nay\\\",\\\"target\\\":0}\"},{\"link\":\"{\\\"external\\\":\\\"https://www.youtube.com/embed/1T18dHdxF20\\\",\\\"object\\\":\\\"0\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"Thời sự hôm nay\\\",\\\"target\\\":0}\"},{\"link\":\"{\\\"external\\\":\\\"https://www.youtube.com/embed/eDazKqrUTy4\\\",\\\"object\\\":\\\"0\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"Thời sự thế giới\\\",\\\"target\\\":0}\"}]\";s:18:\"item_advertisement\";s:1351:\"[{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/v_L9palw4DJ0KwCGDx.png\",\"link\":\"{\\\"external\\\":\\\"http://vpba.demo/\\\",\\\"object\\\":\\\"\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"target\\\":0}\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/th_kLjdxY2jM0S9lkAs.png\",\"link\":\"{\\\"external\\\":\\\"http://vpba.demo/\\\",\\\"object\\\":\\\"\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"target\\\":0}\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/tc_Lf628eQ7IEqf7wbj.png\",\"link\":\"{\\\"external\\\":\\\"http://vpba.demo/\\\",\\\"object\\\":\\\"\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"target\\\":0}\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/sea_Yc3lNyWN7kW9xv4h.png\",\"link\":\"{\\\"external\\\":\\\"http://vpba.demo/\\\",\\\"object\\\":\\\"\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"target\\\":0}\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/nt_SEz8MYJOWEGAe9fy.png\",\"link\":\"{\\\"external\\\":\\\"http://vpba.demo/\\\",\\\"object\\\":\\\"\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"target\\\":0}\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/dj_CGooQ2EMFk2VuEwD.png\",\"link\":\"{\\\"external\\\":\\\"http://vpba.demo/\\\",\\\"object\\\":\\\"\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"target\\\":0}\"}]\";s:18:\"exchange_rate_info\";s:245:\"https://www.tygia.com/api.php?column=1&title=0&chart=0&gold=0&rate=1&ngoaite=usd,jpy,chf,eur,gbp,aud&expand=0&color=B4D0D0&titlecolor=333333&bgcolor=ffffff&upcolor=00aa00&downcolor=bb0000&textcolor=333333&nganhang=VIETCOM&fontsize=80&ngay=#amp=1\";s:7:\"menu_id\";s:12:\"menu-sidebar\";s:25:\"item_advertisement_footer\";s:1765:\"[{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/bt5_6I9OLwZt7kKcVVFE.png\",\"link\":\"{\\\"external\\\":\\\"https://btmc.vn/\\\",\\\"object\\\":\\\"\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"target\\\":0}\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/naveda_Zqr0zbjjJk6pG-6-.png\",\"link\":\"{\\\"external\\\":\\\"https://nevada.vn/\\\",\\\"object\\\":\\\"\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"target\\\":0}\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/bt5_6I9OLwZt7kKcVVFEa.png\",\"link\":\"{\\\"external\\\":\\\"https://caodangyduocvietnam.edu.vn/\\\",\\\"object\\\":\\\"\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"target\\\":0}\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/tv_6m4SYeYj0OHsZHPB.png\",\"link\":\"{\\\"external\\\":\\\"https://invest.com.vn/\\\",\\\"object\\\":\\\"\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"target\\\":0}\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/bt5_6I9OLwZt7kKcVVFEab.png\",\"link\":\"{\\\"external\\\":\\\"https://vietfootball.vn/\\\",\\\"object\\\":\\\"\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"target\\\":0}\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/edu_90kXwfdgqkqQjOSr.png\",\"link\":\"{\\\"external\\\":\\\"https://eduviet.vn/\\\",\\\"object\\\":\\\"\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"target\\\":0}\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/d_EXwF3w6Ku0WvB8Ng.png\",\"link\":\"\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/q3_sN9lACFKfEW0c1AY.png\",\"link\":\"\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/Untitled_RPUHOOI50e-qg23Y.png\",\"link\":\"\"},{\"image\":\"http://vpba.demo/wp-content/uploads/2021/03/Untitled_-XgnpP2iEi-HrB3t.png\",\"link\":\"\"}]\";s:14:\"menu_id_footer\";s:11:\"menu-footer\";s:11:\"item_social\";s:699:\"[{\"link\":\"{\\\"external\\\":\\\"http://vpba.demo/facebook\\\",\\\"object\\\":\\\"\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"target\\\":0}\",\"type\":\"Facebook\"},{\"link\":\"{\\\"external\\\":\\\"http://vpba.demo/twitter\\\",\\\"object\\\":\\\"\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"target\\\":0}\",\"type\":\"Twitter\"},{\"link\":\"{\\\"external\\\":\\\"http://vpba.demo/google-plus\\\",\\\"object\\\":\\\"\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"target\\\":0}\",\"type\":\"Google plus\"},{\"link\":\"{\\\"external\\\":\\\"http://vpba.demo/instagram\\\",\\\"object\\\":\\\"\\\",\\\"object_id\\\":\\\"0\\\",\\\"object_name\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"target\\\":0}\",\"type\":\"Instagram\"}]\";s:15:\"content_contact\";s:4177:\"<div class=\"col-xs-12 footer-content-text\">\n        			<p style=\" font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\"><b>TRANG TIN HỘI DOANH NHÂN TƯ NHÂN VIỆT NAM</b></p>\n\n<p style=\" font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\"><b>Giấy phép số: 147 / GP-BTTTT ngày 25/8/2020</b></p>\n\n<p style=\" font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\"><strong style=\"font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\">Người chịu trách nhiệm chính : </strong></p>\n\n<p style=\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\"><strong style=\"font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\">Ông Chu Thế Ngọc - Phó Tổng Thư ký TW <span style=\"font-size: 12.8px;\">Hội</span></strong></p>\n\n<p style=\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\"><strong><span style=\"font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\">ĐC : Tầng 18 Tòa Ladeco, 266 Đội Cấn, Ba Đình, HN</span></strong></p>\n\n<p style=\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\"><strong> Tel : <span style=\"font-family: Arial, Helvetica, sans-serif; font-size: small;\">024. 3871 2666           </span><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: small; text-align: center;\">Fax: </span><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: small;\">024. 3871 2888  </span></strong></p>\n\n<p style=\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\"><strong style=\"font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: small;\"> </span> www.vpba.org.vn         </strong><strong style=\"font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\">Email : vpba.tw@gmail.com</strong><strong><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: small;\"> </span></strong></p>\n\n<p style=\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\"> </p>\n\n<p style=\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\"><strong style=\"font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\"><span style=\"font-size: 12.8px;\"> VPĐD Miền Trung: </span></strong><span style=\"font-size: 12.8px;\">46 Hoàng Văn Thụ, Hải Châu, Đà Nẵng</span></p>\n\n<p style=\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\"><strong style=\"font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\"><span style=\"font-size: 12.8px;\">  VPĐD Miền Nam: </span></strong><span style=\"font-size: 12.8px;\">158 Đào Duy Anh, P9,  Phú Nhuận, HCM</span></p>\n\n<p style=\"cfont-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\"><em>Ghi rõ nguồn “ Hội Doanh nhân tư nhân Việt Nam ” hoặc<br>\n    <a href=\"http://vpba.org.vn\">http://vpba.org.vn</a> khi phát hành lại thông tin từ Trang tin này.</em></p>\n\n<p style=\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\"> </p>\n\n<p style=\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\"><em style=\"font-family: arial, sans-serif; font-size: 12.8px; text-align: right;\">  Web thiết kế bởi Đổi Mới GRP - Web: dcg-org.com</em></p>\n\n        		</div>\";}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(172, 'recovery_mode_email_last_sent', '1616990015', 'yes'),
(204, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(208, 'category_children', 'a:2:{i:4;a:5:{i:0;i:5;i:1;i:6;i:2;i:7;i:3;i:8;i:4;i:9;}i:10;a:7:{i:0;i:11;i:1;i:12;i:2;i:13;i:3;i:14;i:4;i:15;i:5;i:16;i:6;i:17;}}', 'yes'),
(220, 'option_category', '15', 'yes'),
(221, 'option-category', '18', 'yes'),
(238, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":6,\"critical\":3}', 'yes'),
(376, 'recently_activated', 'a:0:{}', 'yes'),
(377, 'wpcf7', 'a:2:{s:7:\"version\";s:3:\"5.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1617545350;s:7:\"version\";s:3:\"5.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(378, 'cfdb7_view_install_date', '2021-04-04 14:09:12', 'yes'),
(446, '_site_transient_timeout_php_check_90e738eca301c4d89366b1a4d15fe37f', '1619706276', 'no'),
(447, '_site_transient_php_check_90e738eca301c4d89366b1a4d15fe37f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(466, '_site_transient_timeout_theme_roots', '1619536925', 'no'),
(467, '_site_transient_theme_roots', 'a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:4:\"vpba\";s:7:\"/themes\";}', 'no'),
(469, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7.1-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.7\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7.1-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-rollback-0.zip\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.7\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1619535139;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}', 'no'),
(470, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1619535141;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";s:4:\"vpba\";s:0:\"\";}s:8:\"response\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(471, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1619535145;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:3:\"5.4\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:7:\"1.2.5.9\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2019-11-12 17:58:46\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.4/vi.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/contact-form-cfdb7\";s:4:\"slug\";s:18:\"contact-form-cfdb7\";s:6:\"plugin\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:11:\"new_version\";s:7:\"1.2.5.9\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/contact-form-cfdb7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-cfdb7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-256x256.png?rev=1619878\";s:2:\"1x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-128x128.png?rev=1619878\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/contact-form-cfdb7/assets/banner-772x250.png?rev=1619902\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2021/03/banner_rcJ-b9I9hUy2oxYN.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1554;s:6:\"height\";i:224;s:4:\"file\";s:35:\"2021/03/banner_rcJ-b9I9hUy2oxYN.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"banner_rcJ-b9I9hUy2oxYN-300x43.png\";s:5:\"width\";i:300;s:6:\"height\";i:43;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"banner_rcJ-b9I9hUy2oxYN-1024x148.png\";s:5:\"width\";i:1024;s:6:\"height\";i:148;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"banner_rcJ-b9I9hUy2oxYN-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"banner_rcJ-b9I9hUy2oxYN-768x111.png\";s:5:\"width\";i:768;s:6:\"height\";i:111;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"banner_rcJ-b9I9hUy2oxYN-1536x221.png\";s:5:\"width\";i:1536;s:6:\"height\";i:221;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
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
(494, 113, '_edit_lock', '1617009535:1'),
(495, 114, '_edit_lock', '1617009533:1'),
(496, 115, '_edit_lock', '1617009533:1'),
(497, 116, '_edit_lock', '1617009533:1'),
(502, 118, '_edit_lock', '1617009534:1'),
(503, 119, '_edit_lock', '1617009533:1'),
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
(549, 113, '_thumbnail_id', '128'),
(580, 154, '_wp_attached_file', '2021/03/dj_CGooQ2EMFk2VuEwD.png'),
(581, 154, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:312;s:6:\"height\";i:144;s:4:\"file\";s:31:\"2021/03/dj_CGooQ2EMFk2VuEwD.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"dj_CGooQ2EMFk2VuEwD-300x138.png\";s:5:\"width\";i:300;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"dj_CGooQ2EMFk2VuEwD-150x144.png\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(582, 155, '_wp_attached_file', '2021/03/nt_SEz8MYJOWEGAe9fy.png'),
(583, 155, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:273;s:6:\"height\";i:149;s:4:\"file\";s:31:\"2021/03/nt_SEz8MYJOWEGAe9fy.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"nt_SEz8MYJOWEGAe9fy-150x149.png\";s:5:\"width\";i:150;s:6:\"height\";i:149;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(584, 156, '_wp_attached_file', '2021/03/sea_Yc3lNyWN7kW9xv4h.png'),
(585, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:658;s:6:\"height\";i:434;s:4:\"file\";s:32:\"2021/03/sea_Yc3lNyWN7kW9xv4h.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"sea_Yc3lNyWN7kW9xv4h-300x198.png\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"sea_Yc3lNyWN7kW9xv4h-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(586, 157, '_wp_attached_file', '2021/03/tc_Lf628eQ7IEqf7wbj.png'),
(587, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:289;s:6:\"height\";i:216;s:4:\"file\";s:31:\"2021/03/tc_Lf628eQ7IEqf7wbj.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"tc_Lf628eQ7IEqf7wbj-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(588, 158, '_wp_attached_file', '2021/03/th_kLjdxY2jM0S9lkAs.png'),
(589, 158, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:302;s:6:\"height\";i:274;s:4:\"file\";s:31:\"2021/03/th_kLjdxY2jM0S9lkAs.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"th_kLjdxY2jM0S9lkAs-300x272.png\";s:5:\"width\";i:300;s:6:\"height\";i:272;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"th_kLjdxY2jM0S9lkAs-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(590, 159, '_wp_attached_file', '2021/03/v_L9palw4DJ0KwCGDx.png'),
(591, 159, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:316;s:6:\"height\";i:202;s:4:\"file\";s:30:\"2021/03/v_L9palw4DJ0KwCGDx.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"v_L9palw4DJ0KwCGDx-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"v_L9palw4DJ0KwCGDx-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(597, 162, '_menu_item_type', 'custom'),
(598, 162, '_menu_item_menu_item_parent', '0'),
(599, 162, '_menu_item_object_id', '162'),
(600, 162, '_menu_item_object', 'custom'),
(601, 162, '_menu_item_target', ''),
(602, 162, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(603, 162, '_menu_item_xfn', ''),
(604, 162, '_menu_item_url', 'http://dangcongsan.vn/'),
(606, 163, '_menu_item_type', 'custom'),
(607, 163, '_menu_item_menu_item_parent', '0'),
(608, 163, '_menu_item_object_id', '163'),
(609, 163, '_menu_item_object', 'custom'),
(610, 163, '_menu_item_target', ''),
(611, 163, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(612, 163, '_menu_item_xfn', ''),
(613, 163, '_menu_item_url', 'http://chinhphu.vn/portal/page/portal/chinhphu/trangchu'),
(615, 164, '_menu_item_type', 'custom'),
(616, 164, '_menu_item_menu_item_parent', '0'),
(617, 164, '_menu_item_object_id', '164'),
(618, 164, '_menu_item_object', 'custom'),
(619, 164, '_menu_item_target', ''),
(620, 164, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(621, 164, '_menu_item_xfn', ''),
(622, 164, '_menu_item_url', 'http://quochoi.vn/Pages/default.aspx'),
(624, 165, '_menu_item_type', 'custom'),
(625, 165, '_menu_item_menu_item_parent', '0'),
(626, 165, '_menu_item_object_id', '165'),
(627, 165, '_menu_item_object', 'custom'),
(628, 165, '_menu_item_target', ''),
(629, 165, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(630, 165, '_menu_item_xfn', ''),
(631, 165, '_menu_item_url', 'http://www.mpi.gov.vn/Pages/default.aspx'),
(633, 166, '_menu_item_type', 'custom'),
(634, 166, '_menu_item_menu_item_parent', '0'),
(635, 166, '_menu_item_object_id', '166'),
(636, 166, '_menu_item_object', 'custom'),
(637, 166, '_menu_item_target', ''),
(638, 166, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(639, 166, '_menu_item_xfn', ''),
(640, 166, '_menu_item_url', 'http://www.moit.gov.vn/'),
(642, 167, '_menu_item_type', 'custom'),
(643, 167, '_menu_item_menu_item_parent', '0'),
(644, 167, '_menu_item_object_id', '167'),
(645, 167, '_menu_item_object', 'custom'),
(646, 167, '_menu_item_target', ''),
(647, 167, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(648, 167, '_menu_item_xfn', ''),
(649, 167, '_menu_item_url', 'https://www.sbv.gov.vn/webcenter/portal/vi/menu/trangchu?_afrLoop=18840704118269224'),
(651, 168, '_menu_item_type', 'custom'),
(652, 168, '_menu_item_menu_item_parent', '0'),
(653, 168, '_menu_item_object_id', '168'),
(654, 168, '_menu_item_object', 'custom'),
(655, 168, '_menu_item_target', ''),
(656, 168, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(657, 168, '_menu_item_xfn', ''),
(658, 168, '_menu_item_url', 'https://baodautu.vn/'),
(660, 169, '_menu_item_type', 'custom'),
(661, 169, '_menu_item_menu_item_parent', '0'),
(662, 169, '_menu_item_object_id', '169'),
(663, 169, '_menu_item_object', 'custom'),
(664, 169, '_menu_item_target', ''),
(665, 169, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(666, 169, '_menu_item_xfn', ''),
(667, 169, '_menu_item_url', 'https://doanhnhanvn.vn/'),
(669, 170, '_menu_item_type', 'custom'),
(670, 170, '_menu_item_menu_item_parent', '0'),
(671, 170, '_menu_item_object_id', '170'),
(672, 170, '_menu_item_object', 'custom'),
(673, 170, '_menu_item_target', ''),
(674, 170, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(675, 170, '_menu_item_xfn', ''),
(676, 170, '_menu_item_url', 'https://vcci.com.vn/'),
(678, 98, '_wp_old_date', '2021-03-24'),
(679, 32, '_wp_old_date', '2021-03-24'),
(680, 54, '_wp_old_date', '2021-03-24'),
(681, 48, '_wp_old_date', '2021-03-24'),
(682, 49, '_wp_old_date', '2021-03-24'),
(683, 50, '_wp_old_date', '2021-03-24'),
(684, 51, '_wp_old_date', '2021-03-24'),
(685, 58, '_wp_old_date', '2021-03-24'),
(686, 65, '_wp_old_date', '2021-03-24'),
(687, 66, '_wp_old_date', '2021-03-24'),
(688, 67, '_wp_old_date', '2021-03-24'),
(689, 57, '_wp_old_date', '2021-03-24'),
(690, 53, '_wp_old_date', '2021-03-24'),
(691, 87, '_wp_old_date', '2021-03-24'),
(692, 97, '_wp_old_date', '2021-03-24'),
(693, 96, '_wp_old_date', '2021-03-24'),
(694, 95, '_wp_old_date', '2021-03-24'),
(695, 94, '_wp_old_date', '2021-03-24'),
(696, 68, '_wp_old_date', '2021-03-24'),
(697, 70, '_wp_old_date', '2021-03-24'),
(698, 69, '_wp_old_date', '2021-03-24'),
(699, 71, '_wp_old_date', '2021-03-24'),
(700, 72, '_wp_old_date', '2021-03-24'),
(701, 73, '_wp_old_date', '2021-03-24'),
(702, 74, '_wp_old_date', '2021-03-24'),
(703, 75, '_wp_old_date', '2021-03-24'),
(704, 76, '_wp_old_date', '2021-03-24'),
(705, 77, '_wp_old_date', '2021-03-24'),
(706, 78, '_wp_old_date', '2021-03-24'),
(707, 79, '_wp_old_date', '2021-03-24'),
(708, 80, '_wp_old_date', '2021-03-24'),
(709, 81, '_wp_old_date', '2021-03-24'),
(710, 82, '_wp_old_date', '2021-03-24'),
(711, 83, '_wp_old_date', '2021-03-24'),
(712, 84, '_wp_old_date', '2021-03-24'),
(713, 85, '_wp_old_date', '2021-03-24'),
(714, 86, '_wp_old_date', '2021-03-24'),
(717, 172, '_edit_lock', '1616945893:1'),
(718, 173, '_wp_attached_file', '2021/03/bt5_6I9OLwZt7kKcVVFE.png'),
(719, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:177;s:6:\"height\";i:132;s:4:\"file\";s:32:\"2021/03/bt5_6I9OLwZt7kKcVVFE.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"bt5_6I9OLwZt7kKcVVFE-150x132.png\";s:5:\"width\";i:150;s:6:\"height\";i:132;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(720, 174, '_wp_attached_file', '2021/03/naveda_Zqr0zbjjJk6pG-6-.png'),
(721, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:441;s:6:\"height\";i:186;s:4:\"file\";s:35:\"2021/03/naveda_Zqr0zbjjJk6pG-6-.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"naveda_Zqr0zbjjJk6pG-6--300x127.png\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"naveda_Zqr0zbjjJk6pG-6--150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(722, 175, '_wp_attached_file', '2021/03/bt5_6I9OLwZt7kKcVVFEa.png'),
(723, 175, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:911;s:6:\"height\";i:736;s:4:\"file\";s:33:\"2021/03/bt5_6I9OLwZt7kKcVVFEa.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"bt5_6I9OLwZt7kKcVVFEa-300x242.png\";s:5:\"width\";i:300;s:6:\"height\";i:242;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"bt5_6I9OLwZt7kKcVVFEa-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"bt5_6I9OLwZt7kKcVVFEa-768x620.png\";s:5:\"width\";i:768;s:6:\"height\";i:620;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(724, 176, '_wp_attached_file', '2021/03/tv_6m4SYeYj0OHsZHPB.png'),
(725, 176, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:636;s:4:\"file\";s:31:\"2021/03/tv_6m4SYeYj0OHsZHPB.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"tv_6m4SYeYj0OHsZHPB-300x191.png\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"tv_6m4SYeYj0OHsZHPB-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"tv_6m4SYeYj0OHsZHPB-768x488.png\";s:5:\"width\";i:768;s:6:\"height\";i:488;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(726, 177, '_wp_attached_file', '2021/03/bt5_6I9OLwZt7kKcVVFEab.png'),
(727, 177, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:944;s:6:\"height\";i:654;s:4:\"file\";s:34:\"2021/03/bt5_6I9OLwZt7kKcVVFEab.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"bt5_6I9OLwZt7kKcVVFEab-300x208.png\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"bt5_6I9OLwZt7kKcVVFEab-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"bt5_6I9OLwZt7kKcVVFEab-768x532.png\";s:5:\"width\";i:768;s:6:\"height\";i:532;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(728, 178, '_wp_attached_file', '2021/03/edu_90kXwfdgqkqQjOSr.png'),
(729, 178, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:412;s:6:\"height\";i:216;s:4:\"file\";s:32:\"2021/03/edu_90kXwfdgqkqQjOSr.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"edu_90kXwfdgqkqQjOSr-300x157.png\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"edu_90kXwfdgqkqQjOSr-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(730, 179, '_wp_attached_file', '2021/03/d_EXwF3w6Ku0WvB8Ng.png'),
(731, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:706;s:6:\"height\";i:658;s:4:\"file\";s:30:\"2021/03/d_EXwF3w6Ku0WvB8Ng.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"d_EXwF3w6Ku0WvB8Ng-300x280.png\";s:5:\"width\";i:300;s:6:\"height\";i:280;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"d_EXwF3w6Ku0WvB8Ng-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(732, 180, '_wp_attached_file', '2021/03/q3_sN9lACFKfEW0c1AY.png'),
(733, 180, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:190;s:6:\"height\";i:109;s:4:\"file\";s:31:\"2021/03/q3_sN9lACFKfEW0c1AY.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"q3_sN9lACFKfEW0c1AY-150x109.png\";s:5:\"width\";i:150;s:6:\"height\";i:109;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(734, 181, '_wp_attached_file', '2021/03/Untitled_RPUHOOI50e-qg23Y.png'),
(735, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:137;s:6:\"height\";i:79;s:4:\"file\";s:37:\"2021/03/Untitled_RPUHOOI50e-qg23Y.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(736, 182, '_wp_attached_file', '2021/03/Untitled_-XgnpP2iEi-HrB3t.png'),
(737, 182, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:149;s:6:\"height\";i:87;s:4:\"file\";s:37:\"2021/03/Untitled_-XgnpP2iEi-HrB3t.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(738, 172, '_wp_trash_meta_status', 'publish'),
(739, 172, '_wp_trash_meta_time', '1616945917'),
(740, 183, '_menu_item_type', 'custom'),
(741, 183, '_menu_item_menu_item_parent', '0'),
(742, 183, '_menu_item_object_id', '183'),
(743, 183, '_menu_item_object', 'custom'),
(744, 183, '_menu_item_target', ''),
(745, 183, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(746, 183, '_menu_item_xfn', ''),
(747, 183, '_menu_item_url', 'http://vpba.demo/wp'),
(749, 184, '_menu_item_type', 'post_type'),
(750, 184, '_menu_item_menu_item_parent', '0'),
(751, 184, '_menu_item_object_id', '26'),
(752, 184, '_menu_item_object', 'page'),
(753, 184, '_menu_item_target', ''),
(754, 184, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(755, 184, '_menu_item_xfn', ''),
(756, 184, '_menu_item_url', ''),
(758, 185, '_wp_trash_meta_status', 'publish'),
(759, 185, '_wp_trash_meta_time', '1616947619'),
(760, 186, '_edit_lock', '1616948521:1'),
(761, 186, '_wp_trash_meta_status', 'publish'),
(762, 186, '_wp_trash_meta_time', '1616948534'),
(763, 187, '_wp_trash_meta_status', 'publish'),
(764, 187, '_wp_trash_meta_time', '1616949300'),
(765, 188, '_wp_trash_meta_status', 'publish'),
(766, 188, '_wp_trash_meta_time', '1616950168'),
(767, 189, '_wp_trash_meta_status', 'publish'),
(768, 189, '_wp_trash_meta_time', '1616950456'),
(769, 190, '_wp_trash_meta_status', 'publish'),
(770, 190, '_wp_trash_meta_time', '1616950522'),
(771, 191, '_wp_trash_meta_status', 'publish'),
(772, 191, '_wp_trash_meta_time', '1616983203'),
(774, 194, '_form', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(775, 194, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <wordpress@vpba.demo>\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(776, 194, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <wordpress@vpba.demo>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(777, 194, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(778, 194, '_additional_settings', NULL),
(779, 194, '_locale', 'en_US');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2021-03-24 03:01:16', '2021-03-24 03:01:16', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://vpba.demo/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2021-03-24 03:01:16', '2021-03-24 03:01:16', '', 0, 'http://vpba.demo/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-03-24 03:01:16', '2021-03-24 03:01:16', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Địa chỉ website là: http://vpba.demo.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Bình luận</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Nội dung nhúng từ website khác</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph -->', 'Chính sách bảo mật', '', 'draft', 'closed', 'open', '', 'chinh-sach-bao-mat', '', '', '2021-03-24 03:01:16', '2021-03-24 03:01:16', '', 0, 'http://vpba.demo/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-03-24 04:25:21', '2021-03-24 04:25:21', '', 'banner_rcJ-b9I9hUy2oxYN', '', 'inherit', 'open', 'closed', '', 'banner_rcj-b9i9huy2oxyn', '', '', '2021-03-24 04:25:21', '2021-03-24 04:25:21', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/banner_rcJ-b9I9hUy2oxYN.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2021-03-24 05:35:41', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-24 05:35:41', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2021-03-24 05:35:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-24 05:35:41', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2021-03-24 05:37:13', '2021-03-24 05:37:13', '', 'Giới thiệu VPBA', '', 'publish', 'closed', 'closed', '', 'gioi-thieu-vpba', '', '', '2021-03-24 05:37:13', '2021-03-24 05:37:13', '', 0, 'http://vpba.demo/?page_id=10', 0, 'page', '', 0),
(11, 1, '2021-03-24 05:37:13', '2021-03-24 05:37:13', '', 'Giới thiệu VPBA', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-03-24 05:37:13', '2021-03-24 05:37:13', '', 10, 'http://vpba.demo/?p=11', 0, 'revision', '', 0),
(26, 1, '2021-03-24 05:44:50', '2021-03-24 05:44:50', '', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2021-03-24 05:44:50', '2021-03-24 05:44:50', '', 0, 'http://vpba.demo/?page_id=26', 0, 'page', '', 0),
(27, 1, '2021-03-24 05:44:50', '2021-03-24 05:44:50', '', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-03-24 05:44:50', '2021-03-24 05:44:50', '', 26, 'http://vpba.demo/?p=27', 0, 'revision', '', 0),
(29, 1, '2021-03-24 05:44:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-24 05:44:57', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2021-03-24 05:44:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-24 05:44:57', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2021-03-24 05:44:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-24 05:44:57', '0000-00-00 00:00:00', '', 0, 'http://vpba.demo/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2021-03-28 06:05:19', '2021-03-24 05:46:02', '', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=32', 2, 'nav_menu_item', '', 0),
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
(48, 1, '2021-03-28 06:05:19', '2021-03-24 06:17:33', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=48', 4, 'nav_menu_item', '', 0),
(49, 1, '2021-03-28 06:05:19', '2021-03-24 06:17:33', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=49', 5, 'nav_menu_item', '', 0),
(50, 1, '2021-03-28 06:05:19', '2021-03-24 06:17:33', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=50', 6, 'nav_menu_item', '', 0),
(51, 1, '2021-03-28 06:05:19', '2021-03-24 06:17:33', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=51', 7, 'nav_menu_item', '', 0),
(53, 1, '2021-03-28 06:05:19', '2021-03-24 06:17:33', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=53', 13, 'nav_menu_item', '', 0),
(54, 1, '2021-03-28 06:05:19', '2021-03-24 06:17:33', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=54', 3, 'nav_menu_item', '', 0),
(55, 1, '2021-03-24 06:18:03', '2021-03-24 06:18:03', '', 'Các chi hội', '', 'publish', 'closed', 'closed', '', 'cac-chi-hoi', '', '', '2021-03-24 06:18:03', '2021-03-24 06:18:03', '', 0, 'http://vpba.demo/?page_id=55', 0, 'page', '', 0),
(56, 1, '2021-03-24 06:18:03', '2021-03-24 06:18:03', '', 'Các chi hội', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2021-03-24 06:18:03', '2021-03-24 06:18:03', '', 55, 'http://vpba.demo/?p=56', 0, 'revision', '', 0),
(57, 1, '2021-03-28 06:05:19', '2021-03-24 06:18:22', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=57', 12, 'nav_menu_item', '', 0),
(58, 1, '2021-03-28 06:05:19', '2021-03-24 06:21:36', '', 'Các tổ chức thuộc hội', '', 'publish', 'closed', 'closed', '', 'cac-to-chuc-thuoc-hoi', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=58', 8, 'nav_menu_item', '', 0),
(59, 1, '2021-03-24 06:22:25', '2021-03-24 06:22:25', '', 'Văn phòng đại diện', '', 'publish', 'closed', 'closed', '', 'van-phong-dai-dien', '', '', '2021-03-24 06:22:25', '2021-03-24 06:22:25', '', 0, 'http://vpba.demo/?page_id=59', 0, 'page', '', 0),
(60, 1, '2021-03-24 06:22:25', '2021-03-24 06:22:25', '', 'Văn phòng đại diện', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2021-03-24 06:22:25', '2021-03-24 06:22:25', '', 59, 'http://vpba.demo/?p=60', 0, 'revision', '', 0),
(61, 1, '2021-03-24 06:22:36', '2021-03-24 06:22:36', '', 'Tạp chí', '', 'publish', 'closed', 'closed', '', 'tap-chi', '', '', '2021-03-24 06:22:36', '2021-03-24 06:22:36', '', 0, 'http://vpba.demo/?page_id=61', 0, 'page', '', 0),
(62, 1, '2021-03-24 06:22:36', '2021-03-24 06:22:36', '', 'Tạp chí', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2021-03-24 06:22:36', '2021-03-24 06:22:36', '', 61, 'http://vpba.demo/?p=62', 0, 'revision', '', 0),
(63, 1, '2021-03-24 06:22:51', '2021-03-24 06:22:51', '', 'Các viện, Trung tâm', '', 'publish', 'closed', 'closed', '', 'cac-vien-trung-tam', '', '', '2021-03-24 06:22:51', '2021-03-24 06:22:51', '', 0, 'http://vpba.demo/?page_id=63', 0, 'page', '', 0),
(64, 1, '2021-03-24 06:22:51', '2021-03-24 06:22:51', '', 'Các viện, Trung tâm', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2021-03-24 06:22:51', '2021-03-24 06:22:51', '', 63, 'http://vpba.demo/?p=64', 0, 'revision', '', 0),
(65, 1, '2021-03-28 06:05:19', '2021-03-24 06:23:34', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=65', 9, 'nav_menu_item', '', 0),
(66, 1, '2021-03-28 06:05:19', '2021-03-24 06:23:34', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=66', 10, 'nav_menu_item', '', 0),
(67, 1, '2021-03-28 06:05:19', '2021-03-24 06:23:34', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=67', 11, 'nav_menu_item', '', 0),
(68, 1, '2021-03-28 06:05:19', '2021-03-24 06:27:19', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=68', 19, 'nav_menu_item', '', 0),
(69, 1, '2021-03-28 06:05:19', '2021-03-24 06:27:19', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=69', 21, 'nav_menu_item', '', 0),
(70, 1, '2021-03-28 06:05:19', '2021-03-24 06:27:19', '', 'Hoạt động VPBA', '', 'publish', 'closed', 'closed', '', 'hoat-dong-vpba', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=70', 20, 'nav_menu_item', '', 0),
(71, 1, '2021-03-28 06:05:19', '2021-03-24 06:27:43', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=71', 22, 'nav_menu_item', '', 0),
(72, 1, '2021-03-28 06:05:19', '2021-03-24 06:27:43', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 4, 'http://vpba.demo/?p=72', 23, 'nav_menu_item', '', 0),
(73, 1, '2021-03-28 06:05:19', '2021-03-24 06:27:43', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 4, 'http://vpba.demo/?p=73', 24, 'nav_menu_item', '', 0),
(74, 1, '2021-03-28 06:05:19', '2021-03-24 06:27:43', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 4, 'http://vpba.demo/?p=74', 25, 'nav_menu_item', '', 0),
(75, 1, '2021-03-28 06:05:19', '2021-03-24 06:27:43', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 4, 'http://vpba.demo/?p=75', 26, 'nav_menu_item', '', 0),
(76, 1, '2021-03-28 06:05:19', '2021-03-24 06:27:43', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 4, 'http://vpba.demo/?p=76', 27, 'nav_menu_item', '', 0),
(77, 1, '2021-03-28 06:05:19', '2021-03-24 06:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=77', 28, 'nav_menu_item', '', 0),
(78, 1, '2021-03-28 06:05:19', '2021-03-24 06:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '78', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 10, 'http://vpba.demo/?p=78', 29, 'nav_menu_item', '', 0),
(79, 1, '2021-03-28 06:05:19', '2021-03-24 06:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 10, 'http://vpba.demo/?p=79', 30, 'nav_menu_item', '', 0),
(80, 1, '2021-03-28 06:05:19', '2021-03-24 06:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 10, 'http://vpba.demo/?p=80', 31, 'nav_menu_item', '', 0),
(81, 1, '2021-03-28 06:05:19', '2021-03-24 06:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 10, 'http://vpba.demo/?p=81', 32, 'nav_menu_item', '', 0),
(82, 1, '2021-03-28 06:05:19', '2021-03-24 06:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 10, 'http://vpba.demo/?p=82', 33, 'nav_menu_item', '', 0),
(83, 1, '2021-03-28 06:05:19', '2021-03-24 06:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 10, 'http://vpba.demo/?p=83', 34, 'nav_menu_item', '', 0),
(84, 1, '2021-03-28 06:05:19', '2021-03-24 06:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 10, 'http://vpba.demo/?p=84', 35, 'nav_menu_item', '', 0),
(85, 1, '2021-03-28 06:05:19', '2021-03-24 06:29:10', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=85', 36, 'nav_menu_item', '', 0),
(86, 1, '2021-03-28 06:05:19', '2021-03-24 06:29:10', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=86', 37, 'nav_menu_item', '', 0),
(87, 1, '2021-03-28 06:05:19', '2021-03-24 06:29:50', '', 'Hội viên', '', 'publish', 'closed', 'closed', '', 'hoi-vien', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=87', 14, 'nav_menu_item', '', 0),
(88, 1, '2021-03-24 06:30:47', '2021-03-24 06:30:47', '', 'Đăng kí hội viên', '', 'publish', 'closed', 'closed', '', 'dang-ki-hoi-vien', '', '', '2021-03-24 06:30:47', '2021-03-24 06:30:47', '', 0, 'http://vpba.demo/?page_id=88', 0, 'page', '', 0),
(89, 1, '2021-03-24 06:30:47', '2021-03-24 06:30:47', '', 'Đăng kí hội viên', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2021-03-24 06:30:47', '2021-03-24 06:30:47', '', 88, 'http://vpba.demo/?p=89', 0, 'revision', '', 0),
(90, 1, '2021-03-24 06:31:05', '2021-03-24 06:31:05', '', 'Quyền và nghĩa vụ Hội viên', '', 'publish', 'closed', 'closed', '', 'quyen-va-nghia-vu-hoi-vien', '', '', '2021-03-24 06:31:05', '2021-03-24 06:31:05', '', 0, 'http://vpba.demo/?page_id=90', 0, 'page', '', 0),
(91, 1, '2021-03-24 06:31:05', '2021-03-24 06:31:05', '', 'Quyền và nghĩa vụ Hội viên', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2021-03-24 06:31:05', '2021-03-24 06:31:05', '', 90, 'http://vpba.demo/?p=91', 0, 'revision', '', 0),
(92, 1, '2021-03-24 06:31:19', '2021-03-24 06:31:19', '', 'Danh bạ Hội viên', '', 'publish', 'closed', 'closed', '', 'danh-ba-hoi-vien', '', '', '2021-03-24 06:31:19', '2021-03-24 06:31:19', '', 0, 'http://vpba.demo/?page_id=92', 0, 'page', '', 0),
(93, 1, '2021-03-24 06:31:19', '2021-03-24 06:31:19', '', 'Danh bạ Hội viên', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2021-03-24 06:31:19', '2021-03-24 06:31:19', '', 92, 'http://vpba.demo/?p=93', 0, 'revision', '', 0),
(94, 1, '2021-03-28 06:05:19', '2021-03-24 06:32:38', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=94', 18, 'nav_menu_item', '', 0),
(95, 1, '2021-03-28 06:05:19', '2021-03-24 06:32:38', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=95', 17, 'nav_menu_item', '', 0),
(96, 1, '2021-03-28 06:05:19', '2021-03-24 06:32:38', ' ', '', '', 'publish', 'closed', 'closed', '', '96', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=96', 16, 'nav_menu_item', '', 0),
(97, 1, '2021-03-28 06:05:19', '2021-03-24 06:32:38', ' ', '', '', 'publish', 'closed', 'closed', '', '97', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=97', 15, 'nav_menu_item', '', 0),
(98, 1, '2021-03-28 06:05:19', '2021-03-24 06:48:50', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-03-28 06:05:19', '2021-03-28 06:05:19', '', 0, 'http://vpba.demo/?p=98', 1, 'nav_menu_item', '', 0),
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
(124, 1, '2021-03-24 16:04:13', '2021-03-24 16:04:13', '', 'Đưa đổi mới sáng tạo trở thành động lực phát triển', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2021-03-24 16:04:13', '2021-03-24 16:04:13', '', 116, 'http://vpba.demo/?p=124', 0, 'revision', '', 0),
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
(138, 1, '2021-03-25 08:33:14', '2021-03-25 08:33:14', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Thủ tướng Nguyễn Xuân Phúc: Tạo mọi điều kiện cho kinh tế tư nhân yên tâm đầu tư, kinh doanh', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2021-03-25 08:33:14', '2021-03-25 08:33:14', '', 118, 'http://vpba.demo/?p=138', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(139, 1, '2021-03-25 08:33:26', '2021-03-25 08:33:26', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Thủ tướng: Đến 2045, Việt Nam sẽ xuất hiện các tập đoàn khổng lồ', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2021-03-25 08:33:26', '2021-03-25 08:33:26', '', 113, 'http://vpba.demo/?p=139', 0, 'revision', '', 0),
(154, 1, '2021-03-28 05:00:33', '2021-03-28 05:00:33', '', 'dj_CGooQ2EMFk2VuEwD', '', 'inherit', 'open', 'closed', '', 'dj_cgooq2emfk2vuewd', '', '', '2021-03-28 05:00:33', '2021-03-28 05:00:33', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/dj_CGooQ2EMFk2VuEwD.png', 0, 'attachment', 'image/png', 0),
(155, 1, '2021-03-28 05:00:34', '2021-03-28 05:00:34', '', 'nt_SEz8MYJOWEGAe9fy', '', 'inherit', 'open', 'closed', '', 'nt_sez8myjowegae9fy', '', '', '2021-03-28 05:00:34', '2021-03-28 05:00:34', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/nt_SEz8MYJOWEGAe9fy.png', 0, 'attachment', 'image/png', 0),
(156, 1, '2021-03-28 05:00:34', '2021-03-28 05:00:34', '', 'sea_Yc3lNyWN7kW9xv4h', '', 'inherit', 'open', 'closed', '', 'sea_yc3lnywn7kw9xv4h', '', '', '2021-03-28 05:00:34', '2021-03-28 05:00:34', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/sea_Yc3lNyWN7kW9xv4h.png', 0, 'attachment', 'image/png', 0),
(157, 1, '2021-03-28 05:00:35', '2021-03-28 05:00:35', '', 'tc_Lf628eQ7IEqf7wbj', '', 'inherit', 'open', 'closed', '', 'tc_lf628eq7ieqf7wbj', '', '', '2021-03-28 05:00:35', '2021-03-28 05:00:35', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/tc_Lf628eQ7IEqf7wbj.png', 0, 'attachment', 'image/png', 0),
(158, 1, '2021-03-28 05:00:35', '2021-03-28 05:00:35', '', 'th_kLjdxY2jM0S9lkAs', '', 'inherit', 'open', 'closed', '', 'th_kljdxy2jm0s9lkas', '', '', '2021-03-28 05:00:35', '2021-03-28 05:00:35', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/th_kLjdxY2jM0S9lkAs.png', 0, 'attachment', 'image/png', 0),
(159, 1, '2021-03-28 05:00:36', '2021-03-28 05:00:36', '', 'v_L9palw4DJ0KwCGDx', '', 'inherit', 'open', 'closed', '', 'v_l9palw4dj0kwcgdx', '', '', '2021-03-28 05:00:36', '2021-03-28 05:00:36', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/v_L9palw4DJ0KwCGDx.png', 0, 'attachment', 'image/png', 0),
(162, 1, '2021-03-28 06:05:12', '2021-03-28 05:50:14', '', 'Đảng Cộng Sản Việt Nam', '', 'publish', 'closed', 'closed', '', 'dang-cong-san-viet-nam', '', '', '2021-03-28 06:05:12', '2021-03-28 06:05:12', '', 0, 'http://vpba.demo/?p=162', 1, 'nav_menu_item', '', 0),
(163, 1, '2021-03-28 06:05:12', '2021-03-28 05:50:14', '', 'Cổng thông tin điện tử Chính Phủ', '', 'publish', 'closed', 'closed', '', 'cong-thong-tin-dien-tu-chinh-phu', '', '', '2021-03-28 06:05:12', '2021-03-28 06:05:12', '', 0, 'http://vpba.demo/?p=163', 2, 'nav_menu_item', '', 0),
(164, 1, '2021-03-28 06:05:13', '2021-03-28 05:50:14', '', 'Công thông tin điện tử Quốc Hội', '', 'publish', 'closed', 'closed', '', 'cong-thong-tin-dien-tu-quoc-hoi', '', '', '2021-03-28 06:05:13', '2021-03-28 06:05:13', '', 0, 'http://vpba.demo/?p=164', 3, 'nav_menu_item', '', 0),
(165, 1, '2021-03-28 06:05:13', '2021-03-28 05:50:14', '', 'Bộ Kế Hoạch và Đầu Tư', '', 'publish', 'closed', 'closed', '', 'bo-ke-hoach-va-dau-tu', '', '', '2021-03-28 06:05:13', '2021-03-28 06:05:13', '', 0, 'http://vpba.demo/?p=165', 4, 'nav_menu_item', '', 0),
(166, 1, '2021-03-28 06:05:13', '2021-03-28 05:50:14', '', 'Bộ Công Thương', '', 'publish', 'closed', 'closed', '', 'bo-cong-thuong', '', '', '2021-03-28 06:05:13', '2021-03-28 06:05:13', '', 0, 'http://vpba.demo/?p=166', 5, 'nav_menu_item', '', 0),
(167, 1, '2021-03-28 06:05:13', '2021-03-28 05:50:14', '', 'Ngân Hàng Nhà Nước Việt Nam', '', 'publish', 'closed', 'closed', '', 'ngan-hang-nha-nuoc-viet-nam', '', '', '2021-03-28 06:05:13', '2021-03-28 06:05:13', '', 0, 'http://vpba.demo/?p=167', 6, 'nav_menu_item', '', 0),
(168, 1, '2021-03-28 06:05:13', '2021-03-28 05:50:14', '', 'Báo Đầu Tư', '', 'publish', 'closed', 'closed', '', 'bao-dau-tu', '', '', '2021-03-28 06:05:13', '2021-03-28 06:05:13', '', 0, 'http://vpba.demo/?p=168', 7, 'nav_menu_item', '', 0),
(169, 1, '2021-03-28 06:05:13', '2021-03-28 05:50:14', '', 'Tạp chí điện tử Doanh Nhân Việt Nam', '', 'publish', 'closed', 'closed', '', 'tap-chi-dien-tu-doanh-nhan-viet-nam', '', '', '2021-03-28 06:05:13', '2021-03-28 06:05:13', '', 0, 'http://vpba.demo/?p=169', 8, 'nav_menu_item', '', 0),
(170, 1, '2021-03-28 06:05:13', '2021-03-28 05:50:14', '', 'Phòng Thương Mại và Công Nghiệp Việt Nam', '', 'publish', 'closed', 'closed', '', 'phong-thuong-mai-va-cong-nghiep-viet-nam', '', '', '2021-03-28 06:05:13', '2021-03-28 06:05:13', '', 0, 'http://vpba.demo/?p=170', 9, 'nav_menu_item', '', 0),
(172, 1, '2021-03-28 15:38:37', '2021-03-28 15:38:37', '{\n    \"vpba::item_advertisement_footer\": {\n        \"value\": \"[{\\\"image\\\":\\\"http://vpba.demo/wp-content/uploads/2021/03/bt5_6I9OLwZt7kKcVVFE.png\\\",\\\"link\\\":\\\"{\\\\\\\"external\\\\\\\":\\\\\\\"https://btmc.vn/\\\\\\\",\\\\\\\"object\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"object_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"object_name\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"text\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"title\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"target\\\\\\\":0}\\\"},{\\\"image\\\":\\\"http://vpba.demo/wp-content/uploads/2021/03/naveda_Zqr0zbjjJk6pG-6-.png\\\",\\\"link\\\":\\\"{\\\\\\\"external\\\\\\\":\\\\\\\"https://nevada.vn/\\\\\\\",\\\\\\\"object\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"object_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"object_name\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"text\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"title\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"target\\\\\\\":0}\\\"},{\\\"image\\\":\\\"http://vpba.demo/wp-content/uploads/2021/03/bt5_6I9OLwZt7kKcVVFEa.png\\\",\\\"link\\\":\\\"{\\\\\\\"external\\\\\\\":\\\\\\\"https://caodangyduocvietnam.edu.vn/\\\\\\\",\\\\\\\"object\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"object_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"object_name\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"text\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"title\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"target\\\\\\\":0}\\\"},{\\\"image\\\":\\\"http://vpba.demo/wp-content/uploads/2021/03/tv_6m4SYeYj0OHsZHPB.png\\\",\\\"link\\\":\\\"{\\\\\\\"external\\\\\\\":\\\\\\\"https://invest.com.vn/\\\\\\\",\\\\\\\"object\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"object_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"object_name\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"text\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"title\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"target\\\\\\\":0}\\\"},{\\\"image\\\":\\\"http://vpba.demo/wp-content/uploads/2021/03/bt5_6I9OLwZt7kKcVVFEab.png\\\",\\\"link\\\":\\\"{\\\\\\\"external\\\\\\\":\\\\\\\"https://vietfootball.vn/\\\\\\\",\\\\\\\"object\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"object_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"object_name\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"text\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"title\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"target\\\\\\\":0}\\\"},{\\\"image\\\":\\\"http://vpba.demo/wp-content/uploads/2021/03/edu_90kXwfdgqkqQjOSr.png\\\",\\\"link\\\":\\\"{\\\\\\\"external\\\\\\\":\\\\\\\"https://eduviet.vn/\\\\\\\",\\\\\\\"object\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"object_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"object_name\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"text\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"title\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"target\\\\\\\":0}\\\"},{\\\"image\\\":\\\"http://vpba.demo/wp-content/uploads/2021/03/d_EXwF3w6Ku0WvB8Ng.png\\\",\\\"link\\\":\\\"\\\"},{\\\"image\\\":\\\"http://vpba.demo/wp-content/uploads/2021/03/q3_sN9lACFKfEW0c1AY.png\\\",\\\"link\\\":\\\"\\\"},{\\\"image\\\":\\\"http://vpba.demo/wp-content/uploads/2021/03/Untitled_RPUHOOI50e-qg23Y.png\\\",\\\"link\\\":\\\"\\\"},{\\\"image\\\":\\\"http://vpba.demo/wp-content/uploads/2021/03/Untitled_-XgnpP2iEi-HrB3t.png\\\",\\\"link\\\":\\\"\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-28 15:38:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'da18178b-966b-4899-9602-bcd9f9fd7385', '', '', '2021-03-28 15:38:37', '2021-03-28 15:38:37', '', 0, 'http://vpba.demo/?p=172', 0, 'customize_changeset', '', 0),
(173, 1, '2021-03-28 15:32:42', '2021-03-28 15:32:42', '', 'bt5_6I9OLwZt7kKcVVFE', '', 'inherit', 'open', 'closed', '', 'bt5_6i9olwzt7kkcvvfe', '', '', '2021-03-28 15:32:42', '2021-03-28 15:32:42', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/bt5_6I9OLwZt7kKcVVFE.png', 0, 'attachment', 'image/png', 0),
(174, 1, '2021-03-28 15:32:50', '2021-03-28 15:32:50', '', 'naveda_Zqr0zbjjJk6pG-6-', '', 'inherit', 'open', 'closed', '', 'naveda_zqr0zbjjjk6pg-6', '', '', '2021-03-28 15:32:50', '2021-03-28 15:32:50', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/naveda_Zqr0zbjjJk6pG-6-.png', 0, 'attachment', 'image/png', 0),
(175, 1, '2021-03-28 15:34:26', '2021-03-28 15:34:26', '', 'bt5_6I9OLwZt7kKcVVFEa', '', 'inherit', 'open', 'closed', '', 'bt5_6i9olwzt7kkcvvfea', '', '', '2021-03-28 15:34:26', '2021-03-28 15:34:26', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/bt5_6I9OLwZt7kKcVVFEa.png', 0, 'attachment', 'image/png', 0),
(176, 1, '2021-03-28 15:35:11', '2021-03-28 15:35:11', '', 'tv_6m4SYeYj0OHsZHPB', '', 'inherit', 'open', 'closed', '', 'tv_6m4syeyj0ohszhpb', '', '', '2021-03-28 15:35:11', '2021-03-28 15:35:11', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/tv_6m4SYeYj0OHsZHPB.png', 0, 'attachment', 'image/png', 0),
(177, 1, '2021-03-28 15:35:52', '2021-03-28 15:35:52', '', 'bt5_6I9OLwZt7kKcVVFEab', '', 'inherit', 'open', 'closed', '', 'bt5_6i9olwzt7kkcvvfeab', '', '', '2021-03-28 15:35:52', '2021-03-28 15:35:52', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/bt5_6I9OLwZt7kKcVVFEab.png', 0, 'attachment', 'image/png', 0),
(178, 1, '2021-03-28 15:36:27', '2021-03-28 15:36:27', '', 'edu_90kXwfdgqkqQjOSr', '', 'inherit', 'open', 'closed', '', 'edu_90kxwfdgqkqqjosr', '', '', '2021-03-28 15:36:27', '2021-03-28 15:36:27', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/edu_90kXwfdgqkqQjOSr.png', 0, 'attachment', 'image/png', 0),
(179, 1, '2021-03-28 15:37:07', '2021-03-28 15:37:07', '', 'd_EXwF3w6Ku0WvB8Ng', '', 'inherit', 'open', 'closed', '', 'd_exwf3w6ku0wvb8ng', '', '', '2021-03-28 15:37:07', '2021-03-28 15:37:07', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/d_EXwF3w6Ku0WvB8Ng.png', 0, 'attachment', 'image/png', 0),
(180, 1, '2021-03-28 15:37:32', '2021-03-28 15:37:32', '', 'q3_sN9lACFKfEW0c1AY', '', 'inherit', 'open', 'closed', '', 'q3_sn9lacfkfew0c1ay', '', '', '2021-03-28 15:37:32', '2021-03-28 15:37:32', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/q3_sN9lACFKfEW0c1AY.png', 0, 'attachment', 'image/png', 0),
(181, 1, '2021-03-28 15:38:06', '2021-03-28 15:38:06', '', 'Untitled_RPUHOOI50e-qg23Y', '', 'inherit', 'open', 'closed', '', 'untitled_rpuhooi50e-qg23y', '', '', '2021-03-28 15:38:06', '2021-03-28 15:38:06', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/Untitled_RPUHOOI50e-qg23Y.png', 0, 'attachment', 'image/png', 0),
(182, 1, '2021-03-28 15:38:32', '2021-03-28 15:38:32', '', 'Untitled_-XgnpP2iEi-HrB3t', '', 'inherit', 'open', 'closed', '', 'untitled_-xgnpp2iei-hrb3t', '', '', '2021-03-28 15:38:32', '2021-03-28 15:38:32', '', 0, 'http://vpba.demo/wp-content/uploads/2021/03/Untitled_-XgnpP2iEi-HrB3t.png', 0, 'attachment', 'image/png', 0),
(183, 1, '2021-03-28 16:06:47', '2021-03-28 16:06:47', '', 'Trang Chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2021-03-28 16:06:47', '2021-03-28 16:06:47', '', 0, 'http://vpba.demo/?p=183', 1, 'nav_menu_item', '', 0),
(184, 1, '2021-03-28 16:06:47', '2021-03-28 16:06:47', ' ', '', '', 'publish', 'closed', 'closed', '', '184', '', '', '2021-03-28 16:06:47', '2021-03-28 16:06:47', '', 0, 'http://vpba.demo/?p=184', 2, 'nav_menu_item', '', 0),
(185, 1, '2021-03-28 16:06:59', '2021-03-28 16:06:59', '{\n    \"vpba::menu_id_footer\": {\n        \"value\": \"menu-footer\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-28 16:06:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd33a2584-47b8-4273-9f3b-6e5dd479e46a', '', '', '2021-03-28 16:06:59', '2021-03-28 16:06:59', '', 0, 'http://vpba.demo/2021/03/28/d33a2584-47b8-4273-9f3b-6e5dd479e46a/', 0, 'customize_changeset', '', 0),
(186, 1, '2021-03-28 16:22:14', '2021-03-28 16:22:14', '{\n    \"vpba::item_social\": {\n        \"value\": \"[{\\\"link\\\":\\\"{\\\\\\\"external\\\\\\\":\\\\\\\"http://vpba.demo/facebook\\\\\\\",\\\\\\\"object\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"object_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"object_name\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"text\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"title\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"target\\\\\\\":0}\\\",\\\"text\\\":\\\"Facebook\\\"},{\\\"link\\\":\\\"{\\\\\\\"external\\\\\\\":\\\\\\\"http://vpba.demo/twitter\\\\\\\",\\\\\\\"object\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"object_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"object_name\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"text\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"title\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"target\\\\\\\":0}\\\",\\\"text\\\":\\\"Twitter\\\"},{\\\"link\\\":\\\"{\\\\\\\"external\\\\\\\":\\\\\\\"http://vpba.demo/google-plus\\\\\\\",\\\\\\\"object\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"object_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"object_name\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"text\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"title\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"target\\\\\\\":0}\\\",\\\"text\\\":\\\"Google plus\\\"},{\\\"link\\\":\\\"{\\\\\\\"external\\\\\\\":\\\\\\\"http://vpba.demo/instagram\\\\\\\",\\\\\\\"object\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"object_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"object_name\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"text\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"title\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"target\\\\\\\":0}\\\",\\\"text\\\":\\\"Instagram\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-28 16:22:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f8dfcf50-a7aa-42b5-bb8b-af23f121ceeb', '', '', '2021-03-28 16:22:14', '2021-03-28 16:22:14', '', 0, 'http://vpba.demo/?p=186', 0, 'customize_changeset', '', 0),
(187, 1, '2021-03-28 16:35:00', '2021-03-28 16:35:00', '{\n    \"vpba::item_social\": {\n        \"value\": \"[{\\\"link\\\":\\\"\\\",\\\"type\\\":\\\"Facebook\\\"},{\\\"link\\\":\\\"\\\",\\\"type\\\":\\\"Twitter\\\"},{\\\"link\\\":\\\"\\\",\\\"type\\\":\\\"Google plus\\\"},{\\\"link\\\":\\\"\\\",\\\"type\\\":\\\"Instagram\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-28 16:35:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '55453e33-53e2-42a1-ab03-e078c83fa9db', '', '', '2021-03-28 16:35:00', '2021-03-28 16:35:00', '', 0, 'http://vpba.demo/2021/03/28/55453e33-53e2-42a1-ab03-e078c83fa9db/', 0, 'customize_changeset', '', 0),
(188, 1, '2021-03-28 16:49:28', '2021-03-28 16:49:28', '{\n    \"vpba::content_contact\": {\n        \"value\": \"<div class=\\\"col-xs-12 footer-content-text\\\">\\n        \\t\\t\\t<p style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><b>TRANG TIN H\\u1ed8I DOANH NH\\u00c2N T\\u01af NH\\u00c2N VI\\u1ec6T NAM</b></p>\\n\\n<p style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><b>Gi\\u1ea5y ph\\u00e9p s\\u1ed1: 147 / GP-BTTTT ng\\u00e0y 25/8/2020</b></p>\\n\\n<p style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\">Ng\\u01b0\\u1eddi&nbsp;ch\\u1ecbu tr\\u00e1ch nhi\\u1ec7m ch\\u00ednh&nbsp;: </strong></p>\\n\\n<p style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\">\\u00d4ng Chu Th\\u1ebf Ng\\u1ecdc - Ph\\u00f3 T\\u1ed5ng Th\\u01b0 k\\u00fd TW&nbsp;<span style=\\\"font-size: 12.8px;\\\">H\\u1ed9i</span></strong></p>\\n\\n<p style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong><span style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\">\\u0110C : T\\u1ea7ng 18 T\\u00f2a Ladeco, 266 \\u0110\\u1ed9i C\\u1ea5n, Ba \\u0110\\u00ecnh, HN</span></strong></p>\\n\\n<p style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong>&nbsp;Tel : <span style=\\\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\\\">024. 3871 2666&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; </span><span style=\\\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; text-align: center;\\\">Fax:&nbsp;</span><span style=\\\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\\\">024. 3871 2888&nbsp; </span></strong></p>\\n\\n<p style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif; font-size: small;\\\">&nbsp;</span>&nbsp;www.vpba.org.vn&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong><strong style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\">Email : vpba.tw@gmail.com</strong><strong><span style=\\\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\\\">&nbsp;</span></strong></p>\\n\\n<p style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\">&nbsp;</p>\\n\\n<p style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\"><span style=\\\"font-size: 12.8px;\\\">&nbsp;VP\\u0110D Mi\\u1ec1n Trung:&nbsp;</span></strong><span style=\\\"font-size: 12.8px;\\\">46 Ho\\u00e0ng V\\u0103n Th\\u1ee5, H\\u1ea3i Ch\\u00e2u, \\u0110\\u00e0 N\\u1eb5ng</span></p>\\n\\n<p style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\"><span style=\\\"font-size: 12.8px;\\\">&nbsp; VP\\u0110D Mi\\u1ec1n Nam:&nbsp;</span></strong><span style=\\\"font-size: 12.8px;\\\">158 \\u0110\\u00e0o Duy Anh, P9,&nbsp; Ph\\u00fa Nhu\\u1eadn, HCM</span></p>\\n\\n<p style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><em>Ghi r\\u00f5 ngu\\u1ed3n \\u201c H\\u1ed9i Doanh nh\\u00e2n t\\u01b0 nh\\u00e2n Vi\\u1ec7t Nam \\u201d ho\\u1eb7c<br>\\n&nbsp; &nbsp; <a href=\\\"http://vpba.org.vn\\\">http://vpba.org.vn</a> khi ph\\u00e1t h\\u00e0nh l\\u1ea1i th\\u00f4ng tin t\\u1eeb Trang tin n\\u00e0y.</em></p>\\n\\n<p style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\">&nbsp;</p>\\n\\n<p style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><em style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; text-align: right;\\\">&nbsp; Web thi\\u1ebft k\\u1ebf b\\u1edfi \\u0110\\u1ed5i M\\u1edbi GRP - Web: dcg-org.com</em></p>\\n\\n        \\t\\t</div>\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-28 16:49:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '757f7ba7-c273-4b2a-a578-a55e87b3ea77', '', '', '2021-03-28 16:49:28', '2021-03-28 16:49:28', '', 0, 'http://vpba.demo/2021/03/28/757f7ba7-c273-4b2a-a578-a55e87b3ea77/', 0, 'customize_changeset', '', 0),
(189, 1, '2021-03-28 16:54:16', '2021-03-28 16:54:16', '{\n    \"vpba::content_contact\": {\n        \"value\": \"<div class=\\\"col-xs-12 footer-content-text\\\">\\n        \\t\\t\\t<p style=\\\" font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><b>TRANG TIN H\\u1ed8I DOANH NH\\u00c2N T\\u01af NH\\u00c2N VI\\u1ec6T NAM</b></p>\\n\\n<p style=\\\" font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><b>Gi\\u1ea5y ph\\u00e9p s\\u1ed1: 147 / GP-BTTTT ng\\u00e0y 25/8/2020</b></p>\\n\\n<p style=\\\" font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\">Ng\\u01b0\\u1eddi\\u00a0ch\\u1ecbu tr\\u00e1ch nhi\\u1ec7m ch\\u00ednh\\u00a0: </strong></p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\">\\u00d4ng Chu Th\\u1ebf Ng\\u1ecdc - Ph\\u00f3 T\\u1ed5ng Th\\u01b0 k\\u00fd TW\\u00a0<span style=\\\"font-size: 12.8px;\\\">H\\u1ed9i</span></strong></p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong><span style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\">\\u0110C : T\\u1ea7ng 18 T\\u00f2a Ladeco, 266 \\u0110\\u1ed9i C\\u1ea5n, Ba \\u0110\\u00ecnh, HN</span></strong></p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong>\\u00a0Tel : <span style=\\\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\\\">024. 3871 2666\\u00a0 \\u00a0 \\u00a0\\u00a0 \\u00a0 \\u00a0 </span><span style=\\\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; text-align: center;\\\">Fax:\\u00a0</span><span style=\\\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\\\">024. 3871 2888\\u00a0 </span></strong></p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif; font-size: small;\\\">\\u00a0</span>\\u00a0www.vpba.org.vn\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0</strong><strong style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\">Email : vpba.tw@gmail.com</strong><strong><span style=\\\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\\\">\\u00a0</span></strong></p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\">\\u00a0</p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\"><span style=\\\"font-size: 12.8px;\\\">\\u00a0VP\\u0110D Mi\\u1ec1n Trung:\\u00a0</span></strong><span style=\\\"font-size: 12.8px;\\\">46 Ho\\u00e0ng V\\u0103n Th\\u1ee5, H\\u1ea3i Ch\\u00e2u, \\u0110\\u00e0 N\\u1eb5ng</span></p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\"><span style=\\\"font-size: 12.8px;\\\">\\u00a0 VP\\u0110D Mi\\u1ec1n Nam:\\u00a0</span></strong><span style=\\\"font-size: 12.8px;\\\">158 \\u0110\\u00e0o Duy Anh, P9,\\u00a0 Ph\\u00fa Nhu\\u1eadn, HCM</span></p>\\n\\n<p style=\\\"cfont-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><em>Ghi r\\u00f5 ngu\\u1ed3n \\u201c H\\u1ed9i Doanh nh\\u00e2n t\\u01b0 nh\\u00e2n Vi\\u1ec7t Nam \\u201d ho\\u1eb7c<br>\\n\\u00a0 \\u00a0 <a href=\\\"http://vpba.org.vn\\\">http://vpba.org.vn</a> khi ph\\u00e1t h\\u00e0nh l\\u1ea1i th\\u00f4ng tin t\\u1eeb Trang tin n\\u00e0y.</em></p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\">\\u00a0</p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><em style=\\\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; text-align: right;\\\">\\u00a0 Web thi\\u1ebft k\\u1ebf b\\u1edfi \\u0110\\u1ed5i M\\u1edbi GRP - Web: dcg-org.com</em></p>\\n\\n        \\t\\t</div>\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-28 16:54:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd11d0744-552e-49ac-87dc-f04247fd5fe5', '', '', '2021-03-28 16:54:16', '2021-03-28 16:54:16', '', 0, 'http://vpba.demo/2021/03/28/d11d0744-552e-49ac-87dc-f04247fd5fe5/', 0, 'customize_changeset', '', 0),
(190, 1, '2021-03-28 16:55:22', '2021-03-28 16:55:22', '{\n    \"vpba::content_contact\": {\n        \"value\": \"<div class=\\\"col-xs-12 footer-content-text\\\">\\n        \\t\\t\\t<p style=\\\" font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><b>TRANG TIN H\\u1ed8I DOANH NH\\u00c2N T\\u01af NH\\u00c2N VI\\u1ec6T NAM</b></p>\\n\\n<p style=\\\" font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><b>Gi\\u1ea5y ph\\u00e9p s\\u1ed1: 147 / GP-BTTTT ng\\u00e0y 25/8/2020</b></p>\\n\\n<p style=\\\" font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong style=\\\"font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\">Ng\\u01b0\\u1eddi\\u00a0ch\\u1ecbu tr\\u00e1ch nhi\\u1ec7m ch\\u00ednh\\u00a0: </strong></p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong style=\\\"font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\">\\u00d4ng Chu Th\\u1ebf Ng\\u1ecdc - Ph\\u00f3 T\\u1ed5ng Th\\u01b0 k\\u00fd TW\\u00a0<span style=\\\"font-size: 12.8px;\\\">H\\u1ed9i</span></strong></p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong><span style=\\\"font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\">\\u0110C : T\\u1ea7ng 18 T\\u00f2a Ladeco, 266 \\u0110\\u1ed9i C\\u1ea5n, Ba \\u0110\\u00ecnh, HN</span></strong></p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong>\\u00a0Tel : <span style=\\\"font-family: Arial, Helvetica, sans-serif; font-size: small;\\\">024. 3871 2666\\u00a0 \\u00a0 \\u00a0\\u00a0 \\u00a0 \\u00a0 </span><span style=\\\"font-family: Arial, Helvetica, sans-serif; font-size: small; text-align: center;\\\">Fax:\\u00a0</span><span style=\\\"font-family: Arial, Helvetica, sans-serif; font-size: small;\\\">024. 3871 2888\\u00a0 </span></strong></p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong style=\\\"font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\"><span style=\\\"font-family: Arial, Helvetica, sans-serif; font-size: small;\\\">\\u00a0</span>\\u00a0www.vpba.org.vn\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0</strong><strong style=\\\"font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\">Email : vpba.tw@gmail.com</strong><strong><span style=\\\"font-family: Arial, Helvetica, sans-serif; font-size: small;\\\">\\u00a0</span></strong></p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\">\\u00a0</p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong style=\\\"font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\"><span style=\\\"font-size: 12.8px;\\\">\\u00a0VP\\u0110D Mi\\u1ec1n Trung:\\u00a0</span></strong><span style=\\\"font-size: 12.8px;\\\">46 Ho\\u00e0ng V\\u0103n Th\\u1ee5, H\\u1ea3i Ch\\u00e2u, \\u0110\\u00e0 N\\u1eb5ng</span></p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><strong style=\\\"font-family: arial, sans-serif; font-size: 12.8px; text-align: center;\\\"><span style=\\\"font-size: 12.8px;\\\">\\u00a0 VP\\u0110D Mi\\u1ec1n Nam:\\u00a0</span></strong><span style=\\\"font-size: 12.8px;\\\">158 \\u0110\\u00e0o Duy Anh, P9,\\u00a0 Ph\\u00fa Nhu\\u1eadn, HCM</span></p>\\n\\n<p style=\\\"cfont-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><em>Ghi r\\u00f5 ngu\\u1ed3n \\u201c H\\u1ed9i Doanh nh\\u00e2n t\\u01b0 nh\\u00e2n Vi\\u1ec7t Nam \\u201d ho\\u1eb7c<br>\\n\\u00a0 \\u00a0 <a href=\\\"http://vpba.org.vn\\\">http://vpba.org.vn</a> khi ph\\u00e1t h\\u00e0nh l\\u1ea1i th\\u00f4ng tin t\\u1eeb Trang tin n\\u00e0y.</em></p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\">\\u00a0</p>\\n\\n<p style=\\\"font-family: arial, sans-serif; font-size: 12.8px; margin-top: 10px; margin-right: 0px; margin-bottom: 0px; text-align: center;\\\"><em style=\\\"font-family: arial, sans-serif; font-size: 12.8px; text-align: right;\\\">\\u00a0 Web thi\\u1ebft k\\u1ebf b\\u1edfi \\u0110\\u1ed5i M\\u1edbi GRP - Web: dcg-org.com</em></p>\\n\\n        \\t\\t</div>\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-28 16:55:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0d9464fd-300a-4eba-98d7-5b7e230b8ae1', '', '', '2021-03-28 16:55:22', '2021-03-28 16:55:22', '', 0, 'http://vpba.demo/2021/03/28/0d9464fd-300a-4eba-98d7-5b7e230b8ae1/', 0, 'customize_changeset', '', 0),
(191, 1, '2021-03-29 02:00:03', '2021-03-29 02:00:03', '{\n    \"vpba::item_social\": {\n        \"value\": \"[{\\\"link\\\":\\\"{\\\\\\\"external\\\\\\\":\\\\\\\"http://vpba.demo/facebook\\\\\\\",\\\\\\\"object\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"object_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"object_name\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"text\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"title\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"target\\\\\\\":0}\\\",\\\"type\\\":\\\"Facebook\\\"},{\\\"link\\\":\\\"{\\\\\\\"external\\\\\\\":\\\\\\\"http://vpba.demo/twitter\\\\\\\",\\\\\\\"object\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"object_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"object_name\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"text\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"title\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"target\\\\\\\":0}\\\",\\\"type\\\":\\\"Twitter\\\"},{\\\"link\\\":\\\"{\\\\\\\"external\\\\\\\":\\\\\\\"http://vpba.demo/google-plus\\\\\\\",\\\\\\\"object\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"object_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"object_name\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"text\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"title\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"target\\\\\\\":0}\\\",\\\"type\\\":\\\"Google plus\\\"},{\\\"link\\\":\\\"{\\\\\\\"external\\\\\\\":\\\\\\\"http://vpba.demo/instagram\\\\\\\",\\\\\\\"object\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"object_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"object_name\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"text\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"title\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"target\\\\\\\":0}\\\",\\\"type\\\":\\\"Instagram\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-29 02:00:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a98fe970-5036-43fa-a78e-4163e2ced42c', '', '', '2021-03-29 02:00:03', '2021-03-29 02:00:03', '', 0, 'http://vpba.demo/2021/03/29/a98fe970-5036-43fa-a78e-4163e2ced42c/', 0, 'customize_changeset', '', 0),
(194, 1, '2021-04-04 14:09:10', '2021-04-04 14:09:10', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@vpba.demo>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@vpba.demo>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2021-04-04 14:09:10', '2021-04-04 14:09:10', '', 0, 'http://vpba.demo/?post_type=wpcf7_contact_form&p=194', 0, 'wpcf7_contact_form', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
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
(20, 'Tin tức hội viên', 'tin-tuc-hoi-vien', 0),
(21, 'Menu sidebar', 'menu-sidebar', 0),
(22, 'Menu footer', 'menu-footer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
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
(113, 5, 0),
(114, 5, 0),
(115, 5, 0),
(116, 5, 0),
(118, 5, 0),
(119, 5, 0),
(162, 21, 0),
(163, 21, 0),
(164, 21, 0),
(165, 21, 0),
(166, 21, 0),
(167, 21, 0),
(168, 21, 0),
(169, 21, 0),
(170, 21, 0),
(183, 22, 0),
(184, 22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
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
(20, 20, 'category', '', 0, 0),
(21, 21, 'nav_menu', '', 0, 9),
(22, 22, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"fc5cab541f36223dc953931859f79c332533fb5c40d3fc809905acc78609254d\";a:4:{s:10:\"expiration\";i:1618414088;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\";s:5:\"login\";i:1618241288;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '195'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1616559944'),
(21, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '22');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BdKipJlHqhEb.hd0.ePsjzdREJJoYZ/', 'admin', 'tranquangvinh5899@gmail.com', 'http://vpba.demo', '2021-03-24 03:01:16', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  MODIFY `form_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=780;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
