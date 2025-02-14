-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2025 at 07:19 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fran-perez`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://es.wordpress.org/', '', '2025-02-04 15:40:35', '2025-02-04 14:40:35', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita en el escritorio la pantalla de comentarios.\nLos avatares de los comentaristas provienen de <a href=\"https://es.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:12:{i:1739551234;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1739551235;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1739587258;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1739590834;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1739592634;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1739630435;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1739630458;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1739630460;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1739889925;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1739890101;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1739976035;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://fran-perez.test', 'on'),
(3, 'home', 'http://fran-perez.test', 'on'),
(4, 'blogname', 'Fran Perez', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'hola@franperezg.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'j \\d\\e F \\d\\e Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y H:i', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=29&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:3:{i:0;s:33:\"acf-theme-code/acf_theme_code.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:33:\"classic-editor/classic-editor.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'franperez', 'on'),
(42, 'stylesheet', 'franperez', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '58975', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '0', 'on'),
(58, 'thumbnail_size_h', '0', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '0', 'on'),
(61, 'medium_size_h', '0', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '0', 'on'),
(64, 'large_size_h', '0', 'on'),
(65, 'image_default_link_type', '', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', 'Europe/Madrid', 'on'),
(82, 'page_for_posts', '31', 'on'),
(83, 'page_on_front', '29', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1754232034', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '58975', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'WPLANG', 'es_ES', 'auto'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:160:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.7.1\";s:5:\"files\";a:540:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:27:\"post-content/editor-rtl.css\";i:309;s:31:\"post-content/editor-rtl.min.css\";i:310;s:23:\"post-content/editor.css\";i:311;s:27:\"post-content/editor.min.css\";i:312;s:26:\"post-content/style-rtl.css\";i:313;s:30:\"post-content/style-rtl.min.css\";i:314;s:22:\"post-content/style.css\";i:315;s:26:\"post-content/style.min.css\";i:316;s:23:\"post-date/style-rtl.css\";i:317;s:27:\"post-date/style-rtl.min.css\";i:318;s:19:\"post-date/style.css\";i:319;s:23:\"post-date/style.min.css\";i:320;s:27:\"post-excerpt/editor-rtl.css\";i:321;s:31:\"post-excerpt/editor-rtl.min.css\";i:322;s:23:\"post-excerpt/editor.css\";i:323;s:27:\"post-excerpt/editor.min.css\";i:324;s:26:\"post-excerpt/style-rtl.css\";i:325;s:30:\"post-excerpt/style-rtl.min.css\";i:326;s:22:\"post-excerpt/style.css\";i:327;s:26:\"post-excerpt/style.min.css\";i:328;s:34:\"post-featured-image/editor-rtl.css\";i:329;s:38:\"post-featured-image/editor-rtl.min.css\";i:330;s:30:\"post-featured-image/editor.css\";i:331;s:34:\"post-featured-image/editor.min.css\";i:332;s:33:\"post-featured-image/style-rtl.css\";i:333;s:37:\"post-featured-image/style-rtl.min.css\";i:334;s:29:\"post-featured-image/style.css\";i:335;s:33:\"post-featured-image/style.min.css\";i:336;s:34:\"post-navigation-link/style-rtl.css\";i:337;s:38:\"post-navigation-link/style-rtl.min.css\";i:338;s:30:\"post-navigation-link/style.css\";i:339;s:34:\"post-navigation-link/style.min.css\";i:340;s:28:\"post-template/editor-rtl.css\";i:341;s:32:\"post-template/editor-rtl.min.css\";i:342;s:24:\"post-template/editor.css\";i:343;s:28:\"post-template/editor.min.css\";i:344;s:27:\"post-template/style-rtl.css\";i:345;s:31:\"post-template/style-rtl.min.css\";i:346;s:23:\"post-template/style.css\";i:347;s:27:\"post-template/style.min.css\";i:348;s:24:\"post-terms/style-rtl.css\";i:349;s:28:\"post-terms/style-rtl.min.css\";i:350;s:20:\"post-terms/style.css\";i:351;s:24:\"post-terms/style.min.css\";i:352;s:24:\"post-title/style-rtl.css\";i:353;s:28:\"post-title/style-rtl.min.css\";i:354;s:20:\"post-title/style.css\";i:355;s:24:\"post-title/style.min.css\";i:356;s:26:\"preformatted/style-rtl.css\";i:357;s:30:\"preformatted/style-rtl.min.css\";i:358;s:22:\"preformatted/style.css\";i:359;s:26:\"preformatted/style.min.css\";i:360;s:24:\"pullquote/editor-rtl.css\";i:361;s:28:\"pullquote/editor-rtl.min.css\";i:362;s:20:\"pullquote/editor.css\";i:363;s:24:\"pullquote/editor.min.css\";i:364;s:23:\"pullquote/style-rtl.css\";i:365;s:27:\"pullquote/style-rtl.min.css\";i:366;s:19:\"pullquote/style.css\";i:367;s:23:\"pullquote/style.min.css\";i:368;s:23:\"pullquote/theme-rtl.css\";i:369;s:27:\"pullquote/theme-rtl.min.css\";i:370;s:19:\"pullquote/theme.css\";i:371;s:23:\"pullquote/theme.min.css\";i:372;s:39:\"query-pagination-numbers/editor-rtl.css\";i:373;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:374;s:35:\"query-pagination-numbers/editor.css\";i:375;s:39:\"query-pagination-numbers/editor.min.css\";i:376;s:31:\"query-pagination/editor-rtl.css\";i:377;s:35:\"query-pagination/editor-rtl.min.css\";i:378;s:27:\"query-pagination/editor.css\";i:379;s:31:\"query-pagination/editor.min.css\";i:380;s:30:\"query-pagination/style-rtl.css\";i:381;s:34:\"query-pagination/style-rtl.min.css\";i:382;s:26:\"query-pagination/style.css\";i:383;s:30:\"query-pagination/style.min.css\";i:384;s:25:\"query-title/style-rtl.css\";i:385;s:29:\"query-title/style-rtl.min.css\";i:386;s:21:\"query-title/style.css\";i:387;s:25:\"query-title/style.min.css\";i:388;s:20:\"query/editor-rtl.css\";i:389;s:24:\"query/editor-rtl.min.css\";i:390;s:16:\"query/editor.css\";i:391;s:20:\"query/editor.min.css\";i:392;s:19:\"quote/style-rtl.css\";i:393;s:23:\"quote/style-rtl.min.css\";i:394;s:15:\"quote/style.css\";i:395;s:19:\"quote/style.min.css\";i:396;s:19:\"quote/theme-rtl.css\";i:397;s:23:\"quote/theme-rtl.min.css\";i:398;s:15:\"quote/theme.css\";i:399;s:19:\"quote/theme.min.css\";i:400;s:23:\"read-more/style-rtl.css\";i:401;s:27:\"read-more/style-rtl.min.css\";i:402;s:19:\"read-more/style.css\";i:403;s:23:\"read-more/style.min.css\";i:404;s:18:\"rss/editor-rtl.css\";i:405;s:22:\"rss/editor-rtl.min.css\";i:406;s:14:\"rss/editor.css\";i:407;s:18:\"rss/editor.min.css\";i:408;s:17:\"rss/style-rtl.css\";i:409;s:21:\"rss/style-rtl.min.css\";i:410;s:13:\"rss/style.css\";i:411;s:17:\"rss/style.min.css\";i:412;s:21:\"search/editor-rtl.css\";i:413;s:25:\"search/editor-rtl.min.css\";i:414;s:17:\"search/editor.css\";i:415;s:21:\"search/editor.min.css\";i:416;s:20:\"search/style-rtl.css\";i:417;s:24:\"search/style-rtl.min.css\";i:418;s:16:\"search/style.css\";i:419;s:20:\"search/style.min.css\";i:420;s:20:\"search/theme-rtl.css\";i:421;s:24:\"search/theme-rtl.min.css\";i:422;s:16:\"search/theme.css\";i:423;s:20:\"search/theme.min.css\";i:424;s:24:\"separator/editor-rtl.css\";i:425;s:28:\"separator/editor-rtl.min.css\";i:426;s:20:\"separator/editor.css\";i:427;s:24:\"separator/editor.min.css\";i:428;s:23:\"separator/style-rtl.css\";i:429;s:27:\"separator/style-rtl.min.css\";i:430;s:19:\"separator/style.css\";i:431;s:23:\"separator/style.min.css\";i:432;s:23:\"separator/theme-rtl.css\";i:433;s:27:\"separator/theme-rtl.min.css\";i:434;s:19:\"separator/theme.css\";i:435;s:23:\"separator/theme.min.css\";i:436;s:24:\"shortcode/editor-rtl.css\";i:437;s:28:\"shortcode/editor-rtl.min.css\";i:438;s:20:\"shortcode/editor.css\";i:439;s:24:\"shortcode/editor.min.css\";i:440;s:24:\"site-logo/editor-rtl.css\";i:441;s:28:\"site-logo/editor-rtl.min.css\";i:442;s:20:\"site-logo/editor.css\";i:443;s:24:\"site-logo/editor.min.css\";i:444;s:23:\"site-logo/style-rtl.css\";i:445;s:27:\"site-logo/style-rtl.min.css\";i:446;s:19:\"site-logo/style.css\";i:447;s:23:\"site-logo/style.min.css\";i:448;s:27:\"site-tagline/editor-rtl.css\";i:449;s:31:\"site-tagline/editor-rtl.min.css\";i:450;s:23:\"site-tagline/editor.css\";i:451;s:27:\"site-tagline/editor.min.css\";i:452;s:26:\"site-tagline/style-rtl.css\";i:453;s:30:\"site-tagline/style-rtl.min.css\";i:454;s:22:\"site-tagline/style.css\";i:455;s:26:\"site-tagline/style.min.css\";i:456;s:25:\"site-title/editor-rtl.css\";i:457;s:29:\"site-title/editor-rtl.min.css\";i:458;s:21:\"site-title/editor.css\";i:459;s:25:\"site-title/editor.min.css\";i:460;s:24:\"site-title/style-rtl.css\";i:461;s:28:\"site-title/style-rtl.min.css\";i:462;s:20:\"site-title/style.css\";i:463;s:24:\"site-title/style.min.css\";i:464;s:26:\"social-link/editor-rtl.css\";i:465;s:30:\"social-link/editor-rtl.min.css\";i:466;s:22:\"social-link/editor.css\";i:467;s:26:\"social-link/editor.min.css\";i:468;s:27:\"social-links/editor-rtl.css\";i:469;s:31:\"social-links/editor-rtl.min.css\";i:470;s:23:\"social-links/editor.css\";i:471;s:27:\"social-links/editor.min.css\";i:472;s:26:\"social-links/style-rtl.css\";i:473;s:30:\"social-links/style-rtl.min.css\";i:474;s:22:\"social-links/style.css\";i:475;s:26:\"social-links/style.min.css\";i:476;s:21:\"spacer/editor-rtl.css\";i:477;s:25:\"spacer/editor-rtl.min.css\";i:478;s:17:\"spacer/editor.css\";i:479;s:21:\"spacer/editor.min.css\";i:480;s:20:\"spacer/style-rtl.css\";i:481;s:24:\"spacer/style-rtl.min.css\";i:482;s:16:\"spacer/style.css\";i:483;s:20:\"spacer/style.min.css\";i:484;s:20:\"table/editor-rtl.css\";i:485;s:24:\"table/editor-rtl.min.css\";i:486;s:16:\"table/editor.css\";i:487;s:20:\"table/editor.min.css\";i:488;s:19:\"table/style-rtl.css\";i:489;s:23:\"table/style-rtl.min.css\";i:490;s:15:\"table/style.css\";i:491;s:19:\"table/style.min.css\";i:492;s:19:\"table/theme-rtl.css\";i:493;s:23:\"table/theme-rtl.min.css\";i:494;s:15:\"table/theme.css\";i:495;s:19:\"table/theme.min.css\";i:496;s:24:\"tag-cloud/editor-rtl.css\";i:497;s:28:\"tag-cloud/editor-rtl.min.css\";i:498;s:20:\"tag-cloud/editor.css\";i:499;s:24:\"tag-cloud/editor.min.css\";i:500;s:23:\"tag-cloud/style-rtl.css\";i:501;s:27:\"tag-cloud/style-rtl.min.css\";i:502;s:19:\"tag-cloud/style.css\";i:503;s:23:\"tag-cloud/style.min.css\";i:504;s:28:\"template-part/editor-rtl.css\";i:505;s:32:\"template-part/editor-rtl.min.css\";i:506;s:24:\"template-part/editor.css\";i:507;s:28:\"template-part/editor.min.css\";i:508;s:27:\"template-part/theme-rtl.css\";i:509;s:31:\"template-part/theme-rtl.min.css\";i:510;s:23:\"template-part/theme.css\";i:511;s:27:\"template-part/theme.min.css\";i:512;s:30:\"term-description/style-rtl.css\";i:513;s:34:\"term-description/style-rtl.min.css\";i:514;s:26:\"term-description/style.css\";i:515;s:30:\"term-description/style.min.css\";i:516;s:27:\"text-columns/editor-rtl.css\";i:517;s:31:\"text-columns/editor-rtl.min.css\";i:518;s:23:\"text-columns/editor.css\";i:519;s:27:\"text-columns/editor.min.css\";i:520;s:26:\"text-columns/style-rtl.css\";i:521;s:30:\"text-columns/style-rtl.min.css\";i:522;s:22:\"text-columns/style.css\";i:523;s:26:\"text-columns/style.min.css\";i:524;s:19:\"verse/style-rtl.css\";i:525;s:23:\"verse/style-rtl.min.css\";i:526;s:15:\"verse/style.css\";i:527;s:19:\"verse/style.min.css\";i:528;s:20:\"video/editor-rtl.css\";i:529;s:24:\"video/editor-rtl.min.css\";i:530;s:16:\"video/editor.css\";i:531;s:20:\"video/editor.min.css\";i:532;s:19:\"video/style-rtl.css\";i:533;s:23:\"video/style-rtl.min.css\";i:534;s:15:\"video/style.css\";i:535;s:19:\"video/style.min.css\";i:536;s:19:\"video/theme-rtl.css\";i:537;s:23:\"video/theme-rtl.min.css\";i:538;s:15:\"video/theme.css\";i:539;s:19:\"video/theme.min.css\";}}', 'on'),
(126, 'recovery_keys', 'a:0:{}', 'off'),
(127, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1738680658;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(128, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"598b13a4874d258773987c8bf681583e\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(141, 'can_compress_scripts', '1', 'on'),
(156, 'finished_updating_comment_type', '1', 'auto'),
(158, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(159, 'recently_activated', 'a:0:{}', 'off'),
(170, 'acf_first_activated_version', '6.3.12', 'on'),
(171, 'acf_site_health', '{\"version\":\"6.3.12\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"6.7.1\",\"mysql_version\":\"8.0.30\",\"is_multisite\":false,\"active_theme\":{\"name\":\"franperez\",\"version\":false,\"theme_uri\":false,\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.3.12\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"acf-theme-code\\/acf_theme_code.php\":{\"name\":\"Advanced Custom Fields: Theme Code\",\"version\":\"2.5.6\",\"plugin_uri\":\"https:\\/\\/hookturn.io\\/downloads\\/acf-theme-code-pro\\/\"},\"classic-editor\\/classic-editor.php\":{\"name\":\"Classic Editor\",\"version\":\"1.6.7\",\"plugin_uri\":\"https:\\/\\/wordpress.org\\/plugins\\/classic-editor\\/\"}},\"ui_field_groups\":\"2\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"image\":2,\"text\":7,\"taxonomy\":1,\"checkbox\":1,\"textarea\":1,\"url\":1,\"true_false\":2},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"3\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1738680501,\"event_first_created_field_group\":1738680697,\"last_updated\":1739289225}', 'off'),
(173, 'acf_version', '6.3.12', 'auto'),
(174, 'auto_update_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}', 'off'),
(177, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1739545789;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"6.3.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.12.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3207824\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3207824\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:33:\"acf-theme-code/acf_theme_code.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/acf-theme-code\";s:4:\"slug\";s:14:\"acf-theme-code\";s:6:\"plugin\";s:33:\"acf-theme-code/acf_theme_code.php\";s:11:\"new_version\";s:5:\"2.5.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/acf-theme-code/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/acf-theme-code.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/acf-theme-code/assets/icon-256x256.png?rev=1458037\";s:2:\"1x\";s:67:\"https://ps.w.org/acf-theme-code/assets/icon-128x128.png?rev=1458037\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/acf-theme-code/assets/banner-1544x500.png?rev=2795416\";s:2:\"1x\";s:69:\"https://ps.w.org/acf-theme-code/assets/banner-772x250.png?rev=2795416\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.9.0\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"6.3.12\";s:33:\"acf-theme-code/acf_theme_code.php\";s:5:\"2.5.6\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.7\";}}', 'off'),
(178, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1739545789;s:7:\"checked\";a:1:{s:9:\"franperez\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(179, 'current_theme', 'Francisco Perez', 'auto'),
(180, 'theme_mods_franperez', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(181, 'theme_switched', '', 'auto'),
(202, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:26:\"Verificación SSL fallida.\";}}', 'auto'),
(203, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":6,\"critical\":2}', 'on'),
(205, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(273, 'category_children', 'a:1:{i:4;a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}', 'auto'),
(277, '_site_transient_timeout_browser_6dbb10952a38c11d19e2648023d5055b', '1739894949', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(278, '_site_transient_browser_6dbb10952a38c11d19e2648023d5055b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"133.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(279, '_site_transient_timeout_php_check_7ec5f04fef1dc985019fbdb14afad4b2', '1739894950', 'off'),
(280, '_site_transient_php_check_7ec5f04fef1dc985019fbdb14afad4b2', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(323, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1739548013;s:15:\"version_checked\";s:5:\"6.7.2\";s:12:\"translations\";a:0:{}}', 'off'),
(335, '_site_transient_timeout_theme_roots', '1739549813', 'off'),
(336, '_site_transient_theme_roots', 'a:1:{s:9:\"franperez\";s:7:\"/themes\";}', 'off'),
(338, '_site_transient_timeout_wp_theme_files_patterns-1c84716221aeac061e5b41ce563619e0', '1739552391', 'off'),
(339, '_site_transient_wp_theme_files_patterns-1c84716221aeac061e5b41ce563619e0', 'a:2:{s:7:\"version\";b:0;s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 7, '_edit_lock', '1739289224:1'),
(4, 21, '_edit_last', '1'),
(5, 21, '_edit_lock', '1739199472:1'),
(8, 21, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(9, 21, '_metarobots', 'field_6799236daba49'),
(10, 21, 'custom_meta', ''),
(11, 21, '_custom_meta', 'field_6797c9eb25fc8'),
(12, 21, 'title', ''),
(13, 21, '_title', 'field_6797cdc8c417e'),
(14, 21, 'metadesciption', ''),
(15, 21, '_metadesciption', 'field_6797cdd9c417f'),
(16, 21, 'canonical', ''),
(17, 21, '_canonical', 'field_6797cdfbc4180'),
(18, 21, 'og_image', ''),
(19, 21, '_og_image', 'field_6797ce6c9fbfb'),
(20, 21, 'rrss', '0'),
(21, 21, '_rrss', 'field_6797d10ccd885'),
(22, 21, 'rating_adult', '0'),
(23, 21, '_rating_adult', 'field_6797cf7a9fc00'),
(24, 22, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(25, 22, '_metarobots', 'field_6799236daba49'),
(26, 22, 'custom_meta', ''),
(27, 22, '_custom_meta', 'field_6797c9eb25fc8'),
(28, 22, 'title', ''),
(29, 22, '_title', 'field_6797cdc8c417e'),
(30, 22, 'metadesciption', ''),
(31, 22, '_metadesciption', 'field_6797cdd9c417f'),
(32, 22, 'canonical', ''),
(33, 22, '_canonical', 'field_6797cdfbc4180'),
(34, 22, 'og_image', ''),
(35, 22, '_og_image', 'field_6797ce6c9fbfb'),
(36, 22, 'rrss', '0'),
(37, 22, '_rrss', 'field_6797d10ccd885'),
(38, 22, 'rating_adult', '0'),
(39, 22, '_rating_adult', 'field_6797cf7a9fc00'),
(40, 2, '_edit_lock', '1739175831:1'),
(41, 2, '_wp_trash_meta_status', 'publish'),
(42, 2, '_wp_trash_meta_time', '1739198964'),
(43, 2, '_wp_desired_post_slug', 'pagina-ejemplo'),
(44, 24, '_edit_last', '1'),
(45, 24, '_edit_lock', '1739198998:1'),
(46, 24, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(47, 24, '_metarobots', 'field_6799236daba49'),
(48, 24, 'custom_meta', ''),
(49, 24, '_custom_meta', 'field_6797c9eb25fc8'),
(50, 24, 'title', 'Blog'),
(51, 24, '_title', 'field_6797cdc8c417e'),
(52, 24, 'metadesciption', ''),
(53, 24, '_metadesciption', 'field_6797cdd9c417f'),
(54, 24, 'canonical', 'https://www.franperez.com'),
(55, 24, '_canonical', 'field_6797cdfbc4180'),
(56, 24, 'og_image', ''),
(57, 24, '_og_image', 'field_6797ce6c9fbfb'),
(58, 24, 'rrss', '0'),
(59, 24, '_rrss', 'field_6797d10ccd885'),
(60, 24, 'rating_adult', '0'),
(61, 24, '_rating_adult', 'field_6797cf7a9fc00'),
(62, 25, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(63, 25, '_metarobots', 'field_6799236daba49'),
(64, 25, 'custom_meta', ''),
(65, 25, '_custom_meta', 'field_6797c9eb25fc8'),
(66, 25, 'title', 'Blog'),
(67, 25, '_title', 'field_6797cdc8c417e'),
(68, 25, 'metadesciption', ''),
(69, 25, '_metadesciption', 'field_6797cdd9c417f'),
(70, 25, 'canonical', 'https://www.franperez.com'),
(71, 25, '_canonical', 'field_6797cdfbc4180'),
(72, 25, 'og_image', ''),
(73, 25, '_og_image', 'field_6797ce6c9fbfb'),
(74, 25, 'rrss', '0'),
(75, 25, '_rrss', 'field_6797d10ccd885'),
(76, 25, 'rating_adult', '0'),
(77, 25, '_rating_adult', 'field_6797cf7a9fc00'),
(78, 24, '_wp_trash_meta_status', 'publish'),
(79, 24, '_wp_trash_meta_time', '1739199142'),
(80, 24, '_wp_desired_post_slug', 'blog'),
(81, 3, '_wp_trash_meta_status', 'draft'),
(82, 3, '_wp_trash_meta_time', '1739199146'),
(83, 3, '_wp_desired_post_slug', 'politica-privacidad'),
(84, 29, '_edit_last', '1'),
(85, 29, '_edit_lock', '1739545650:1'),
(86, 29, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(87, 29, '_metarobots', 'field_6799236daba49'),
(88, 29, 'custom_meta', ''),
(89, 29, '_custom_meta', 'field_6797c9eb25fc8'),
(90, 29, 'title', ''),
(91, 29, '_title', 'field_6797cdc8c417e'),
(92, 29, 'metadesciption', ''),
(93, 29, '_metadesciption', 'field_6797cdd9c417f'),
(94, 29, 'canonical', ''),
(95, 29, '_canonical', 'field_6797cdfbc4180'),
(96, 29, 'og_image', ''),
(97, 29, '_og_image', 'field_6797ce6c9fbfb'),
(98, 29, 'rrss', '0'),
(99, 29, '_rrss', 'field_6797d10ccd885'),
(100, 29, 'rating_adult', '0'),
(101, 29, '_rating_adult', 'field_6797cf7a9fc00'),
(102, 30, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(103, 30, '_metarobots', 'field_6799236daba49'),
(104, 30, 'custom_meta', ''),
(105, 30, '_custom_meta', 'field_6797c9eb25fc8'),
(106, 30, 'title', ''),
(107, 30, '_title', 'field_6797cdc8c417e'),
(108, 30, 'metadesciption', ''),
(109, 30, '_metadesciption', 'field_6797cdd9c417f'),
(110, 30, 'canonical', ''),
(111, 30, '_canonical', 'field_6797cdfbc4180'),
(112, 30, 'og_image', ''),
(113, 30, '_og_image', 'field_6797ce6c9fbfb'),
(114, 30, 'rrss', '0'),
(115, 30, '_rrss', 'field_6797d10ccd885'),
(116, 30, 'rating_adult', '0'),
(117, 30, '_rating_adult', 'field_6797cf7a9fc00'),
(118, 31, '_edit_last', '1'),
(119, 31, '_edit_lock', '1739472770:1'),
(120, 31, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(121, 31, '_metarobots', 'field_6799236daba49'),
(122, 31, 'custom_meta', ''),
(123, 31, '_custom_meta', 'field_6797c9eb25fc8'),
(124, 31, 'title', ''),
(125, 31, '_title', 'field_6797cdc8c417e'),
(126, 31, 'metadesciption', ''),
(127, 31, '_metadesciption', 'field_6797cdd9c417f'),
(128, 31, 'canonical', ''),
(129, 31, '_canonical', 'field_6797cdfbc4180'),
(130, 31, 'og_image', ''),
(131, 31, '_og_image', 'field_6797ce6c9fbfb'),
(132, 31, 'rrss', '0'),
(133, 31, '_rrss', 'field_6797d10ccd885'),
(134, 31, 'rating_adult', '0'),
(135, 31, '_rating_adult', 'field_6797cf7a9fc00'),
(136, 32, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(137, 32, '_metarobots', 'field_6799236daba49'),
(138, 32, 'custom_meta', ''),
(139, 32, '_custom_meta', 'field_6797c9eb25fc8'),
(140, 32, 'title', ''),
(141, 32, '_title', 'field_6797cdc8c417e'),
(142, 32, 'metadesciption', ''),
(143, 32, '_metadesciption', 'field_6797cdd9c417f'),
(144, 32, 'canonical', ''),
(145, 32, '_canonical', 'field_6797cdfbc4180'),
(146, 32, 'og_image', ''),
(147, 32, '_og_image', 'field_6797ce6c9fbfb'),
(148, 32, 'rrss', '0'),
(149, 32, '_rrss', 'field_6797d10ccd885'),
(150, 32, 'rating_adult', '0'),
(151, 32, '_rating_adult', 'field_6797cf7a9fc00'),
(152, 1, '_wp_trash_meta_status', 'publish'),
(153, 1, '_wp_trash_meta_time', '1739199488'),
(154, 1, '_wp_desired_post_slug', 'hola-mundo'),
(155, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(158, 35, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(159, 35, '_metarobots', 'field_6799236daba49'),
(160, 35, 'custom_meta', ''),
(161, 35, '_custom_meta', 'field_6797c9eb25fc8'),
(162, 35, 'title', ''),
(163, 35, '_title', 'field_6797cdc8c417e'),
(164, 35, 'metadesciption', ''),
(165, 35, '_metadesciption', 'field_6797cdd9c417f'),
(166, 35, 'canonical', ''),
(167, 35, '_canonical', 'field_6797cdfbc4180'),
(168, 35, 'og_image', ''),
(169, 35, '_og_image', 'field_6797ce6c9fbfb'),
(170, 35, 'rrss', '0'),
(171, 35, '_rrss', 'field_6797d10ccd885'),
(172, 35, 'rating_adult', '0'),
(173, 35, '_rating_adult', 'field_6797cf7a9fc00'),
(174, 36, '_edit_last', '1'),
(175, 36, '_edit_lock', '1739289424:1'),
(178, 36, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(179, 36, '_metarobots', 'field_6799236daba49'),
(180, 36, 'custom_meta', ''),
(181, 36, '_custom_meta', 'field_6797c9eb25fc8'),
(182, 36, 'title', ''),
(183, 36, '_title', 'field_6797cdc8c417e'),
(184, 36, 'metadesciption', ''),
(185, 36, '_metadesciption', 'field_6797cdd9c417f'),
(186, 36, 'canonical', ''),
(187, 36, '_canonical', 'field_6797cdfbc4180'),
(188, 36, 'og_image', ''),
(189, 36, '_og_image', 'field_6797ce6c9fbfb'),
(190, 36, 'rrss', '0'),
(191, 36, '_rrss', 'field_6797d10ccd885'),
(192, 36, 'rating_adult', '0'),
(193, 36, '_rating_adult', 'field_6797cf7a9fc00'),
(194, 37, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(195, 37, '_metarobots', 'field_6799236daba49'),
(196, 37, 'custom_meta', ''),
(197, 37, '_custom_meta', 'field_6797c9eb25fc8'),
(198, 37, 'title', ''),
(199, 37, '_title', 'field_6797cdc8c417e'),
(200, 37, 'metadesciption', ''),
(201, 37, '_metadesciption', 'field_6797cdd9c417f'),
(202, 37, 'canonical', ''),
(203, 37, '_canonical', 'field_6797cdfbc4180'),
(204, 37, 'og_image', ''),
(205, 37, '_og_image', 'field_6797ce6c9fbfb'),
(206, 37, 'rrss', '0'),
(207, 37, '_rrss', 'field_6797d10ccd885'),
(208, 37, 'rating_adult', '0'),
(209, 37, '_rating_adult', 'field_6797cf7a9fc00'),
(212, 39, '_edit_last', '1'),
(213, 39, '_edit_lock', '1739291735:1'),
(216, 45, '_edit_last', '1'),
(217, 45, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(218, 45, '_metarobots', 'field_6799236daba49'),
(219, 45, 'custom_meta', ''),
(220, 45, '_custom_meta', 'field_6797c9eb25fc8'),
(221, 45, 'title', ''),
(222, 45, '_title', 'field_6797cdc8c417e'),
(223, 45, 'metadesciption', ''),
(224, 45, '_metadesciption', 'field_6797cdd9c417f'),
(225, 45, 'canonical', ''),
(226, 45, '_canonical', 'field_6797cdfbc4180'),
(227, 45, 'og_image', ''),
(228, 45, '_og_image', 'field_6797ce6c9fbfb'),
(229, 45, 'rrss', '0'),
(230, 45, '_rrss', 'field_6797d10ccd885'),
(231, 45, 'rating_adult', '0'),
(232, 45, '_rating_adult', 'field_6797cf7a9fc00'),
(233, 46, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(234, 46, '_metarobots', 'field_6799236daba49'),
(235, 46, 'custom_meta', ''),
(236, 46, '_custom_meta', 'field_6797c9eb25fc8'),
(237, 46, 'title', ''),
(238, 46, '_title', 'field_6797cdc8c417e'),
(239, 46, 'metadesciption', ''),
(240, 46, '_metadesciption', 'field_6797cdd9c417f'),
(241, 46, 'canonical', ''),
(242, 46, '_canonical', 'field_6797cdfbc4180'),
(243, 46, 'og_image', ''),
(244, 46, '_og_image', 'field_6797ce6c9fbfb'),
(245, 46, 'rrss', '0'),
(246, 46, '_rrss', 'field_6797d10ccd885'),
(247, 46, 'rating_adult', '0'),
(248, 46, '_rating_adult', 'field_6797cf7a9fc00'),
(249, 45, '_edit_lock', '1739202552:1'),
(250, 45, '_wp_trash_meta_status', 'publish'),
(251, 45, '_wp_trash_meta_time', '1739202700'),
(252, 45, '_wp_desired_post_slug', '45-2'),
(255, 49, '_wp_attached_file', '2025/02/Screenshot-2025-01-31-175747.png'),
(256, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1021;s:6:\"height\";i:982;s:4:\"file\";s:40:\"2025/02/Screenshot-2025-01-31-175747.png\";s:8:\"filesize\";i:735747;s:5:\"sizes\";a:1:{s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-01-31-175747-768x739.png\";s:5:\"width\";i:768;s:6:\"height\";i:739;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:473094;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(259, 50, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(260, 50, '_metarobots', 'field_6799236daba49'),
(261, 50, 'custom_meta', ''),
(262, 50, '_custom_meta', 'field_6797c9eb25fc8'),
(263, 50, 'title', ''),
(264, 50, '_title', 'field_6797cdc8c417e'),
(265, 50, 'metadesciption', ''),
(266, 50, '_metadesciption', 'field_6797cdd9c417f'),
(267, 50, 'canonical', ''),
(268, 50, '_canonical', 'field_6797cdfbc4180'),
(269, 50, 'og_image', ''),
(270, 50, '_og_image', 'field_6797ce6c9fbfb'),
(271, 50, 'rrss', '0'),
(272, 50, '_rrss', 'field_6797d10ccd885'),
(273, 50, 'rating_adult', '0'),
(274, 50, '_rating_adult', 'field_6797cf7a9fc00'),
(275, 52, '_edit_last', '1'),
(276, 52, '_edit_lock', '1739289614:1'),
(279, 52, 'imagen_blog', ''),
(280, 52, '_imagen_blog', 'field_67aa1b5d60f49'),
(281, 52, 'titulo_blog', 'MVPASS'),
(282, 52, '_titulo_blog', 'field_67aa1cbb60f4a'),
(283, 52, 'categoria', ''),
(284, 52, '_categoria', 'field_67aa1e4a01fa1'),
(285, 52, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(286, 52, '_metarobots', 'field_6799236daba49'),
(287, 52, 'custom_meta', ''),
(288, 52, '_custom_meta', 'field_6797c9eb25fc8'),
(289, 52, 'title', ''),
(290, 52, '_title', 'field_6797cdc8c417e'),
(291, 52, 'metadesciption', ''),
(292, 52, '_metadesciption', 'field_6797cdd9c417f'),
(293, 52, 'canonical', ''),
(294, 52, '_canonical', 'field_6797cdfbc4180'),
(295, 52, 'og_image', ''),
(296, 52, '_og_image', 'field_6797ce6c9fbfb'),
(297, 52, 'rrss', '0'),
(298, 52, '_rrss', 'field_6797d10ccd885'),
(299, 52, 'rating_adult', '0'),
(300, 52, '_rating_adult', 'field_6797cf7a9fc00'),
(301, 53, 'imagen_blog', ''),
(302, 53, '_imagen_blog', 'field_67aa1b5d60f49'),
(303, 53, 'titulo_blog', 'MVPASS'),
(304, 53, '_titulo_blog', 'field_67aa1cbb60f4a'),
(305, 53, 'categoria', ''),
(306, 53, '_categoria', 'field_67aa1e4a01fa1'),
(307, 53, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(308, 53, '_metarobots', 'field_6799236daba49'),
(309, 53, 'custom_meta', ''),
(310, 53, '_custom_meta', 'field_6797c9eb25fc8'),
(311, 53, 'title', ''),
(312, 53, '_title', 'field_6797cdc8c417e'),
(313, 53, 'metadesciption', ''),
(314, 53, '_metadesciption', 'field_6797cdd9c417f'),
(315, 53, 'canonical', ''),
(316, 53, '_canonical', 'field_6797cdfbc4180'),
(317, 53, 'og_image', ''),
(318, 53, '_og_image', 'field_6797ce6c9fbfb'),
(319, 53, 'rrss', '0'),
(320, 53, '_rrss', 'field_6797d10ccd885'),
(321, 53, 'rating_adult', '0'),
(322, 53, '_rating_adult', 'field_6797cf7a9fc00'),
(323, 55, '_edit_last', '1'),
(324, 55, '_edit_lock', '1739290681:1'),
(327, 55, 'imagen_blog', '49'),
(328, 55, '_imagen_blog', 'field_67aa1b5d60f49'),
(329, 55, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(330, 55, '_metarobots', 'field_6799236daba49'),
(331, 55, 'custom_meta', ''),
(332, 55, '_custom_meta', 'field_6797c9eb25fc8'),
(333, 55, 'title', ''),
(334, 55, '_title', 'field_6797cdc8c417e'),
(335, 55, 'metadesciption', ''),
(336, 55, '_metadesciption', 'field_6797cdd9c417f'),
(337, 55, 'canonical', ''),
(338, 55, '_canonical', 'field_6797cdfbc4180'),
(339, 55, 'og_image', ''),
(340, 55, '_og_image', 'field_6797ce6c9fbfb'),
(341, 55, 'rrss', '0'),
(342, 55, '_rrss', 'field_6797d10ccd885'),
(343, 55, 'rating_adult', '0'),
(344, 55, '_rating_adult', 'field_6797cf7a9fc00'),
(345, 56, 'imagen_blog', '49'),
(346, 56, '_imagen_blog', 'field_67aa1b5d60f49'),
(347, 56, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(348, 56, '_metarobots', 'field_6799236daba49'),
(349, 56, 'custom_meta', ''),
(350, 56, '_custom_meta', 'field_6797c9eb25fc8'),
(351, 56, 'title', ''),
(352, 56, '_title', 'field_6797cdc8c417e'),
(353, 56, 'metadesciption', ''),
(354, 56, '_metadesciption', 'field_6797cdd9c417f'),
(355, 56, 'canonical', ''),
(356, 56, '_canonical', 'field_6797cdfbc4180'),
(357, 56, 'og_image', ''),
(358, 56, '_og_image', 'field_6797ce6c9fbfb'),
(359, 56, 'rrss', '0'),
(360, 56, '_rrss', 'field_6797d10ccd885'),
(361, 56, 'rating_adult', '0'),
(362, 56, '_rating_adult', 'field_6797cf7a9fc00'),
(365, 57, 'imagen_blog', '49'),
(366, 57, '_imagen_blog', 'field_67aa1b5d60f49'),
(367, 57, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(368, 57, '_metarobots', 'field_6799236daba49'),
(369, 57, 'custom_meta', ''),
(370, 57, '_custom_meta', 'field_6797c9eb25fc8'),
(371, 57, 'title', ''),
(372, 57, '_title', 'field_6797cdc8c417e'),
(373, 57, 'metadesciption', ''),
(374, 57, '_metadesciption', 'field_6797cdd9c417f'),
(375, 57, 'canonical', ''),
(376, 57, '_canonical', 'field_6797cdfbc4180'),
(377, 57, 'og_image', ''),
(378, 57, '_og_image', 'field_6797ce6c9fbfb'),
(379, 57, 'rrss', '0'),
(380, 57, '_rrss', 'field_6797d10ccd885'),
(381, 57, 'rating_adult', '0'),
(382, 57, '_rating_adult', 'field_6797cf7a9fc00'),
(383, 61, '_edit_last', '1'),
(384, 61, '_edit_lock', '1739545721:1'),
(385, 62, '_wp_attached_file', '2025/02/portrait.webp'),
(386, 62, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1217;s:4:\"file\";s:21:\"2025/02/portrait.webp\";s:8:\"filesize\";i:131962;s:5:\"sizes\";a:1:{s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"portrait-768x779.webp\";s:5:\"width\";i:768;s:6:\"height\";i:779;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:71838;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(389, 61, 'imagen_cover', '66'),
(390, 61, '_imagen_cover', 'field_67aa1b5d60f49'),
(391, 61, 'intro', 'Para entender el design thinking, primero tenemos que....'),
(392, 61, '_intro', 'field_67ab7779da88a'),
(393, 61, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(394, 61, '_metarobots', 'field_6799236daba49'),
(395, 61, 'custom_meta', ''),
(396, 61, '_custom_meta', 'field_6797c9eb25fc8'),
(397, 61, 'title', ''),
(398, 61, '_title', 'field_6797cdc8c417e'),
(399, 61, 'metadesciption', ''),
(400, 61, '_metadesciption', 'field_6797cdd9c417f'),
(401, 61, 'canonical', ''),
(402, 61, '_canonical', 'field_6797cdfbc4180'),
(403, 61, 'og_image', ''),
(404, 61, '_og_image', 'field_6797ce6c9fbfb'),
(405, 61, 'rrss', '0'),
(406, 61, '_rrss', 'field_6797d10ccd885'),
(407, 61, 'rating_adult', '0'),
(408, 61, '_rating_adult', 'field_6797cf7a9fc00'),
(409, 63, 'imagen_cover', '62'),
(410, 63, '_imagen_cover', 'field_67aa1b5d60f49'),
(411, 63, 'intro', 'Para entender el design thinking, primero tenemos que....'),
(412, 63, '_intro', 'field_67ab7779da88a'),
(413, 63, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(414, 63, '_metarobots', 'field_6799236daba49'),
(415, 63, 'custom_meta', ''),
(416, 63, '_custom_meta', 'field_6797c9eb25fc8'),
(417, 63, 'title', ''),
(418, 63, '_title', 'field_6797cdc8c417e'),
(419, 63, 'metadesciption', ''),
(420, 63, '_metadesciption', 'field_6797cdd9c417f'),
(421, 63, 'canonical', ''),
(422, 63, '_canonical', 'field_6797cdfbc4180'),
(423, 63, 'og_image', ''),
(424, 63, '_og_image', 'field_6797ce6c9fbfb'),
(425, 63, 'rrss', '0'),
(426, 63, '_rrss', 'field_6797d10ccd885'),
(427, 63, 'rating_adult', '0'),
(428, 63, '_rating_adult', 'field_6797cf7a9fc00'),
(433, 61, 'texto', 'lWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
(434, 61, '_texto', 'field_67ab7c5a8bc91'),
(435, 65, 'imagen_cover', '62'),
(436, 65, '_imagen_cover', 'field_67aa1b5d60f49'),
(437, 65, 'intro', 'Para entender el design thinking, primero tenemos que....'),
(438, 65, '_intro', 'field_67ab7779da88a'),
(439, 65, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(440, 65, '_metarobots', 'field_6799236daba49'),
(441, 65, 'custom_meta', ''),
(442, 65, '_custom_meta', 'field_6797c9eb25fc8'),
(443, 65, 'title', ''),
(444, 65, '_title', 'field_6797cdc8c417e'),
(445, 65, 'metadesciption', ''),
(446, 65, '_metadesciption', 'field_6797cdd9c417f'),
(447, 65, 'canonical', ''),
(448, 65, '_canonical', 'field_6797cdfbc4180'),
(449, 65, 'og_image', ''),
(450, 65, '_og_image', 'field_6797ce6c9fbfb'),
(451, 65, 'rrss', '0'),
(452, 65, '_rrss', 'field_6797d10ccd885'),
(453, 65, 'rating_adult', '0'),
(454, 65, '_rating_adult', 'field_6797cf7a9fc00'),
(455, 65, 'texto', 'lWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
(456, 65, '_texto', 'field_67ab7c5a8bc91'),
(457, 66, '_wp_attached_file', '2025/02/design-thinking.webp'),
(458, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:882;s:4:\"file\";s:28:\"2025/02/design-thinking.webp\";s:8:\"filesize\";i:41518;s:5:\"sizes\";a:2:{s:12:\"medium_large\";a:5:{s:4:\"file\";s:28:\"design-thinking-768x339.webp\";s:5:\"width\";i:768;s:6:\"height\";i:339;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:15840;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:29:\"design-thinking-1536x677.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:677;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:33298;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(459, 66, '_wp_attachment_image_alt', 'Design Thiking representation'),
(462, 67, 'imagen_cover', '66'),
(463, 67, '_imagen_cover', 'field_67aa1b5d60f49'),
(464, 67, 'intro', 'Para entender el design thinking, primero tenemos que....'),
(465, 67, '_intro', 'field_67ab7779da88a'),
(466, 67, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(467, 67, '_metarobots', 'field_6799236daba49'),
(468, 67, 'custom_meta', ''),
(469, 67, '_custom_meta', 'field_6797c9eb25fc8'),
(470, 67, 'title', ''),
(471, 67, '_title', 'field_6797cdc8c417e'),
(472, 67, 'metadesciption', ''),
(473, 67, '_metadesciption', 'field_6797cdd9c417f'),
(474, 67, 'canonical', ''),
(475, 67, '_canonical', 'field_6797cdfbc4180'),
(476, 67, 'og_image', ''),
(477, 67, '_og_image', 'field_6797ce6c9fbfb'),
(478, 67, 'rrss', '0'),
(479, 67, '_rrss', 'field_6797d10ccd885'),
(480, 67, 'rating_adult', '0'),
(481, 67, '_rating_adult', 'field_6797cf7a9fc00'),
(482, 67, 'texto', 'lWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
(483, 67, '_texto', 'field_67ab7c5a8bc91');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-02-04 15:40:35', '2025-02-04 14:40:35', '<!-- wp:paragraph -->\n<p>Te damos la bienvenida a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola, mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2025-02-10 15:58:08', '2025-02-10 14:58:08', '', 0, 'http://fran-perez.test/?p=1', 0, 'post', '', 1),
(2, 1, '2025-02-04 15:40:35', '2025-02-04 14:40:35', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Hola! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://fran-perez.test/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-ejemplo__trashed', '', '', '2025-02-10 15:49:24', '2025-02-10 14:49:24', '', 0, 'http://fran-perez.test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-02-04 15:40:35', '2025-02-04 14:40:35', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quiénes somos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>La dirección de nuestra web es: http://fran-perez.test.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comentarios</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de tu comentario.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Medios</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes a la web, deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de ubicación de las imágenes de la web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Cuando accedas, también instalaremos varias cookies para guardar tu información de acceso y tus opciones de visualización de pantalla. Las cookies de acceso duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas «Recuérdarme», tu acceso perdurará durante dos semanas. Si sales de tu cuenta, las cookies de acceso se eliminarán.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contenido incrustado de otros sitios web</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Con quién compartimos tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cuánto tiempo conservamos tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente, en lugar de mantenerlos en una cola de moderación.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Qué derechos tienes sobre tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Dónde se envían tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p>\n<!-- /wp:paragraph -->\n', 'Política de privacidad', '', 'trash', 'closed', 'open', '', 'politica-privacidad__trashed', '', '', '2025-02-10 15:52:26', '2025-02-10 14:52:26', '', 0, 'http://fran-perez.test/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-02-04 15:40:38', '2025-02-04 14:40:38', '<!-- wp:page-list /-->', 'Navegación', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-02-04 15:40:38', '2025-02-04 14:40:38', '', 0, 'http://fran-perez.test/index.php/2025/02/04/navigation/', 0, 'wp_navigation', '', 0),
(7, 1, '2025-02-04 15:51:37', '2025-02-04 14:51:37', 'a:8:{s:8:\"location\";a:3:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"category\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Metaetiquetas', 'metaetiquetas', 'publish', 'closed', 'closed', '', 'group_6797c9eb4012c', '', '', '2025-02-04 15:51:37', '2025-02-04 14:51:37', '', 0, 'http://fran-perez.test/?p=7', 0, 'acf-field-group', '', 0),
(8, 1, '2025-02-04 15:51:37', '2025-02-04 14:51:37', 'a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:11:{s:3:\"all\";s:14:\"Index & Follow\";s:5:\"index\";s:5:\"index\";s:6:\"follow\";s:6:\"Follow\";s:7:\"noindex\";s:8:\"No Index\";s:8:\"nofollow\";s:9:\"No Follow\";s:4:\"none\";s:20:\"No Index & No Follow\";s:9:\"noarchive\";s:9:\"Sin cache\";s:9:\"nosnippet\";s:14:\"Sin fragmentos\";s:15:\"indexifembedded\";s:37:\"Indexifembedded solo vale con noindex\";s:11:\"notranslate\";s:10:\"No traduce\";s:12:\"noimageindex\";s:22:\"Imagenes no se indexan\";}s:13:\"default_value\";a:1:{i:0;s:3:\"all\";}s:13:\"return_format\";s:5:\"value\";s:12:\"allow_custom\";i:0;s:17:\"allow_in_bindings\";i:0;s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:11:\"save_custom\";i:0;s:25:\"custom_choice_button_text\";s:21:\"Añadir nueva opción\";}', 'metarobots', 'metarobots', 'publish', 'closed', 'closed', '', 'field_6799236daba49', '', '', '2025-02-04 15:51:37', '2025-02-04 14:51:37', '', 7, 'http://fran-perez.test/?post_type=acf-field&p=8', 0, 'acf-field', '', 0),
(9, 1, '2025-02-04 15:51:37', '2025-02-04 14:51:37', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";i:2;s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Metatags personalizados', 'custom_meta', 'publish', 'closed', 'closed', '', 'field_6797c9eb25fc8', '', '', '2025-02-04 15:51:37', '2025-02-04 14:51:37', '', 7, 'http://fran-perez.test/?post_type=acf-field&p=9', 1, 'acf-field', '', 0),
(10, 1, '2025-02-04 15:51:37', '2025-02-04 14:51:37', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Título', 'title', 'publish', 'closed', 'closed', '', 'field_6797cdc8c417e', '', '', '2025-02-04 15:51:37', '2025-02-04 14:51:37', '', 7, 'http://fran-perez.test/?post_type=acf-field&p=10', 2, 'acf-field', '', 0),
(11, 1, '2025-02-04 15:51:37', '2025-02-04 14:51:37', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Metadescription', 'metadesciption', 'publish', 'closed', 'closed', '', 'field_6797cdd9c417f', '', '', '2025-02-04 15:51:37', '2025-02-04 14:51:37', '', 7, 'http://fran-perez.test/?post_type=acf-field&p=11', 3, 'acf-field', '', 0),
(12, 1, '2025-02-04 15:51:37', '2025-02-04 14:51:37', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'canonical', 'canonical', 'publish', 'closed', 'closed', '', 'field_6797cdfbc4180', '', '', '2025-02-04 15:51:37', '2025-02-04 14:51:37', '', 7, 'http://fran-perez.test/?post_type=acf-field&p=12', 4, 'acf-field', '', 0),
(13, 1, '2025-02-04 15:51:37', '2025-02-04 14:51:37', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";i:600;s:10:\"min_height\";i:600;s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";i:600;s:10:\"max_height\";i:600;s:8:\"max_size\";i:1;s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'og image', 'og_image', 'publish', 'closed', 'closed', '', 'field_6797ce6c9fbfb', '', '', '2025-02-04 15:51:37', '2025-02-04 14:51:37', '', 7, 'http://fran-perez.test/?post_type=acf-field&p=13', 5, 'acf-field', '', 0),
(14, 1, '2025-02-04 15:51:37', '2025-02-04 14:51:37', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:17:\"allow_in_bindings\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Redes sociales?', 'rrss', 'publish', 'closed', 'closed', '', 'field_6797d10ccd885', '', '', '2025-02-04 15:51:37', '2025-02-04 14:51:37', '', 7, 'http://fran-perez.test/?post_type=acf-field&p=14', 6, 'acf-field', '', 0),
(15, 1, '2025-02-04 15:51:37', '2025-02-04 14:51:37', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_6797d10ccd885\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Títlo open graph', 'og_title', 'publish', 'closed', 'closed', '', 'field_6797ced59fbfc', '', '', '2025-02-04 15:51:37', '2025-02-04 14:51:37', '', 7, 'http://fran-perez.test/?post_type=acf-field&p=15', 7, 'acf-field', '', 0),
(16, 1, '2025-02-04 15:51:37', '2025-02-04 14:51:37', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_6797d10ccd885\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Desciption open graph', 'og_description', 'publish', 'closed', 'closed', '', 'field_6797cf289fbfd', '', '', '2025-02-04 15:51:37', '2025-02-04 14:51:37', '', 7, 'http://fran-perez.test/?post_type=acf-field&p=16', 8, 'acf-field', '', 0),
(17, 1, '2025-02-04 15:51:37', '2025-02-04 14:51:37', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_6797d10ccd885\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Twitter title', 'twitter_title', 'publish', 'closed', 'closed', '', 'field_6797cf599fbff', '', '', '2025-02-04 15:51:37', '2025-02-04 14:51:37', '', 7, 'http://fran-perez.test/?post_type=acf-field&p=17', 9, 'acf-field', '', 0),
(18, 1, '2025-02-04 15:51:37', '2025-02-04 14:51:37', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_6797d10ccd885\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Twitter description', 'twitter_description', 'publish', 'closed', 'closed', '', 'field_6797cf4d9fbfe', '', '', '2025-02-04 15:51:37', '2025-02-04 14:51:37', '', 7, 'http://fran-perez.test/?post_type=acf-field&p=18', 10, 'acf-field', '', 0),
(19, 1, '2025-02-04 15:51:37', '2025-02-04 14:51:37', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:17:\"allow_in_bindings\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Es de adultos?', 'rating_adult', 'publish', 'closed', 'closed', '', 'field_6797cf7a9fc00', '', '', '2025-02-04 15:51:37', '2025-02-04 14:51:37', '', 7, 'http://fran-perez.test/?post_type=acf-field&p=19', 11, 'acf-field', '', 0),
(21, 1, '2025-02-06 09:32:16', '2025-02-06 08:32:16', 'Que es?\r\n\r\n....\r\n\r\n&nbsp;\r\n\r\n.\r\n\r\n.\r\n\r\n.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Hablemos de Design Thinking', '', 'publish', 'open', 'open', '', 'prueba', '', '', '2025-02-10 16:00:07', '2025-02-10 15:00:07', '', 0, 'http://fran-perez.test/?p=21', 0, 'post', '', 0),
(22, 1, '2025-02-06 09:32:16', '2025-02-06 08:32:16', 'Esto es  una prueba\r\n\r\n&nbsp;', 'Prueba', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2025-02-06 09:32:16', '2025-02-06 08:32:16', '', 21, 'http://fran-perez.test/?p=22', 0, 'revision', '', 0),
(23, 1, '2025-02-10 15:49:24', '2025-02-10 14:49:24', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Hola! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://fran-perez.test/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-02-10 15:49:24', '2025-02-10 14:49:24', '', 2, 'http://fran-perez.test/?p=23', 0, 'revision', '', 0),
(24, 1, '2025-02-10 15:50:31', '2025-02-10 14:50:31', '', 'Blog', '', 'trash', 'closed', 'closed', '', 'blog__trashed', '', '', '2025-02-10 15:52:22', '2025-02-10 14:52:22', '', 0, 'http://fran-perez.test/?page_id=24', 0, 'page', '', 0),
(25, 1, '2025-02-10 15:50:31', '2025-02-10 14:50:31', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2025-02-10 15:50:31', '2025-02-10 14:50:31', '', 24, 'http://fran-perez.test/?p=25', 0, 'revision', '', 0),
(26, 1, '2025-02-10 15:52:26', '2025-02-10 14:52:26', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quiénes somos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>La dirección de nuestra web es: http://fran-perez.test.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comentarios</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de tu comentario.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Medios</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes a la web, deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de ubicación de las imágenes de la web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Cuando accedas, también instalaremos varias cookies para guardar tu información de acceso y tus opciones de visualización de pantalla. Las cookies de acceso duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas «Recuérdarme», tu acceso perdurará durante dos semanas. Si sales de tu cuenta, las cookies de acceso se eliminarán.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contenido incrustado de otros sitios web</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Con quién compartimos tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cuánto tiempo conservamos tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente, en lugar de mantenerlos en una cola de moderación.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Qué derechos tienes sobre tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Dónde se envían tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p>\n<!-- /wp:paragraph -->\n', 'Política de privacidad', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2025-02-10 15:52:26', '2025-02-10 14:52:26', '', 3, 'http://fran-perez.test/?p=26', 0, 'revision', '', 0),
(27, 1, '2025-02-10 15:52:28', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-02-10 15:52:28', '0000-00-00 00:00:00', '', 0, 'http://fran-perez.test/?page_id=27', 0, 'page', '', 0),
(28, 1, '2025-02-10 15:52:36', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-02-10 15:52:36', '0000-00-00 00:00:00', '', 0, 'http://fran-perez.test/?p=28', 0, 'post', '', 0),
(29, 1, '2025-02-10 15:54:18', '2025-02-10 14:54:18', 'Página de inicio', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2025-02-10 15:54:18', '2025-02-10 14:54:18', '', 0, 'http://fran-perez.test/?page_id=29', 0, 'page', '', 0),
(30, 1, '2025-02-10 15:54:18', '2025-02-10 14:54:18', 'Página de inicio', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2025-02-10 15:54:18', '2025-02-10 14:54:18', '', 29, 'http://fran-perez.test/?p=30', 0, 'revision', '', 0),
(31, 1, '2025-02-10 15:54:46', '2025-02-10 14:54:46', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2025-02-10 15:54:46', '2025-02-10 14:54:46', '', 0, 'http://fran-perez.test/?page_id=31', 0, 'page', '', 0),
(32, 1, '2025-02-10 15:54:46', '2025-02-10 14:54:46', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2025-02-10 15:54:46', '2025-02-10 14:54:46', '', 31, 'http://fran-perez.test/?p=32', 0, 'revision', '', 0),
(33, 1, '2025-02-10 15:58:08', '2025-02-10 14:58:08', '<!-- wp:paragraph -->\n<p>Te damos la bienvenida a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2025-02-10 15:58:08', '2025-02-10 14:58:08', '', 1, 'http://fran-perez.test/?p=33', 0, 'revision', '', 0),
(34, 1, '2025-02-10 15:59:11', '2025-02-10 14:59:11', '&nbsp;\n\n&nbsp;', 'Hablemos de Design Thinking', '', 'inherit', 'closed', 'closed', '', '21-autosave-v1', '', '', '2025-02-10 15:59:11', '2025-02-10 14:59:11', '', 21, 'http://fran-perez.test/?p=34', 0, 'revision', '', 0),
(35, 1, '2025-02-10 16:00:07', '2025-02-10 15:00:07', 'Que es?\r\n\r\n....\r\n\r\n&nbsp;\r\n\r\n.\r\n\r\n.\r\n\r\n.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Hablemos de Design Thinking', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2025-02-10 16:00:07', '2025-02-10 15:00:07', '', 21, 'http://fran-perez.test/?p=35', 0, 'revision', '', 0),
(36, 1, '2025-02-10 16:00:30', '2025-02-10 15:00:30', 'dsdsdsdsds\r\n\r\n<img class=\"alignnone size-full wp-image-49\" src=\"http://fran-perez.test/wp-content/uploads/2025/02/Screenshot-2025-01-31-175747.png\" alt=\"\" width=\"1021\" height=\"982\" />', 'MVP', '', 'publish', 'open', 'open', '', 'mvp', '', '', '2025-02-11 16:58:11', '2025-02-11 15:58:11', '', 0, 'http://fran-perez.test/?p=36', 0, 'post', '', 0),
(37, 1, '2025-02-10 16:00:30', '2025-02-10 15:00:30', 'sdsds', 'MVP', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2025-02-10 16:00:30', '2025-02-10 15:00:30', '', 36, 'http://fran-perez.test/?p=37', 0, 'revision', '', 0),
(38, 1, '2025-02-10 16:17:39', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-02-10 16:17:39', '0000-00-00 00:00:00', '', 0, 'http://fran-perez.test/?page_id=38', 0, 'page', '', 0),
(39, 1, '2025-02-10 16:35:27', '2025-02-10 15:35:27', 'a:8:{s:8:\"location\";a:4:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"category:blog\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"category:seo\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"category:uidesign\";}}i:3;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"category:uxdesign\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Blog', 'blog', 'publish', 'closed', 'closed', '', 'group_67aa1b5ce931f', '', '', '2025-02-11 17:37:39', '2025-02-11 16:37:39', '', 0, 'http://fran-perez.test/?post_type=acf-field-group&#038;p=39', 0, 'acf-field-group', '', 0),
(40, 1, '2025-02-10 16:35:27', '2025-02-10 15:35:27', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen cover', 'imagen_cover', 'publish', 'closed', 'closed', '', 'field_67aa1b5d60f49', '', '', '2025-02-11 17:37:39', '2025-02-11 16:37:39', '', 39, 'http://fran-perez.test/?post_type=acf-field&#038;p=40', 1, 'acf-field', '', 0),
(43, 1, '2025-02-10 16:42:50', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-02-10 16:42:50', '0000-00-00 00:00:00', '', 0, 'http://fran-perez.test/?p=43', 0, 'post', '', 0),
(44, 1, '2025-02-10 16:45:08', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-02-10 16:45:08', '0000-00-00 00:00:00', '', 0, 'http://fran-perez.test/?page_id=44', 0, 'page', '', 0),
(45, 1, '2025-02-10 16:51:32', '2025-02-10 15:51:32', '', '', '', 'trash', 'closed', 'closed', '', '45-2__trashed', '', '', '2025-02-10 16:51:40', '2025-02-10 15:51:40', '', 0, 'http://fran-perez.test/?page_id=45', 0, 'page', '', 0),
(46, 1, '2025-02-10 16:51:32', '2025-02-10 15:51:32', '', '', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2025-02-10 16:51:32', '2025-02-10 15:51:32', '', 45, 'http://fran-perez.test/?p=46', 0, 'revision', '', 0),
(47, 1, '2025-02-10 17:00:38', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-02-10 17:00:38', '0000-00-00 00:00:00', '', 0, 'http://fran-perez.test/?p=47', 0, 'post', '', 0),
(48, 1, '2025-02-10 17:00:46', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-02-10 17:00:46', '0000-00-00 00:00:00', '', 0, 'http://fran-perez.test/?page_id=48', 0, 'page', '', 0),
(49, 1, '2025-02-11 16:57:50', '2025-02-11 15:57:50', '', 'Screenshot 2025-01-31 175747', '', 'inherit', 'open', 'closed', '', 'screenshot-2025-01-31-175747', '', '', '2025-02-11 16:57:50', '2025-02-11 15:57:50', '', 36, 'http://fran-perez.test/wp-content/uploads/2025/02/Screenshot-2025-01-31-175747.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2025-02-11 16:58:11', '2025-02-11 15:58:11', 'dsdsdsdsds\r\n\r\n<img class=\"alignnone size-full wp-image-49\" src=\"http://fran-perez.test/wp-content/uploads/2025/02/Screenshot-2025-01-31-175747.png\" alt=\"\" width=\"1021\" height=\"982\" />', 'MVP', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2025-02-11 16:58:11', '2025-02-11 15:58:11', '', 36, 'http://fran-perez.test/?p=50', 0, 'revision', '', 0),
(51, 1, '2025-02-11 16:59:38', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-02-11 16:59:38', '0000-00-00 00:00:00', '', 0, 'http://fran-perez.test/?p=51', 0, 'post', '', 0),
(52, 1, '2025-02-11 17:01:07', '2025-02-11 16:01:07', '', 'MVPA', '', 'publish', 'open', 'open', '', 'mvpa', '', '', '2025-02-11 17:01:07', '2025-02-11 16:01:07', '', 0, 'http://fran-perez.test/?p=52', 0, 'post', '', 0),
(53, 1, '2025-02-11 17:01:07', '2025-02-11 16:01:07', '', 'MVPA', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2025-02-11 17:01:07', '2025-02-11 16:01:07', '', 52, 'http://fran-perez.test/?p=53', 0, 'revision', '', 0),
(54, 1, '2025-02-11 17:02:39', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-02-11 17:02:39', '0000-00-00 00:00:00', '', 0, 'http://fran-perez.test/?p=54', 0, 'post', '', 0),
(55, 1, '2025-02-11 17:09:26', '2025-02-11 16:09:26', 'Esto es el contenidfo\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-full wp-image-49\" src=\"http://fran-perez.test/wp-content/uploads/2025/02/Screenshot-2025-01-31-175747.png\" alt=\"\" width=\"1021\" height=\"982\" />', 'TEST', '', 'publish', 'open', 'open', '', 'test', '', '', '2025-02-11 17:12:00', '2025-02-11 16:12:00', '', 0, 'http://fran-perez.test/?p=55', 0, 'post', '', 0),
(56, 1, '2025-02-11 17:09:26', '2025-02-11 16:09:26', 'Esto es el contenidfo', 'TEST', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2025-02-11 17:09:26', '2025-02-11 16:09:26', '', 55, 'http://fran-perez.test/?p=56', 0, 'revision', '', 0),
(57, 1, '2025-02-11 17:12:00', '2025-02-11 16:12:00', 'Esto es el contenidfo\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-full wp-image-49\" src=\"http://fran-perez.test/wp-content/uploads/2025/02/Screenshot-2025-01-31-175747.png\" alt=\"\" width=\"1021\" height=\"982\" />', 'TEST', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2025-02-11 17:12:00', '2025-02-11 16:12:00', '', 55, 'http://fran-perez.test/?p=57', 0, 'revision', '', 0),
(58, 1, '2025-02-11 17:13:33', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-02-11 17:13:33', '0000-00-00 00:00:00', '', 0, 'http://fran-perez.test/?p=58', 0, 'post', '', 0),
(59, 1, '2025-02-11 17:16:12', '2025-02-11 16:16:12', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Intro', 'intro', 'publish', 'closed', 'closed', '', 'field_67ab7779da88a', '', '', '2025-02-11 17:37:39', '2025-02-11 16:37:39', '', 39, 'http://fran-perez.test/?post_type=acf-field&#038;p=59', 0, 'acf-field', '', 0),
(60, 1, '2025-02-11 17:19:41', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-02-11 17:19:41', '0000-00-00 00:00:00', '', 0, 'http://fran-perez.test/?p=60', 0, 'post', '', 0),
(61, 1, '2025-02-11 17:21:32', '2025-02-11 16:21:32', '', 'Design thinkin - Qué es?', '', 'publish', 'open', 'open', '', 'design-thinkin-que-es', '', '', '2025-02-14 16:11:03', '2025-02-14 15:11:03', '', 0, 'http://fran-perez.test/?p=61', 0, 'post', '', 0),
(62, 1, '2025-02-11 17:21:22', '2025-02-11 16:21:22', '', 'portrait', '', 'inherit', 'open', 'closed', '', 'portrait', '', '', '2025-02-11 17:21:22', '2025-02-11 16:21:22', '', 61, 'http://fran-perez.test/wp-content/uploads/2025/02/portrait.webp', 0, 'attachment', 'image/webp', 0),
(63, 1, '2025-02-11 17:21:32', '2025-02-11 16:21:32', '', 'Design thinkin - Qué es?', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2025-02-11 17:21:32', '2025-02-11 16:21:32', '', 61, 'http://fran-perez.test/?p=63', 0, 'revision', '', 0),
(64, 1, '2025-02-11 17:35:53', '2025-02-11 16:35:53', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'texto', 'texto', 'publish', 'closed', 'closed', '', 'field_67ab7c5a8bc91', '', '', '2025-02-11 17:35:53', '2025-02-11 16:35:53', '', 39, 'http://fran-perez.test/?post_type=acf-field&p=64', 2, 'acf-field', '', 0),
(65, 1, '2025-02-11 17:38:33', '2025-02-11 16:38:33', '', 'Design thinkin - Qué es?', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2025-02-11 17:38:33', '2025-02-11 16:38:33', '', 61, 'http://fran-perez.test/?p=65', 0, 'revision', '', 0),
(66, 1, '2025-02-14 16:10:06', '2025-02-14 15:10:06', 'Illustration to represent the states of Design Thinking in UI/UX Design', 'design-thinking', '', 'inherit', 'open', 'closed', '', 'design-thinking', '', '', '2025-02-14 16:10:49', '2025-02-14 15:10:49', '', 61, 'http://fran-perez.test/wp-content/uploads/2025/02/design-thinking.webp', 0, 'attachment', 'image/webp', 0),
(67, 1, '2025-02-14 16:11:03', '2025-02-14 15:11:03', '', 'Design thinkin - Qué es?', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2025-02-14 16:11:03', '2025-02-14 15:11:03', '', 61, 'http://fran-perez.test/?p=67', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(2, 2, '_metarobots', 'field_6799236daba49'),
(3, 2, 'custom_meta', ''),
(4, 2, '_custom_meta', 'field_6797c9eb25fc8'),
(5, 2, 'title', ''),
(6, 2, '_title', 'field_6797cdc8c417e'),
(7, 2, 'metadesciption', ''),
(8, 2, '_metadesciption', 'field_6797cdd9c417f'),
(9, 2, 'canonical', ''),
(10, 2, '_canonical', 'field_6797cdfbc4180'),
(11, 2, 'og_image', ''),
(12, 2, '_og_image', 'field_6797ce6c9fbfb'),
(13, 2, 'rrss', '0'),
(14, 2, '_rrss', 'field_6797d10ccd885'),
(15, 2, 'rating_adult', '0'),
(16, 2, '_rating_adult', 'field_6797cf7a9fc00'),
(17, 3, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(18, 3, '_metarobots', 'field_6799236daba49'),
(19, 3, 'custom_meta', ''),
(20, 3, '_custom_meta', 'field_6797c9eb25fc8'),
(21, 3, 'title', ''),
(22, 3, '_title', 'field_6797cdc8c417e'),
(23, 3, 'metadesciption', ''),
(24, 3, '_metadesciption', 'field_6797cdd9c417f'),
(25, 3, 'canonical', ''),
(26, 3, '_canonical', 'field_6797cdfbc4180'),
(27, 3, 'og_image', ''),
(28, 3, '_og_image', 'field_6797ce6c9fbfb'),
(29, 3, 'rrss', '0'),
(30, 3, '_rrss', 'field_6797d10ccd885'),
(31, 3, 'rating_adult', '0'),
(32, 3, '_rating_adult', 'field_6797cf7a9fc00'),
(33, 1, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(34, 1, '_metarobots', 'field_6799236daba49'),
(35, 1, 'custom_meta', ''),
(36, 1, '_custom_meta', 'field_6797c9eb25fc8'),
(37, 1, 'title', ''),
(38, 1, '_title', 'field_6797cdc8c417e'),
(39, 1, 'metadesciption', ''),
(40, 1, '_metadesciption', 'field_6797cdd9c417f'),
(41, 1, 'canonical', ''),
(42, 1, '_canonical', 'field_6797cdfbc4180'),
(43, 1, 'og_image', ''),
(44, 1, '_og_image', 'field_6797ce6c9fbfb'),
(45, 1, 'rrss', '0'),
(46, 1, '_rrss', 'field_6797d10ccd885'),
(47, 1, 'rating_adult', '0'),
(48, 1, '_rating_adult', 'field_6797cf7a9fc00'),
(49, 4, 'metarobots', 'a:1:{i:0;s:3:\"all\";}'),
(50, 4, '_metarobots', 'field_6799236daba49'),
(51, 4, 'custom_meta', ''),
(52, 4, '_custom_meta', 'field_6797c9eb25fc8'),
(53, 4, 'title', ''),
(54, 4, '_title', 'field_6797cdc8c417e'),
(55, 4, 'metadesciption', ''),
(56, 4, '_metadesciption', 'field_6797cdd9c417f'),
(57, 4, 'canonical', ''),
(58, 4, '_canonical', 'field_6797cdfbc4180'),
(59, 4, 'og_image', ''),
(60, 4, '_og_image', 'field_6797ce6c9fbfb'),
(61, 4, 'rrss', '0'),
(62, 4, '_rrss', 'field_6797d10ccd885'),
(63, 4, 'rating_adult', '0'),
(64, 4, '_rating_adult', 'field_6797cf7a9fc00');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'SEO', 'seo', 0),
(2, 'UI Design', 'uidesign', 0),
(3, 'UX Design', 'uxdesign', 0),
(4, 'Blog', 'blog', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 1, 0),
(21, 2, 0),
(36, 1, 0),
(36, 4, 0),
(52, 1, 0),
(52, 4, 0),
(55, 4, 0),
(61, 2, 0),
(61, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 4, 2),
(2, 2, 'category', '', 4, 2),
(3, 3, 'category', '', 4, 0),
(4, 4, 'category', 'Esto es el blog', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'franciscoperez'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"42358a86058e80689af5a14c4a5f190f77d41833a67d39c746d5d3669f533b2a\";a:4:{s:10:\"expiration\";i:1739889658;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36\";s:5:\"login\";i:1738680058;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '60'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_page', 'a:0:{}'),
(20, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:\"commentstatusdiv\";i:1;s:7:\"slugdiv\";i:2;s:9:\"authordiv\";}'),
(21, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:84:\"pageparentdiv,acf-group_6797c9eb4012c,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(22, 1, 'screen_layout_page', '2'),
(23, 1, 'wp_user-settings', 'hidetb=1&libraryContent=browse&mfold=f'),
(24, 1, 'wp_user-settings-time', '1739472936'),
(25, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(26, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'franciscoperez', '$P$B5u3eSYlHv8lc4F8kiFx97/mLt74Mp0', 'franciscoperez', 'hola@franperezg.com', 'http://fran-perez.test', '2025-02-04 14:40:35', '', 0, 'franciscoperez');

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
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
