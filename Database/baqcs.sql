-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 22, 2019 at 10:31 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baqcs`
--

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_assets`
--

CREATE TABLE `wtyqf_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_assets`
--

INSERT INTO `wtyqf_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 111, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 22, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 23, 24, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 25, 26, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 27, 28, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 29, 30, 1, 'com_login', 'com_login', '{}'),
(13, 1, 31, 32, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 33, 34, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 35, 36, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 37, 40, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 41, 42, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 43, 76, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 77, 80, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 81, 82, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 83, 84, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 85, 86, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 87, 88, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 89, 92, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 93, 94, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 78, 79, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 90, 91, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 95, 96, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 97, 98, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 99, 100, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 101, 102, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 103, 104, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 105, 106, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 44, 45, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 46, 47, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 48, 49, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 50, 51, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 52, 53, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 54, 55, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 56, 57, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 58, 59, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 60, 61, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 62, 63, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 64, 65, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 66, 67, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 68, 69, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 70, 71, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 72, 73, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 38, 39, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 74, 75, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 27, 19, 20, 3, 'com_content.article.1', 'admin', '{}'),
(57, 1, 107, 108, 1, 'com_ppms', 'com_ppms', '{}'),
(59, 1, 109, 110, 1, 'com_baqcs', 'com_baqcs', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_associations`
--

CREATE TABLE `wtyqf_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_banners`
--

CREATE TABLE `wtyqf_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_banner_clients`
--

CREATE TABLE `wtyqf_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_banner_tracks`
--

CREATE TABLE `wtyqf_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_baqcs_cpanel`
--

CREATE TABLE `wtyqf_baqcs_cpanel` (
  `id` int(11) UNSIGNED NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_categories`
--

CREATE TABLE `wtyqf_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_categories`
--

INSERT INTO `wtyqf_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 663, '2018-07-10 09:54:18', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 663, '2018-07-10 09:54:18', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 663, '2018-07-10 09:54:18', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 663, '2018-07-10 09:54:18', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 663, '2018-07-10 09:54:18', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 663, '2018-07-10 09:54:18', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_contact_details`
--

CREATE TABLE `wtyqf_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_content`
--

CREATE TABLE `wtyqf_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_content`
--

INSERT INTO `wtyqf_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 56, 'admin', 'admin', '<p>admin panel</p>', '', 1, 2, '2018-07-10 11:46:09', 663, '', '2018-07-11 05:08:19', 663, 0, '0000-00-00 00:00:00', '2018-07-10 11:46:09', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 0, '', '', 2, 14, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_contentitem_tag_map`
--

CREATE TABLE `wtyqf_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_content_frontpage`
--

CREATE TABLE `wtyqf_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_content_rating`
--

CREATE TABLE `wtyqf_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_content_types`
--

CREATE TABLE `wtyqf_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_content_types`
--

INSERT INTO `wtyqf_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_core_log_searches`
--

CREATE TABLE `wtyqf_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_extensions`
--

CREATE TABLE `wtyqf_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_extensions`
--

INSERT INTO `wtyqf_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"0\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"3c97ed08e4d023fca0f8afec899a23de\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `wtyqf_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.38.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.8\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1568729734}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":3,\"lastrun\":1531216476,\"unique_id\":\"2a6fe656c2b6435e738fa945f7dd12f69ee24a96\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.10\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.10\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.10\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.10.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(803, 0, 'com_ppms', 'component', 'com_ppms', '', 1, 1, 0, 0, '{\"name\":\"com_ppms\",\"type\":\"component\",\"creationDate\":\"2018-07-11\",\"author\":\"Ruvin Accura\",\"copyright\":\"2018 Ruvin\",\"authorEmail\":\"ruvin09@gmail.com\",\"authorUrl\":\"http:\\/\\/\",\"version\":\"CVS: 1.0.0\",\"description\":\"\",\"group\":\"\",\"filename\":\"ppms\"}', '{\"save_history\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(805, 0, 'com_baqcs', 'component', 'com_baqcs', '', 1, 1, 0, 0, '{\"name\":\"com_baqcs\",\"type\":\"component\",\"creationDate\":\"2018-07-15\",\"author\":\"Dilini\",\"copyright\":\"2018 Dilini\",\"authorEmail\":\"dilini@test.com\",\"authorUrl\":\"http:\\/\\/\",\"version\":\"CVS: 1.0.0\",\"description\":\"\",\"group\":\"\",\"filename\":\"baqcs\"}', '{\"save_history\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `wtyqf_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(807, 0, 'PhpSpreadSheet Library for Joomla', 'library', 'phpspreadsheet', '', 0, 1, 1, 0, '{\"name\":\"PhpSpreadSheet Library for Joomla\",\"type\":\"library\",\"creationDate\":\"June 2018\",\"author\":\"Iv\\u00e1n Ramos Jim\\u00e9nez\",\"copyright\":\"Copyright (C) 2018\",\"authorEmail\":\"info@ivan.ramos.name\",\"authorUrl\":\"ivan.ramos.name\",\"version\":\"1.0.0\",\"description\":\"\",\"group\":\"\",\"filename\":\"phpspreadsheet\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_fields`
--

CREATE TABLE `wtyqf_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_fields_categories`
--

CREATE TABLE `wtyqf_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_fields_groups`
--

CREATE TABLE `wtyqf_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_fields_values`
--

CREATE TABLE `wtyqf_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_filters`
--

CREATE TABLE `wtyqf_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links`
--

CREATE TABLE `wtyqf_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms0`
--

CREATE TABLE `wtyqf_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms1`
--

CREATE TABLE `wtyqf_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms2`
--

CREATE TABLE `wtyqf_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms3`
--

CREATE TABLE `wtyqf_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms4`
--

CREATE TABLE `wtyqf_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms5`
--

CREATE TABLE `wtyqf_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms6`
--

CREATE TABLE `wtyqf_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms7`
--

CREATE TABLE `wtyqf_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms8`
--

CREATE TABLE `wtyqf_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms9`
--

CREATE TABLE `wtyqf_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_termsa`
--

CREATE TABLE `wtyqf_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_termsb`
--

CREATE TABLE `wtyqf_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_termsc`
--

CREATE TABLE `wtyqf_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_termsd`
--

CREATE TABLE `wtyqf_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_termse`
--

CREATE TABLE `wtyqf_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_termsf`
--

CREATE TABLE `wtyqf_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_taxonomy`
--

CREATE TABLE `wtyqf_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wtyqf_finder_taxonomy`
--

INSERT INTO `wtyqf_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_taxonomy_map`
--

CREATE TABLE `wtyqf_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_terms`
--

CREATE TABLE `wtyqf_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_terms_common`
--

CREATE TABLE `wtyqf_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wtyqf_finder_terms_common`
--

INSERT INTO `wtyqf_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_tokens`
--

CREATE TABLE `wtyqf_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_tokens_aggregate`
--

CREATE TABLE `wtyqf_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_types`
--

CREATE TABLE `wtyqf_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_languages`
--

CREATE TABLE `wtyqf_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_languages`
--

INSERT INTO `wtyqf_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_menu`
--

CREATE TABLE `wtyqf_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_menu`
--

INSERT INTO `wtyqf_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 57, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 41, 42, 0, '*', 0),
(102, 'mainmenu', 'success', 'success', '', 'success', 'index.php?option=com_users&view=login', 'component', -2, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"loginredirectchoice\":\"1\",\"login_redirect_url\":\"\",\"login_redirect_menuitem\":\"102\",\"logindescription_show\":\"0\",\"login_description\":\"\",\"login_image\":\"\",\"logoutredirectchoice\":\"1\",\"logout_redirect_url\":\"\",\"logout_redirect_menuitem\":\"101\",\"logoutdescription_show\":\"0\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 43, 44, 0, '*', 0),
(103, 'mainmenu', 'Login Form', 'login-form', '', 'login-form', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"loginredirectchoice\":\"1\",\"login_redirect_url\":\"\",\"login_redirect_menuitem\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logoutredirectchoice\":\"1\",\"logout_redirect_url\":\"\",\"logout_redirect_menuitem\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 45, 46, 1, '*', 0),
(104, 'mainmenu', 'cpanel', 'cpanel', '', 'cpanel', 'index.php?option=com_baqcs&view=cpanel', 'component', 1, 1, 1, 805, 663, '2019-05-30 20:02:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 47, 48, 0, '*', 0),
(105, 'main', 'COM_PPMS', 'com-ppms', '', 'com-ppms', 'index.php?option=com_ppms', 'component', 1, 1, 1, 803, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 49, 52, 0, '', 1),
(106, 'main', 'COM_PPMS_TITLE_CPANELS', 'com-ppms-title-cpanels', '', 'com-ppms/com-ppms-title-cpanels', 'index.php?option=com_ppms&view=cpanels', 'component', 1, 105, 2, 803, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 50, 51, 0, '', 1),
(109, 'main', 'COM_BAQCS', 'com-baqcs', '', 'com-baqcs', 'index.php?option=com_baqcs', 'component', 1, 1, 1, 805, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 53, 56, 0, '', 1),
(110, 'main', 'COM_BAQCS_TITLE_CPANELS', 'com-baqcs-title-cpanels', '', 'com-baqcs/com-baqcs-title-cpanels', 'index.php?option=com_baqcs&view=cpanels', 'component', 1, 109, 2, 805, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 54, 55, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_menu_types`
--

CREATE TABLE `wtyqf_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_menu_types`
--

INSERT INTO `wtyqf_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_messages`
--

CREATE TABLE `wtyqf_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_messages_cfg`
--

CREATE TABLE `wtyqf_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_modules`
--

CREATE TABLE `wtyqf_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_modules`
--

INSERT INTO `wtyqf_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 1, 'middle-form', 663, '2018-07-15 07:16:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"102\",\"logout\":\"101\",\"greeting\":\"1\",\"name\":\"0\",\"profilelink\":\"0\",\"usesecure\":\"0\",\"usetext\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_modules_menu`
--

CREATE TABLE `wtyqf_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_modules_menu`
--

INSERT INTO `wtyqf_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_newsfeeds`
--

CREATE TABLE `wtyqf_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_overrider`
--

CREATE TABLE `wtyqf_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_postinstall_messages`
--

CREATE TABLE `wtyqf_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_postinstall_messages`
--

INSERT INTO `wtyqf_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 0),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 0),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 0),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 0),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 0),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 0),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_redirect_links`
--

CREATE TABLE `wtyqf_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_schemas`
--

CREATE TABLE `wtyqf_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_schemas`
--

INSERT INTO `wtyqf_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.8.9-2018-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_session`
--

CREATE TABLE `wtyqf_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_session`
--

INSERT INTO `wtyqf_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('l4j8rsor6ho4ae5is9j19hr3de', 0, 1, '1568729755', 'joomla|s:956:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo0O3M6NToidG9rZW4iO3M6MzI6InJyRmVzUFJmS3BIZnh6R0lhTHo0T1Z6NEFHTVBiNXZCIjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1Njg3Mjk3MzQ7czo0OiJsYXN0IjtpOjE1Njg3Mjk3NTQ7czozOiJub3ciO2k6MTU2ODcyOTc1NTt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InVzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6ImxvZ2luIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImZvcm0iO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7YTowOnt9fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO2E6MDp7fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_crane_schedule_automatic`
--

CREATE TABLE `wtyqf_slpa_crane_schedule_automatic` (
  `crane_schedule_automatic_id` int(11) NOT NULL,
  `schedule_automaic_id` int(11) NOT NULL,
  `vessel_arrival_id` int(11) NOT NULL,
  `vessel_id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `crane_id` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `loading` int(11) NOT NULL,
  `discharging` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_crane_schedule_automatic`
--

INSERT INTO `wtyqf_slpa_crane_schedule_automatic` (`crane_schedule_automatic_id`, `schedule_automaic_id`, `vessel_arrival_id`, `vessel_id`, `slot_id`, `crane_id`, `state`, `loading`, `discharging`, `created_date`, `user_id`) VALUES
(1, 1, 20, 12, 1, 1, 1, 0, 0, '2019-09-07 08:15:50', 663),
(2, 1, 20, 12, 1, 2, 1, 0, 0, '2019-09-07 08:15:50', 663),
(3, 1, 20, 12, 1, 3, 1, 0, 0, '2019-09-07 08:15:50', 663),
(4, 2, 38, 5, 3, 7, 1, 0, 0, '2019-09-07 08:15:50', 663),
(5, 2, 38, 5, 3, 8, 1, 0, 0, '2019-09-07 08:15:50', 663),
(6, 2, 38, 5, 3, 9, 1, 0, 0, '2019-09-07 08:15:50', 663),
(7, 2, 38, 5, 3, 10, 1, 0, 0, '2019-09-07 08:15:50', 663),
(8, 3, 42, 11, 4, 11, 1, 0, 0, '2019-09-07 08:15:50', 663),
(9, 3, 42, 11, 4, 12, 1, 0, 0, '2019-09-07 08:15:50', 663),
(10, 3, 42, 11, 4, 13, 1, 0, 0, '2019-09-07 08:15:50', 663),
(11, 3, 42, 11, 4, 14, 1, 0, 0, '2019-09-07 08:15:50', 663),
(12, 4, 43, 16, 2, 4, 1, 0, 0, '2019-09-07 08:15:50', 663),
(13, 4, 43, 16, 2, 5, 1, 0, 0, '2019-09-07 08:15:50', 663),
(14, 4, 43, 16, 2, 6, 1, 0, 0, '2019-09-07 08:15:50', 663),
(15, 5, 44, 3, 3, 7, 1, 0, 0, '2019-09-07 08:15:50', 663),
(16, 5, 44, 3, 3, 8, 1, 0, 0, '2019-09-07 08:15:50', 663),
(17, 5, 44, 3, 3, 9, 1, 0, 0, '2019-09-07 08:15:50', 663),
(18, 5, 44, 3, 3, 10, 1, 0, 0, '2019-09-07 08:15:50', 663),
(19, 6, 75, 9, 4, 11, 1, 0, 0, '2019-09-07 08:15:50', 663),
(20, 6, 75, 9, 4, 12, 1, 0, 0, '2019-09-07 08:15:50', 663),
(21, 6, 75, 9, 4, 13, 1, 0, 0, '2019-09-07 08:15:50', 663),
(22, 6, 75, 9, 4, 14, 1, 0, 0, '2019-09-07 08:15:50', 663),
(23, 7, 76, 14, 2, 4, 1, 0, 0, '2019-09-07 08:15:50', 663),
(24, 7, 76, 14, 2, 5, 1, 0, 0, '2019-09-07 08:15:50', 663),
(25, 7, 76, 14, 2, 6, 1, 0, 0, '2019-09-07 08:15:50', 663),
(26, 8, 77, 4, 3, 7, 1, 0, 0, '2019-09-07 08:15:50', 663),
(27, 8, 77, 4, 3, 8, 1, 0, 0, '2019-09-07 08:15:50', 663),
(28, 8, 77, 4, 3, 9, 1, 0, 0, '2019-09-07 08:15:50', 663),
(29, 8, 77, 4, 3, 10, 1, 0, 0, '2019-09-07 08:15:50', 663),
(30, 9, 78, 7, 1, 1, 1, 0, 0, '2019-09-07 08:15:50', 663),
(31, 9, 78, 7, 1, 2, 1, 0, 0, '2019-09-07 08:15:50', 663),
(32, 9, 78, 7, 1, 3, 1, 0, 0, '2019-09-07 08:15:50', 663),
(33, 10, 39, 8, 1, 1, 1, 0, 0, '2019-09-07 08:18:41', 900),
(34, 10, 39, 8, 1, 2, 1, 0, 0, '2019-09-07 08:18:41', 900),
(35, 10, 39, 8, 1, 3, 1, 0, 0, '2019-09-07 08:18:41', 900),
(36, 11, 40, 12, 3, 7, 1, 0, 0, '2019-09-07 08:18:41', 900),
(37, 11, 40, 12, 3, 8, 1, 0, 0, '2019-09-07 08:18:41', 900),
(38, 11, 40, 12, 3, 9, 1, 0, 0, '2019-09-07 08:18:41', 900),
(39, 11, 40, 12, 3, 10, 1, 0, 0, '2019-09-07 08:18:41', 900),
(40, 12, 41, 14, 2, 4, 1, 0, 0, '2019-09-07 08:18:41', 900),
(41, 12, 41, 14, 2, 5, 1, 0, 0, '2019-09-07 08:18:41', 900),
(42, 12, 41, 14, 2, 6, 1, 0, 0, '2019-09-07 08:18:41', 900),
(43, 13, 47, 11, 4, 11, 1, 0, 0, '2019-09-07 08:18:42', 900),
(44, 13, 47, 11, 4, 12, 1, 0, 0, '2019-09-07 08:18:42', 900),
(45, 13, 47, 11, 4, 13, 1, 0, 0, '2019-09-07 08:18:42', 900),
(46, 13, 47, 11, 4, 14, 1, 0, 0, '2019-09-07 08:18:42', 900),
(47, 14, 46, 3, 3, 7, 1, 0, 0, '2019-09-07 08:18:42', 900),
(48, 14, 46, 3, 3, 8, 1, 0, 0, '2019-09-07 08:18:42', 900),
(49, 14, 46, 3, 3, 9, 1, 0, 0, '2019-09-07 08:18:42', 900),
(50, 14, 46, 3, 3, 10, 1, 0, 0, '2019-09-07 08:18:42', 900),
(51, 15, 45, 4, 2, 4, 1, 0, 0, '2019-09-07 08:18:42', 900),
(52, 15, 45, 4, 2, 5, 1, 0, 0, '2019-09-07 08:18:42', 900),
(53, 15, 45, 4, 2, 6, 1, 0, 0, '2019-09-07 08:18:42', 900),
(54, 16, 25, 8, 1, 1, 1, 0, 0, '2019-09-07 08:18:51', 900),
(55, 16, 25, 8, 1, 2, 1, 0, 0, '2019-09-07 08:18:51', 900),
(56, 16, 25, 8, 1, 3, 1, 0, 0, '2019-09-07 08:18:51', 900),
(57, 17, 26, 5, 1, 1, 1, 0, 0, '2019-09-07 08:18:56', 900),
(58, 17, 26, 5, 1, 2, 1, 0, 0, '2019-09-07 08:18:56', 900),
(59, 17, 26, 5, 1, 3, 1, 0, 0, '2019-09-07 08:18:56', 900),
(60, 18, 22, 11, 3, 7, 1, 0, 0, '2019-09-07 08:19:02', 900),
(61, 18, 22, 11, 3, 8, 1, 0, 0, '2019-09-07 08:19:02', 900),
(62, 18, 22, 11, 3, 9, 1, 0, 0, '2019-09-07 08:19:02', 900),
(63, 18, 22, 11, 3, 10, 1, 0, 0, '2019-09-07 08:19:02', 900),
(64, 19, 21, 4, 2, 4, 1, 0, 0, '2019-09-07 08:19:08', 900),
(65, 19, 21, 4, 2, 5, 1, 0, 0, '2019-09-07 08:19:08', 900),
(66, 19, 21, 4, 2, 6, 1, 0, 0, '2019-09-07 08:19:08', 900),
(67, 20, 27, 8, 1, 1, 1, 0, 0, '2019-09-07 08:19:14', 900),
(68, 20, 27, 8, 1, 2, 1, 0, 0, '2019-09-07 08:19:14', 900),
(69, 20, 27, 8, 1, 3, 1, 0, 0, '2019-09-07 08:19:14', 900),
(70, 21, 23, 7, 1, 1, 1, 0, 0, '2019-09-07 08:19:27', 900),
(71, 21, 23, 7, 1, 2, 1, 0, 0, '2019-09-07 08:19:27', 900),
(72, 21, 23, 7, 1, 3, 1, 0, 0, '2019-09-07 08:19:27', 900),
(73, 22, 24, 3, 3, 7, 1, 0, 0, '2019-09-07 08:19:33', 900),
(74, 22, 24, 3, 3, 8, 1, 0, 0, '2019-09-07 08:19:33', 900),
(75, 22, 24, 3, 3, 9, 1, 0, 0, '2019-09-07 08:19:33', 900),
(76, 22, 24, 3, 3, 10, 1, 0, 0, '2019-09-07 08:19:33', 900),
(77, 23, 1, 8, 1, 1, 1, 0, 0, '2019-09-07 08:19:47', 900),
(78, 23, 1, 8, 1, 2, 1, 0, 0, '2019-09-07 08:19:47', 900),
(79, 23, 1, 8, 1, 3, 1, 0, 0, '2019-09-07 08:19:47', 900),
(80, 24, 2, 1, 1, 1, 1, 0, 0, '2019-09-07 08:19:58', 900),
(81, 24, 2, 1, 1, 2, 1, 0, 0, '2019-09-07 08:19:58', 900),
(82, 24, 2, 1, 1, 3, 1, 0, 0, '2019-09-07 08:19:58', 900),
(83, 25, 3, 3, 3, 7, 1, 0, 0, '2019-09-07 08:19:58', 900),
(84, 25, 3, 3, 3, 8, 1, 0, 0, '2019-09-07 08:19:58', 900),
(85, 25, 3, 3, 3, 9, 1, 0, 0, '2019-09-07 08:19:58', 900),
(86, 25, 3, 3, 3, 10, 1, 0, 0, '2019-09-07 08:19:58', 900),
(87, 26, 13, 19, 2, 4, 1, 0, 0, '2019-09-07 08:19:58', 900),
(88, 26, 13, 19, 2, 5, 1, 0, 0, '2019-09-07 08:19:58', 900),
(89, 26, 13, 19, 2, 6, 1, 0, 0, '2019-09-07 08:19:58', 900),
(90, 27, 68, 4, 2, 4, 1, 0, 0, '2019-09-07 08:19:58', 900),
(91, 27, 68, 4, 2, 5, 1, 0, 0, '2019-09-07 08:19:58', 900),
(92, 27, 68, 4, 2, 6, 1, 0, 0, '2019-09-07 08:19:58', 900),
(93, 28, 4, 4, 2, 4, 1, 0, 0, '2019-09-07 08:20:03', 900),
(94, 28, 4, 4, 2, 5, 1, 0, 0, '2019-09-07 08:20:03', 900),
(95, 28, 4, 4, 2, 6, 1, 0, 0, '2019-09-07 08:20:03', 900),
(96, 29, 6, 13, 1, 1, 1, 0, 0, '2019-09-07 08:20:03', 900),
(97, 29, 6, 13, 1, 2, 1, 0, 0, '2019-09-07 08:20:03', 900),
(98, 29, 6, 13, 1, 3, 1, 0, 0, '2019-09-07 08:20:03', 900),
(99, 30, 7, 14, 4, 11, 1, 0, 0, '2019-09-07 08:20:03', 900),
(100, 30, 7, 14, 4, 12, 1, 0, 0, '2019-09-07 08:20:03', 900),
(101, 30, 7, 14, 4, 13, 1, 0, 0, '2019-09-07 08:20:03', 900),
(102, 30, 7, 14, 4, 14, 1, 0, 0, '2019-09-07 08:20:03', 900),
(103, 31, 5, 12, 1, 1, 1, 0, 0, '2019-09-07 08:20:03', 900),
(104, 31, 5, 12, 1, 2, 1, 0, 0, '2019-09-07 08:20:03', 900),
(105, 31, 5, 12, 1, 3, 1, 0, 0, '2019-09-07 08:20:03', 900),
(106, 32, 9, 2, 1, 1, 1, 0, 0, '2019-09-07 08:20:03', 900),
(107, 32, 9, 2, 1, 2, 1, 0, 0, '2019-09-07 08:20:03', 900),
(108, 32, 9, 2, 1, 3, 1, 0, 0, '2019-09-07 08:20:03', 900),
(109, 33, 8, 15, 1, 1, 1, 0, 0, '2019-09-07 08:20:08', 900),
(110, 33, 8, 15, 1, 2, 1, 0, 0, '2019-09-07 08:20:08', 900),
(111, 33, 8, 15, 1, 3, 1, 0, 0, '2019-09-07 08:20:08', 900),
(112, 34, 11, 17, 1, 1, 1, 0, 0, '2019-09-07 08:20:08', 900),
(113, 34, 11, 17, 1, 2, 1, 0, 0, '2019-09-07 08:20:08', 900),
(114, 34, 11, 17, 1, 3, 1, 0, 0, '2019-09-07 08:20:08', 900),
(115, 35, 10, 16, 3, 7, 1, 0, 0, '2019-09-07 08:20:09', 900),
(116, 35, 10, 16, 3, 8, 1, 0, 0, '2019-09-07 08:20:09', 900),
(117, 35, 10, 16, 3, 9, 1, 0, 0, '2019-09-07 08:20:09', 900),
(118, 35, 10, 16, 3, 10, 1, 0, 0, '2019-09-07 08:20:09', 900),
(119, 36, 12, 18, 2, 4, 1, 0, 0, '2019-09-07 08:20:09', 900),
(120, 36, 12, 18, 2, 5, 1, 0, 0, '2019-09-07 08:20:09', 900),
(121, 36, 12, 18, 2, 6, 1, 0, 0, '2019-09-07 08:20:09', 900),
(122, 37, 14, 20, 4, 11, 1, 0, 0, '2019-09-07 08:20:15', 900),
(123, 37, 14, 20, 4, 12, 1, 0, 0, '2019-09-07 08:20:15', 900),
(124, 37, 14, 20, 4, 13, 1, 0, 0, '2019-09-07 08:20:15', 900),
(125, 37, 14, 20, 4, 14, 1, 0, 0, '2019-09-07 08:20:15', 900),
(126, 38, 15, 21, 2, 4, 1, 0, 0, '2019-09-07 08:20:15', 900),
(127, 38, 15, 21, 2, 5, 1, 0, 0, '2019-09-07 08:20:15', 900),
(128, 38, 15, 21, 2, 6, 1, 0, 0, '2019-09-07 08:20:15', 900),
(129, 39, 16, 22, 3, 7, 1, 0, 0, '2019-09-07 08:20:21', 900),
(130, 39, 16, 22, 3, 8, 1, 0, 0, '2019-09-07 08:20:21', 900),
(131, 39, 16, 22, 3, 9, 1, 0, 0, '2019-09-07 08:20:21', 900),
(132, 39, 16, 22, 3, 10, 1, 0, 0, '2019-09-07 08:20:21', 900),
(133, 40, 48, 12, 1, 1, 1, 0, 0, '2019-09-07 08:20:27', 900),
(134, 40, 48, 12, 1, 2, 1, 0, 0, '2019-09-07 08:20:27', 900),
(135, 40, 48, 12, 1, 3, 1, 0, 0, '2019-09-07 08:20:27', 900),
(136, 41, 50, 11, 3, 7, 1, 0, 0, '2019-09-07 08:20:32', 900),
(137, 41, 50, 11, 3, 8, 1, 0, 0, '2019-09-07 08:20:32', 900),
(138, 41, 50, 11, 3, 9, 1, 0, 0, '2019-09-07 08:20:32', 900),
(139, 41, 50, 11, 3, 10, 1, 0, 0, '2019-09-07 08:20:32', 900),
(140, 42, 49, 7, 1, 1, 1, 0, 0, '2019-09-07 08:20:32', 900),
(141, 42, 49, 7, 1, 2, 1, 0, 0, '2019-09-07 08:20:32', 900),
(142, 42, 49, 7, 1, 3, 1, 0, 0, '2019-09-07 08:20:32', 900),
(143, 43, 17, 12, 1, 1, 1, 0, 0, '2019-09-07 08:20:37', 900),
(144, 43, 17, 12, 1, 2, 1, 0, 0, '2019-09-07 08:20:37', 900),
(145, 43, 17, 12, 1, 3, 1, 0, 0, '2019-09-07 08:20:37', 900),
(146, 44, 19, 3, 3, 7, 1, 0, 0, '2019-09-07 08:20:43', 900),
(147, 44, 19, 3, 3, 8, 1, 0, 0, '2019-09-07 08:20:43', 900),
(148, 44, 19, 3, 3, 9, 1, 0, 0, '2019-09-07 08:20:43', 900),
(149, 44, 19, 3, 3, 10, 1, 0, 0, '2019-09-07 08:20:43', 900),
(150, 45, 18, 7, 1, 1, 1, 0, 0, '2019-09-07 08:20:48', 900),
(151, 45, 18, 7, 1, 2, 1, 0, 0, '2019-09-07 08:20:48', 900),
(152, 45, 18, 7, 1, 3, 1, 0, 0, '2019-09-07 08:20:48', 900),
(153, 46, 28, 12, 3, 7, 1, 0, 0, '2019-09-07 08:20:54', 900),
(154, 46, 28, 12, 3, 8, 1, 0, 0, '2019-09-07 08:20:54', 900),
(155, 46, 28, 12, 3, 9, 1, 0, 0, '2019-09-07 08:20:54', 900),
(156, 46, 28, 12, 3, 10, 1, 0, 0, '2019-09-07 08:20:54', 900),
(157, 47, 29, 4, 2, 4, 1, 0, 0, '2019-09-07 08:20:54', 900),
(158, 47, 29, 4, 2, 5, 1, 0, 0, '2019-09-07 08:20:54', 900),
(159, 47, 29, 4, 2, 6, 1, 0, 0, '2019-09-07 08:20:54', 900),
(160, 48, 30, 12, 1, 1, 1, 0, 0, '2019-09-07 08:21:00', 900),
(161, 48, 30, 12, 1, 2, 1, 0, 0, '2019-09-07 08:21:00', 900),
(162, 48, 30, 12, 1, 3, 1, 0, 0, '2019-09-07 08:21:00', 900),
(163, 49, 31, 4, 2, 4, 1, 0, 0, '2019-09-07 08:21:00', 900),
(164, 49, 31, 4, 2, 5, 1, 0, 0, '2019-09-07 08:21:00', 900),
(165, 49, 31, 4, 2, 6, 1, 0, 0, '2019-09-07 08:21:00', 900),
(166, 50, 32, 7, 3, 7, 1, 0, 0, '2019-09-07 08:21:00', 900),
(167, 50, 32, 7, 3, 8, 1, 0, 0, '2019-09-07 08:21:00', 900),
(168, 50, 32, 7, 3, 9, 1, 0, 0, '2019-09-07 08:21:00', 900),
(169, 50, 32, 7, 3, 10, 1, 0, 0, '2019-09-07 08:21:00', 900),
(170, 51, 33, 3, 4, 11, 1, 0, 0, '2019-09-07 08:21:00', 900),
(171, 51, 33, 3, 4, 12, 1, 0, 0, '2019-09-07 08:21:00', 900),
(172, 51, 33, 3, 4, 13, 1, 0, 0, '2019-09-07 08:21:00', 900),
(173, 51, 33, 3, 4, 14, 1, 0, 0, '2019-09-07 08:21:00', 900),
(174, 52, 34, 11, 3, 7, 1, 0, 0, '2019-09-07 08:21:00', 900),
(175, 52, 34, 11, 3, 8, 1, 0, 0, '2019-09-07 08:21:00', 900),
(176, 52, 34, 11, 3, 9, 1, 0, 0, '2019-09-07 08:21:00', 900),
(177, 52, 34, 11, 3, 10, 1, 0, 0, '2019-09-07 08:21:00', 900),
(178, 53, 67, 4, 2, 4, 1, 0, 0, '2019-09-07 08:21:05', 900),
(179, 53, 67, 4, 2, 5, 1, 0, 0, '2019-09-07 08:21:05', 900),
(180, 53, 67, 4, 2, 6, 1, 0, 0, '2019-09-07 08:21:05', 900),
(181, 54, 66, 7, 1, 1, 1, 0, 0, '2019-09-07 08:21:09', 900),
(182, 54, 66, 7, 1, 2, 1, 0, 0, '2019-09-07 08:21:09', 900),
(183, 54, 66, 7, 1, 3, 1, 0, 0, '2019-09-07 08:21:09', 900),
(184, 55, 51, 11, 3, 7, 1, 0, 0, '2019-09-07 08:21:14', 900),
(185, 55, 51, 11, 3, 8, 1, 0, 0, '2019-09-07 08:21:14', 900),
(186, 55, 51, 11, 3, 9, 1, 0, 0, '2019-09-07 08:21:14', 900),
(187, 55, 51, 11, 3, 10, 1, 0, 0, '2019-09-07 08:21:14', 900),
(188, 56, 52, 12, 1, 1, 1, 0, 0, '2019-09-07 08:21:14', 900),
(189, 56, 52, 12, 1, 2, 1, 0, 0, '2019-09-07 08:21:14', 900),
(190, 56, 52, 12, 1, 3, 1, 0, 0, '2019-09-07 08:21:14', 900),
(191, 57, 51, 11, 4, 11, 1, 0, 0, '2019-09-07 08:21:14', 900),
(192, 57, 51, 11, 4, 12, 1, 0, 0, '2019-09-07 08:21:14', 900),
(193, 57, 51, 11, 4, 13, 1, 0, 0, '2019-09-07 08:21:14', 900),
(194, 57, 51, 11, 4, 14, 1, 0, 0, '2019-09-07 08:21:14', 900),
(195, 58, 65, 12, 1, 1, 1, 0, 0, '2019-09-07 08:21:19', 900),
(196, 58, 65, 12, 1, 2, 1, 0, 0, '2019-09-07 08:21:19', 900),
(197, 58, 65, 12, 1, 3, 1, 0, 0, '2019-09-07 08:21:19', 900),
(198, 59, 36, 7, 1, 1, 1, 0, 0, '2019-09-07 08:21:24', 900),
(199, 59, 36, 7, 1, 2, 1, 0, 0, '2019-09-07 08:21:24', 900),
(200, 59, 36, 7, 1, 3, 1, 0, 0, '2019-09-07 08:21:24', 900),
(201, 60, 36, 7, 3, 7, 1, 0, 0, '2019-09-07 08:21:24', 900),
(202, 60, 36, 7, 3, 8, 1, 0, 0, '2019-09-07 08:21:24', 900),
(203, 60, 36, 7, 3, 9, 1, 0, 0, '2019-09-07 08:21:24', 900),
(204, 60, 36, 7, 3, 10, 1, 0, 0, '2019-09-07 08:21:24', 900),
(205, 61, 35, 12, 2, 4, 1, 0, 0, '2019-09-07 08:21:24', 900),
(206, 61, 35, 12, 2, 5, 1, 0, 0, '2019-09-07 08:21:24', 900),
(207, 61, 35, 12, 2, 6, 1, 0, 0, '2019-09-07 08:21:24', 900),
(208, 62, 64, 12, 1, 1, 1, 0, 0, '2019-09-07 08:21:30', 900),
(209, 62, 64, 12, 1, 2, 1, 0, 0, '2019-09-07 08:21:30', 900),
(210, 62, 64, 12, 1, 3, 1, 0, 0, '2019-09-07 08:21:30', 900),
(211, 63, 62, 4, 2, 4, 1, 0, 0, '2019-09-07 08:21:35', 900),
(212, 63, 62, 4, 2, 5, 1, 0, 0, '2019-09-07 08:21:35', 900),
(213, 63, 62, 4, 2, 6, 1, 0, 0, '2019-09-07 08:21:35', 900),
(214, 64, 56, 3, 3, 7, 1, 0, 0, '2019-09-07 08:21:43', 900),
(215, 64, 56, 3, 3, 8, 1, 0, 0, '2019-09-07 08:21:43', 900),
(216, 64, 56, 3, 3, 9, 1, 0, 0, '2019-09-07 08:21:43', 900),
(217, 64, 56, 3, 3, 10, 1, 0, 0, '2019-09-07 08:21:43', 900),
(218, 65, 55, 4, 2, 4, 1, 0, 0, '2019-09-07 08:21:44', 900),
(219, 65, 55, 4, 2, 5, 1, 0, 0, '2019-09-07 08:21:44', 900),
(220, 65, 55, 4, 2, 6, 1, 0, 0, '2019-09-07 08:21:44', 900),
(221, 66, 54, 12, 1, 1, 1, 0, 0, '2019-09-07 08:21:44', 900),
(222, 66, 54, 12, 1, 2, 1, 0, 0, '2019-09-07 08:21:44', 900),
(223, 66, 54, 12, 1, 3, 1, 0, 0, '2019-09-07 08:21:44', 900),
(224, 67, 59, 8, 1, 1, 1, 0, 0, '2019-09-07 08:21:44', 900),
(225, 67, 59, 8, 1, 2, 1, 0, 0, '2019-09-07 08:21:44', 900),
(226, 67, 59, 8, 1, 3, 1, 0, 0, '2019-09-07 08:21:44', 900),
(227, 68, 58, 5, 4, 11, 1, 0, 0, '2019-09-07 08:21:44', 900),
(228, 68, 58, 5, 4, 12, 1, 0, 0, '2019-09-07 08:21:44', 900),
(229, 68, 58, 5, 4, 13, 1, 0, 0, '2019-09-07 08:21:44', 900),
(230, 68, 58, 5, 4, 14, 1, 0, 0, '2019-09-07 08:21:44', 900),
(231, 69, 60, 14, 3, 7, 1, 0, 0, '2019-09-07 08:21:44', 900),
(232, 69, 60, 14, 3, 8, 1, 0, 0, '2019-09-07 08:21:44', 900),
(233, 69, 60, 14, 3, 9, 1, 0, 0, '2019-09-07 08:21:44', 900),
(234, 69, 60, 14, 3, 10, 1, 0, 0, '2019-09-07 08:21:44', 900),
(235, 70, 63, 12, 1, 1, 1, 0, 0, '2019-09-07 08:21:49', 900),
(236, 70, 63, 12, 1, 2, 1, 0, 0, '2019-09-07 08:21:49', 900),
(237, 70, 63, 12, 1, 3, 1, 0, 0, '2019-09-07 08:21:49', 900),
(238, 71, 69, 5, 3, 7, 1, 0, 0, '2019-09-07 08:21:49', 900),
(239, 71, 69, 5, 3, 8, 1, 0, 0, '2019-09-07 08:21:49', 900),
(240, 71, 69, 5, 3, 9, 1, 0, 0, '2019-09-07 08:21:49', 900),
(241, 71, 69, 5, 3, 10, 1, 0, 0, '2019-09-07 08:21:49', 900),
(242, 72, 70, 8, 2, 4, 1, 0, 0, '2019-09-07 08:21:49', 900),
(243, 72, 70, 8, 2, 5, 1, 0, 0, '2019-09-07 08:21:49', 900),
(244, 72, 70, 8, 2, 6, 1, 0, 0, '2019-09-07 08:21:49', 900),
(245, 73, 71, 14, 4, 11, 1, 0, 0, '2019-09-07 08:21:49', 900),
(246, 73, 71, 14, 4, 12, 1, 0, 0, '2019-09-07 08:21:49', 900),
(247, 73, 71, 14, 4, 13, 1, 0, 0, '2019-09-07 08:21:49', 900),
(248, 73, 71, 14, 4, 14, 1, 0, 0, '2019-09-07 08:21:49', 900),
(249, 74, 72, 16, 2, 4, 1, 0, 0, '2019-09-07 08:21:49', 900),
(250, 74, 72, 16, 2, 5, 1, 0, 0, '2019-09-07 08:21:49', 900),
(251, 74, 72, 16, 2, 6, 1, 0, 0, '2019-09-07 08:21:49', 900),
(252, 75, 81, 4, 4, 11, 1, 0, 0, '2019-09-07 08:21:49', 900),
(253, 75, 81, 4, 4, 12, 1, 0, 0, '2019-09-07 08:21:49', 900),
(254, 75, 81, 4, 4, 13, 1, 0, 0, '2019-09-07 08:21:49', 900),
(255, 75, 81, 4, 4, 14, 1, 0, 0, '2019-09-07 08:21:49', 900),
(256, 76, 82, 7, 1, 1, 1, 0, 0, '2019-09-07 08:21:49', 900),
(257, 76, 82, 7, 1, 2, 1, 0, 0, '2019-09-07 08:21:49', 900),
(258, 76, 82, 7, 1, 3, 1, 0, 0, '2019-09-07 08:21:49', 900),
(259, 77, 83, 3, 3, 7, 1, 0, 0, '2019-09-07 08:21:49', 900),
(260, 77, 83, 3, 3, 8, 1, 0, 0, '2019-09-07 08:21:49', 900),
(261, 77, 83, 3, 3, 9, 1, 0, 0, '2019-09-07 08:21:49', 900),
(262, 77, 83, 3, 3, 10, 1, 0, 0, '2019-09-07 08:21:49', 900),
(263, 78, 57, 11, 3, 7, 1, 0, 0, '2019-09-07 08:21:58', 900),
(264, 78, 57, 11, 3, 8, 1, 0, 0, '2019-09-07 08:21:58', 900),
(265, 78, 57, 11, 3, 9, 1, 0, 0, '2019-09-07 08:21:58', 900),
(266, 78, 57, 11, 3, 10, 1, 0, 0, '2019-09-07 08:21:58', 900),
(267, 79, 84, 3, 4, 11, 1, 0, 0, '2019-09-07 08:21:58', 900),
(268, 79, 84, 3, 4, 12, 1, 0, 0, '2019-09-07 08:21:58', 900),
(269, 79, 84, 3, 4, 13, 1, 0, 0, '2019-09-07 08:21:58', 900),
(270, 79, 84, 3, 4, 14, 1, 0, 0, '2019-09-07 08:21:58', 900),
(271, 80, 86, 7, 1, 1, 1, 0, 0, '2019-09-07 08:21:58', 900),
(272, 80, 86, 7, 1, 2, 1, 0, 0, '2019-09-07 08:21:58', 900),
(273, 80, 86, 7, 1, 3, 1, 0, 0, '2019-09-07 08:21:58', 900),
(274, 81, 85, 12, 2, 4, 1, 0, 0, '2019-09-07 08:21:58', 900),
(275, 81, 85, 12, 2, 5, 1, 0, 0, '2019-09-07 08:21:58', 900),
(276, 81, 85, 12, 2, 6, 1, 0, 0, '2019-09-07 08:21:58', 900),
(277, 82, 61, 12, 1, 1, 1, 0, 0, '2019-09-07 08:22:12', 900),
(278, 82, 61, 12, 1, 2, 1, 0, 0, '2019-09-07 08:22:12', 900),
(279, 82, 61, 12, 1, 3, 1, 0, 0, '2019-09-07 08:22:12', 900),
(280, 83, 73, 9, 2, 4, 1, 0, 0, '2019-09-07 08:22:12', 900),
(281, 83, 73, 9, 2, 5, 1, 0, 0, '2019-09-07 08:22:12', 900),
(282, 83, 73, 9, 2, 6, 1, 0, 0, '2019-09-07 08:22:12', 900),
(283, 84, 88, 7, 3, 7, 1, 0, 0, '2019-09-07 08:22:12', 900),
(284, 84, 88, 7, 3, 8, 1, 0, 0, '2019-09-07 08:22:12', 900),
(285, 84, 88, 7, 3, 9, 1, 0, 0, '2019-09-07 08:22:12', 900),
(286, 84, 88, 7, 3, 10, 1, 0, 0, '2019-09-07 08:22:12', 900),
(287, 85, 87, 4, 4, 11, 1, 0, 0, '2019-09-07 08:22:12', 900),
(288, 85, 87, 4, 4, 12, 1, 0, 0, '2019-09-07 08:22:12', 900),
(289, 85, 87, 4, 4, 13, 1, 0, 0, '2019-09-07 08:22:12', 900),
(290, 85, 87, 4, 4, 14, 1, 0, 0, '2019-09-07 08:22:12', 900),
(291, 86, 89, 3, 3, 7, 1, 0, 0, '2019-09-07 08:22:12', 900),
(292, 86, 89, 3, 3, 8, 1, 0, 0, '2019-09-07 08:22:12', 900),
(293, 86, 89, 3, 3, 9, 1, 0, 0, '2019-09-07 08:22:12', 900),
(294, 86, 89, 3, 3, 10, 1, 0, 0, '2019-09-07 08:22:12', 900),
(295, 87, 91, 3, 3, 7, 1, 0, 0, '2019-09-07 08:22:17', 900),
(296, 87, 91, 3, 3, 8, 1, 0, 0, '2019-09-07 08:22:17', 900),
(297, 87, 91, 3, 3, 9, 1, 0, 0, '2019-09-07 08:22:17', 900),
(298, 87, 91, 3, 3, 10, 1, 0, 0, '2019-09-07 08:22:17', 900),
(299, 88, 90, 4, 2, 4, 1, 0, 0, '2019-09-07 08:22:17', 900),
(300, 88, 90, 4, 2, 5, 1, 0, 0, '2019-09-07 08:22:17', 900),
(301, 88, 90, 4, 2, 6, 1, 0, 0, '2019-09-07 08:22:17', 900),
(302, 89, 93, 7, 1, 1, 1, 0, 0, '2019-09-07 08:22:22', 900),
(303, 89, 93, 7, 1, 2, 1, 0, 0, '2019-09-07 08:22:22', 900),
(304, 89, 93, 7, 1, 3, 1, 0, 0, '2019-09-07 08:22:22', 900),
(305, 90, 92, 4, 2, 4, 1, 0, 0, '2019-09-07 08:22:22', 900),
(306, 90, 92, 4, 2, 5, 1, 0, 0, '2019-09-07 08:22:22', 900),
(307, 90, 92, 4, 2, 6, 1, 0, 0, '2019-09-07 08:22:22', 900),
(308, 91, 94, 11, 3, 7, 1, 0, 0, '2019-09-07 08:22:22', 900),
(309, 91, 94, 11, 3, 8, 1, 0, 0, '2019-09-07 08:22:22', 900),
(310, 91, 94, 11, 3, 9, 1, 0, 0, '2019-09-07 08:22:22', 900),
(311, 91, 94, 11, 3, 10, 1, 0, 0, '2019-09-07 08:22:22', 900),
(312, 92, 79, 5, 1, 1, 1, 0, 0, '2019-09-07 08:22:26', 900),
(313, 92, 79, 5, 1, 2, 1, 0, 0, '2019-09-07 08:22:26', 900),
(314, 92, 79, 5, 1, 3, 1, 0, 0, '2019-09-07 08:22:26', 900),
(315, 93, 80, 8, 2, 4, 1, 0, 0, '2019-09-07 08:22:26', 900),
(316, 93, 80, 8, 2, 5, 1, 0, 0, '2019-09-07 08:22:26', 900),
(317, 93, 80, 8, 2, 6, 1, 0, 0, '2019-09-07 08:22:26', 900),
(318, 94, 97, 4, 4, 11, 1, 0, 0, '2019-09-07 08:22:26', 900),
(319, 94, 97, 4, 4, 12, 1, 0, 0, '2019-09-07 08:22:26', 900),
(320, 94, 97, 4, 4, 13, 1, 0, 0, '2019-09-07 08:22:26', 900),
(321, 94, 97, 4, 4, 14, 1, 0, 0, '2019-09-07 08:22:26', 900),
(322, 95, 96, 12, 4, 11, 1, 0, 0, '2019-09-07 08:22:26', 900),
(323, 95, 96, 12, 4, 12, 1, 0, 0, '2019-09-07 08:22:26', 900),
(324, 95, 96, 12, 4, 13, 1, 0, 0, '2019-09-07 08:22:26', 900),
(325, 95, 96, 12, 4, 14, 1, 0, 0, '2019-09-07 08:22:26', 900),
(326, 96, 95, 7, 1, 1, 1, 0, 0, '2019-09-07 08:22:26', 900),
(327, 96, 95, 7, 1, 2, 1, 0, 0, '2019-09-07 08:22:26', 900),
(328, 96, 95, 7, 1, 3, 1, 0, 0, '2019-09-07 08:22:26', 900),
(329, 97, 103, 9, 2, 4, 1, 0, 0, '2019-09-07 08:22:26', 900),
(330, 97, 103, 9, 2, 5, 1, 0, 0, '2019-09-07 08:22:26', 900),
(331, 97, 103, 9, 2, 6, 1, 0, 0, '2019-09-07 08:22:26', 900),
(332, 98, 104, 16, 4, 11, 1, 0, 0, '2019-09-07 08:22:26', 900),
(333, 98, 104, 16, 4, 12, 1, 0, 0, '2019-09-07 08:22:26', 900),
(334, 98, 104, 16, 4, 13, 1, 0, 0, '2019-09-07 08:22:26', 900),
(335, 98, 104, 16, 4, 14, 1, 0, 0, '2019-09-07 08:22:26', 900),
(336, 99, 99, 7, 1, 1, 1, 0, 0, '2019-09-07 08:22:34', 900),
(337, 99, 99, 7, 1, 2, 1, 0, 0, '2019-09-07 08:22:34', 900),
(338, 99, 99, 7, 1, 3, 1, 0, 0, '2019-09-07 08:22:34', 900),
(339, 100, 98, 4, 2, 4, 1, 0, 0, '2019-09-07 08:22:34', 900),
(340, 100, 98, 4, 2, 5, 1, 0, 0, '2019-09-07 08:22:34', 900),
(341, 100, 98, 4, 2, 6, 1, 0, 0, '2019-09-07 08:22:34', 900),
(342, 101, 100, 5, 3, 7, 1, 0, 0, '2019-09-07 08:22:34', 900),
(343, 101, 100, 5, 3, 8, 1, 0, 0, '2019-09-07 08:22:34', 900),
(344, 101, 100, 5, 3, 9, 1, 0, 0, '2019-09-07 08:22:34', 900),
(345, 101, 100, 5, 3, 10, 1, 0, 0, '2019-09-07 08:22:34', 900),
(346, 102, 101, 8, 4, 11, 1, 0, 0, '2019-09-07 08:22:34', 900),
(347, 102, 101, 8, 4, 12, 1, 0, 0, '2019-09-07 08:22:34', 900),
(348, 102, 101, 8, 4, 13, 1, 0, 0, '2019-09-07 08:22:34', 900),
(349, 102, 101, 8, 4, 14, 1, 0, 0, '2019-09-07 08:22:34', 900),
(350, 103, 102, 16, 4, 11, 1, 0, 0, '2019-09-07 08:22:34', 900),
(351, 103, 102, 16, 4, 12, 1, 0, 0, '2019-09-07 08:22:34', 900),
(352, 103, 102, 16, 4, 13, 1, 0, 0, '2019-09-07 08:22:34', 900),
(353, 103, 102, 16, 4, 14, 1, 0, 0, '2019-09-07 08:22:34', 900),
(354, 104, 105, 11, 3, 7, 1, 0, 0, '2019-09-07 12:09:36', 663),
(355, 104, 105, 11, 3, 8, 1, 0, 0, '2019-09-07 12:09:36', 663),
(356, 104, 105, 11, 3, 9, 1, 0, 0, '2019-09-07 12:09:36', 663),
(357, 104, 105, 11, 3, 10, 1, 0, 0, '2019-09-07 12:09:36', 663),
(358, 105, 106, 12, 1, 1, 1, 0, 0, '2019-09-07 23:45:52', 900),
(359, 105, 106, 12, 1, 2, 1, 0, 0, '2019-09-07 23:45:52', 900),
(360, 105, 106, 12, 1, 3, 1, 0, 0, '2019-09-07 23:45:52', 900),
(361, 106, 107, 5, 3, 7, 0, 0, 0, '2019-09-08 05:30:14', 900),
(362, 106, 107, 5, 3, 8, 1, 0, 0, '2019-09-07 23:45:52', 900),
(363, 106, 107, 5, 3, 9, 1, 0, 0, '2019-09-07 23:45:52', 900),
(364, 106, 107, 5, 3, 10, 1, 0, 0, '2019-09-07 23:45:52', 900),
(365, 107, 108, 14, 2, 4, 1, 0, 0, '2019-09-07 23:45:52', 900),
(366, 107, 108, 14, 2, 5, 1, 0, 0, '2019-09-07 23:45:52', 900),
(367, 107, 108, 14, 2, 6, 1, 0, 0, '2019-09-07 23:45:52', 900),
(368, 108, 109, 11, 4, 11, 1, 0, 0, '2019-09-07 23:57:21', 900),
(369, 108, 109, 11, 4, 12, 1, 0, 0, '2019-09-07 23:57:21', 900),
(370, 108, 109, 11, 4, 13, 1, 0, 0, '2019-09-07 23:57:21', 900),
(371, 108, 109, 11, 4, 14, 1, 0, 0, '2019-09-07 23:57:21', 900),
(372, 109, 110, 8, 1, 1, 1, 0, 0, '2019-09-07 23:57:21', 900),
(373, 109, 110, 8, 1, 2, 1, 0, 0, '2019-09-07 23:57:21', 900),
(374, 109, 110, 8, 1, 3, 1, 0, 0, '2019-09-07 23:57:21', 900);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_hold_berthing history`
--

CREATE TABLE `wtyqf_slpa_hold_berthing history` (
  `hold_id` int(11) NOT NULL,
  `schedule_automaic_id` int(11) NOT NULL,
  `expected_loading` int(11) NOT NULL,
  `expected_discharging` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `eta` datetime NOT NULL,
  `etb` datetime NOT NULL,
  `etc` datetime NOT NULL,
  `remarks` text NOT NULL,
  `inv_end_date` date NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_notification`
--

CREATE TABLE `wtyqf_slpa_notification` (
  `notification_id` int(11) NOT NULL,
  `vessel_arrival_id` int(11) NOT NULL,
  `agent_code` varchar(50) NOT NULL,
  `vessel_id` int(11) NOT NULL,
  `vessel_name` varchar(250) NOT NULL,
  `etb` datetime NOT NULL,
  `slot_id` int(11) NOT NULL,
  `slot_no` varchar(250) NOT NULL,
  `send_date` date NOT NULL,
  `description` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `state_top_menu` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_notification`
--

INSERT INTO `wtyqf_slpa_notification` (`notification_id`, `vessel_arrival_id`, `agent_code`, `vessel_id`, `vessel_name`, `etb`, `slot_id`, `slot_no`, `send_date`, `description`, `created_date`, `user_id`, `state`, `state_top_menu`) VALUES
(1, 20, 'MSC', 12, 'MANA', '2019-01-01 14:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:47:37', 663, 1, 0),
(2, 38, 'LIL', 5, 'NICKIE B', '2019-01-01 11:00:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 663, 1, 0),
(3, 42, 'MSC', 11, 'MSC SINDY', '2019-01-01 11:00:00', 0, 'JCT4', '2019-09-07', '', '2019-09-07 13:46:23', 663, 1, 0),
(4, 43, 'SIM', 16, 'HAPPY BEE\r\n', '2019-01-01 11:00:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 663, 1, 0),
(5, 44, 'MSC', 3, 'MSC PARIS', '2019-01-01 15:45:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:46:19', 663, 1, 0),
(6, 75, 'SIM', 9, 'MP THE BELICHICK', '2019-01-01 17:50:00', 0, 'JCT4', '2019-09-07', '', '2019-09-07 13:53:20', 663, 1, 0),
(7, 76, 'COC', 14, 'COSCO OSAKA', '2019-01-01 21:40:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 663, 1, 0),
(8, 77, 'MSC', 4, 'MSC ANCHROGE\r\n', '2019-01-01 23:41:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:46:17', 663, 1, 0),
(9, 78, 'MSC', 7, 'MSC MARIA LAURA', '2019-01-01 19:57:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:46:14', 663, 1, 0),
(10, 39, 'LIL', 8, 'RT ODIN', '2019-01-02 14:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(11, 40, 'MSC', 12, 'MANA', '2019-01-02 11:00:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(12, 41, 'COC', 14, 'COSCO OSAKA', '2019-01-02 11:00:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(13, 47, 'MSC', 11, 'MSC SINDY', '2019-01-02 16:30:00', 0, 'JCT4', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(14, 46, 'MSC', 3, 'MSC PARIS', '2019-01-02 19:40:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(15, 45, 'MSC', 4, 'MSC ANCHROGE\r\n', '2019-01-02 19:19:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(16, 25, 'LIL', 8, 'RT ODIN', '2019-01-07 04:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(17, 26, 'LIL', 5, 'NICKIE B', '2019-01-29 06:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(18, 22, 'MSC', 11, 'MSC SINDY', '2019-02-17 14:00:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(19, 21, 'MSC', 4, 'MSC ANCHROGE\r\n', '2019-03-12 05:00:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(20, 27, 'LIL', 8, 'RT ODIN', '2019-03-19 06:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(21, 23, 'MSC', 7, 'MSC MARIA LAURA', '2019-03-20 14:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(22, 24, 'MSC', 3, 'MSC PARIS', '2019-04-08 07:00:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(23, 1, 'LIL', 8, 'RT ODIN', '2019-04-29 20:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(24, 2, 'OEL', 1, 'UNISEA\r\n', '2019-05-01 02:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(25, 3, 'MSC', 3, 'MSC PARIS', '2019-05-01 18:30:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(26, 13, 'OLS', 19, 'MCP LONDON\r\n', '2019-05-01 02:00:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(27, 68, 'MSC', 4, 'MSC ANCHROGE\r\n', '2019-05-01 11:00:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(28, 4, 'MSC', 4, 'MSC ANCHROGE\r\n', '2019-05-02 07:00:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(29, 6, 'TWF', 13, 'OEL SHASTA', '2019-05-02 02:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(30, 7, 'COC', 14, 'COSCO OSAKA', '2019-05-02 22:00:00', 0, 'JCT4', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(31, 5, 'MSC', 12, 'MANA', '2019-05-02 09:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(32, 9, 'XCL', 2, 'SMILEY LADY\r\n', '2019-05-02 11:02:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(33, 8, 'RCL', 15, 'GANTA BHUM', '2019-05-03 03:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(34, 11, 'FAR', 17, 'TR ARAMIS\r\n', '2019-05-03 16:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(35, 10, 'SIM', 16, 'HAPPY BEE\r\n', '2019-05-04 02:00:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(36, 12, 'OEL', 18, 'OEL INDIA\r\n\r\n\r\n', '2019-05-03 23:00:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(37, 14, 'COS', 20, 'XIN SHANGHAI\r\n', '2019-05-04 12:00:00', 0, 'JCT4', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(38, 15, 'XCL', 21, 'CORHELIA1', '2019-05-04 08:30:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(39, 16, 'EMC', 22, 'EVER CONQUEST', '2019-05-07 02:59:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(40, 48, 'MSC', 12, 'MANA', '2019-06-04 11:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(41, 50, 'MSC', 11, 'MSC SINDY', '2019-06-06 16:00:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(42, 49, 'MSC', 7, 'MSC MARIA LAURA', '2019-06-06 15:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(43, 17, 'MSC', 12, 'MANA', '2019-07-01 14:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(44, 19, 'MSC', 3, 'MSC PARIS', '2019-07-02 14:59:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(45, 18, 'MSC', 7, 'MSC MARIA LAURA', '2019-07-08 01:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(46, 28, 'MSC', 12, 'MANA', '2019-07-08 05:00:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(47, 29, 'MSC', 4, 'MSC ANCHROGE\r\n', '2019-07-08 11:00:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(48, 30, 'MSC', 12, 'MANA', '2019-07-09 11:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(49, 31, 'MSC', 4, 'MSC ANCHROGE\r\n', '2019-07-09 11:00:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(50, 32, 'MSC', 7, 'MSC MARIA LAURA', '2019-07-09 11:00:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(51, 33, 'MSC', 3, 'MSC PARIS', '2019-07-09 11:00:00', 0, 'JCT4', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(52, 34, 'MSC', 11, 'MSC SINDY', '2019-07-09 15:30:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(53, 67, 'MSC', 4, 'MSC ANCHROGE\r\n', '2019-07-18 14:30:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(54, 66, 'MSC', 7, 'MSC MARIA LAURA', '2019-07-24 11:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(55, 51, 'MSC', 11, 'MSC SINDY', '2019-08-01 14:30:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(56, 52, 'MSC', 12, 'MANA', '2019-08-01 14:30:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(57, 51, 'MSC', 11, 'MSC SINDY', '2019-08-01 16:00:00', 0, 'JCT4', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(58, 65, 'MSC', 12, 'MANA', '2019-08-15 11:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(59, 36, 'MSC', 7, 'MSC MARIA LAURA', '2019-08-26 01:59:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(60, 36, 'MSC', 7, 'MSC MARIA LAURA', '2019-08-26 00:46:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(61, 35, 'MSC', 12, 'MANA', '2019-08-25 13:59:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(62, 64, 'MSC', 12, 'MANA', '2019-08-27 11:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(63, 62, 'MSC', 4, 'MSC ANCHROGE\r\n', '2019-08-31 11:00:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(64, 56, 'MSC', 3, 'MSC PARIS', '2019-09-01 07:00:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(65, 55, 'MSC', 4, 'MSC ANCHROGE\r\n', '2019-09-01 07:00:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(66, 54, 'MSC', 12, 'MANA', '2019-09-01 03:30:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(67, 59, 'LIL', 8, 'RT ODIN', '2019-09-01 11:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(68, 58, 'LIL', 5, 'NICKIE B', '2019-09-01 11:00:00', 0, 'JCT4', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(69, 60, 'COC', 14, 'COSCO OSAKA', '2019-09-01 11:58:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(70, 63, 'MSC', 12, 'MANA', '2019-09-02 11:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(71, 69, 'LIL', 5, 'NICKIE B', '2019-09-02 14:15:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(72, 70, 'LIL', 8, 'RT ODIN', '2019-09-02 02:00:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(73, 71, 'COC', 14, 'COSCO OSAKA', '2019-09-02 11:00:00', 0, 'JCT4', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(74, 72, 'SIM', 16, 'HAPPY BEE\r\n', '2019-09-02 16:12:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(75, 81, 'MSC', 4, 'MSC ANCHROGE\r\n', '2019-09-02 19:41:00', 0, 'JCT4', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(76, 82, 'MSC', 7, 'MSC MARIA LAURA', '2019-09-02 16:47:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(77, 83, 'MSC', 3, 'MSC PARIS', '2019-09-02 22:05:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(78, 57, 'MSC', 11, 'MSC SINDY', '2019-09-03 07:00:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(79, 84, 'MSC', 3, 'MSC PARIS', '2019-09-03 11:00:00', 0, 'JCT4', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(80, 86, 'MSC', 7, 'MSC MARIA LAURA', '2019-09-03 11:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(81, 85, 'MSC', 12, 'MANA', '2019-09-03 08:45:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(82, 61, 'MSC', 12, 'MANA', '2019-09-04 11:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(83, 73, 'SIM', 9, 'MP THE BELICHICK', '2019-09-04 11:00:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(84, 88, 'MSC', 7, 'MSC MARIA LAURA', '2019-09-04 03:00:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(85, 87, 'MSC', 4, 'MSC ANCHROGE\r\n', '2019-09-04 02:45:00', 0, 'JCT4', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(86, 89, 'MSC', 3, 'MSC PARIS', '2019-09-04 10:46:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(87, 91, 'MSC', 3, 'MSC PARIS', '2019-09-05 03:15:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(88, 90, 'MSC', 4, 'MSC ANCHROGE\r\n', '2019-09-05 02:15:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(89, 93, 'MSC', 7, 'MSC MARIA LAURA', '2019-09-06 02:45:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(90, 92, 'MSC', 4, 'MSC ANCHROGE\r\n', '2019-09-06 11:00:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(91, 94, 'MSC', 11, 'MSC SINDY', '2019-09-06 02:45:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(92, 79, 'LIL', 5, 'NICKIE B', '2019-09-07 11:00:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(93, 80, 'LIL', 8, 'RT ODIN', '2019-09-07 11:00:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(94, 97, 'MSC', 4, 'MSC ANCHROGE\r\n', '2019-09-07 03:30:00', 0, 'JCT4', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(95, 96, 'MSC', 12, 'MANA', '2019-09-07 12:48:00', 0, 'JCT4', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(96, 95, 'MSC', 7, 'MSC MARIA LAURA', '2019-09-07 18:16:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(97, 103, 'SIM', 9, 'MP THE BELICHICK', '2019-09-07 20:40:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(98, 104, 'SIM', 16, 'HAPPY BEE\r\n', '2019-09-08 01:09:00', 0, 'JCT4', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(99, 99, 'MSC', 7, 'MSC MARIA LAURA', '2019-09-08 03:45:00', 0, 'JCT1', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(100, 98, 'MSC', 4, 'MSC ANCHROGE\r\n', '2019-09-08 08:45:00', 0, 'JCT2', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(101, 100, 'LIL', 5, 'NICKIE B', '2019-09-08 11:00:00', 0, 'JCT3', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(102, 101, 'LIL', 8, 'RT ODIN', '2019-09-08 07:47:00', 0, 'JCT4', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(103, 102, 'SIM', 16, 'HAPPY BEE\r\n', '2019-09-08 14:35:00', 0, 'JCT4', '2019-09-07', '', '2019-09-07 13:53:20', 900, 1, 0),
(104, 105, 'MSC', 11, 'MSC SINDY', '2019-09-08 18:44:00', 0, 'JCT3', '2019-09-07', '', '2019-09-08 02:01:55', 663, 1, 0),
(105, 106, 'MSC', 12, 'MANA', '2019-09-09 11:00:00', 0, 'JCT1', '2019-09-08', '', '2019-09-07 18:30:00', 900, 1, 1),
(106, 107, 'LIL', 5, 'NICKIE B', '2019-09-09 12:00:00', 0, 'JCT3', '2019-09-08', '', '2019-09-07 18:30:00', 900, 1, 1),
(107, 108, 'COC', 14, 'COSCO OSAKA', '2019-09-09 13:00:00', 0, 'JCT2', '2019-09-08', '', '2019-09-07 18:30:00', 900, 1, 1),
(108, 109, 'MSC', 11, 'MSC SINDY', '2019-09-09 11:00:00', 0, 'JCT4', '2019-09-08', '', '2019-09-07 18:30:00', 900, 1, 1),
(109, 110, 'LIL', 8, 'RT ODIN', '2019-09-09 16:58:00', 0, 'JCT1', '2019-09-08', '', '2019-09-07 18:30:00', 900, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_quay_crane`
--

CREATE TABLE `wtyqf_slpa_quay_crane` (
  `quay_crane_id` int(11) NOT NULL,
  `quay_crane_no` varchar(250) NOT NULL,
  `quay_crane_length` int(11) NOT NULL,
  `quay_crane_status` varchar(3) NOT NULL,
  `crane_loading_time` time NOT NULL,
  `crane_dis_time` time NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wtyqf_slpa_quay_crane`
--

INSERT INTO `wtyqf_slpa_quay_crane` (`quay_crane_id`, `quay_crane_no`, `quay_crane_length`, `quay_crane_status`, `crane_loading_time`, `crane_dis_time`, `user_id`, `created_date`) VALUES
(1, 'C1', 500, '1', '00:02:00', '00:02:00', 1, '2019-02-25 04:25:29'),
(2, 'C2', 500, '1', '00:02:00', '00:02:00', 1, '2019-02-25 04:25:29'),
(3, 'C3', 1000, '1', '00:02:00', '00:02:00', 1, '2019-02-25 04:25:29'),
(4, 'C4', 1000, '1', '00:02:00', '00:02:00', 1, '2019-02-25 04:25:29'),
(5, 'C5', 500, '1', '00:02:00', '00:02:00', 1, '2019-02-25 04:25:29'),
(6, 'C6', 500, '1', '00:02:00', '00:02:00', 1, '2019-02-25 04:25:29'),
(7, 'C7', 1000, '1', '00:02:00', '00:02:00', 1, '2019-02-25 04:25:29'),
(8, 'C8', 1000, '1', '00:02:00', '00:02:00', 1, '2019-02-25 04:25:29'),
(9, 'C9', 1000, '1', '00:02:00', '00:02:00', 1, '2019-02-25 04:25:29'),
(10, 'C10', 500, '1', '00:02:00', '00:02:00', 1, '2019-02-25 04:25:29'),
(11, 'C11', 1000, '1', '00:02:00', '00:02:00', 1, '2019-02-25 04:25:29'),
(12, 'C12', 1000, '1', '00:02:00', '00:02:00', 1, '2019-02-25 04:25:29'),
(13, 'C13', 500, '1', '00:02:00', '00:02:00', 1, '2019-02-25 04:25:29'),
(14, 'C14', 500, '1', '00:02:00', '00:02:00', 1, '2019-02-25 04:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_quay_crane_disable`
--

CREATE TABLE `wtyqf_slpa_quay_crane_disable` (
  `quay_crane_disable_id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `quay_crane_id` int(11) NOT NULL,
  `disable_date` date NOT NULL,
  `disable_time` time NOT NULL,
  `reason` text NOT NULL,
  `crane_status` varchar(5) NOT NULL,
  `enable_date` date NOT NULL,
  `enable_time` time NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_schedule_automatic`
--

CREATE TABLE `wtyqf_slpa_schedule_automatic` (
  `schedule_automaic_id` int(11) NOT NULL,
  `vessel_id` int(11) NOT NULL,
  `vessel_arrival_id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `schedule_date` date NOT NULL,
  `date` date NOT NULL COMMENT 'Vessel arrival date',
  `eta` time NOT NULL COMMENT 'Vessel arrival time',
  `etb` datetime NOT NULL COMMENT 'time given by port',
  `etc` datetime NOT NULL COMMENT 'completed time given by port',
  `b_no` varchar(250) NOT NULL,
  `no_of_cranes` int(11) NOT NULL,
  `vessel_dis` varchar(250) NOT NULL,
  `vessel_load` varchar(250) NOT NULL,
  `total` varchar(250) NOT NULL,
  `vessel` varchar(250) NOT NULL,
  `loa` varchar(250) NOT NULL,
  `service` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `ref_no` varchar(250) NOT NULL,
  `remarks` varchar(250) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` int(1) NOT NULL,
  `adb` date NOT NULL,
  `atb` time NOT NULL,
  `adc` date NOT NULL,
  `atc` time NOT NULL,
  `reschedule_id` int(11) NOT NULL,
  `complete_status` varchar(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_schedule_automatic`
--

INSERT INTO `wtyqf_slpa_schedule_automatic` (`schedule_automaic_id`, `vessel_id`, `vessel_arrival_id`, `slot_id`, `schedule_date`, `date`, `eta`, `etb`, `etc`, `b_no`, `no_of_cranes`, `vessel_dis`, `vessel_load`, `total`, `vessel`, `loa`, `service`, `status`, `ref_no`, `remarks`, `created_date`, `updated_date`, `state`, `adb`, `atb`, `adc`, `atc`, `reschedule_id`, `complete_status`, `user_id`) VALUES
(1, 12, 20, 1, '2019-01-01', '2019-01-01', '12:00:00', '2019-01-01 14:00:00', '2019-01-01 17:57:00', 'JCT1', 3, '233', '122', '355', 'MANA', '100', 'QWS', 'F', 'rwerw', 'test', '2019-09-07 00:00:00', '2019-09-07 19:15:50', 1, '2019-01-01', '14:00:00', '2019-01-01', '17:57:00', 0, 'C', 663),
(2, 5, 38, 3, '2019-01-01', '2019-01-01', '09:00:00', '2019-01-01 11:00:00', '2019-01-01 13:45:00', 'JCT3', 4, '210', '120', '330', 'NICKIE B', '162', 'Wer', 'F', '9qwe', 'test', '2019-09-07 00:00:00', '2019-09-07 19:15:50', 1, '2019-01-01', '11:00:00', '2019-01-01', '13:45:00', 0, 'C', 663),
(3, 11, 42, 4, '2019-01-01', '2019-01-01', '09:00:00', '2019-01-01 11:00:00', '2019-01-01 15:50:00', 'JCT4', 4, '234', '345', '579', 'MSC SINDY', '337', 'Rert', 'M', '8qwe', 'test', '2019-09-07 00:00:00', '2019-09-07 19:15:50', 1, '2019-01-01', '11:00:00', '2019-01-01', '15:50:00', 0, 'C', 663),
(4, 16, 43, 2, '2019-01-01', '2019-01-01', '09:00:00', '2019-01-01 11:00:00', '2019-01-01 19:40:00', 'JCT2', 3, '234', '546', '780', 'HAPPY BEE\r\n', '172', 'wrr', 'M', '7qwe', 'test', '2019-09-07 00:00:00', '2019-09-07 19:15:50', 1, '2019-01-01', '11:00:00', '2019-01-01', '19:40:00', 0, 'C', 663),
(5, 3, 44, 3, '2019-01-01', '2019-01-01', '09:00:00', '2019-01-01 15:45:00', '2019-01-01 21:41:00', 'JCT3', 4, '34', '678', '712', 'MSC PARIS', '335', 'Ye5', 'M', '6qwe', 'test', '2019-09-07 00:00:00', '2019-09-07 19:15:50', 1, '2019-01-01', '15:45:00', '2019-01-01', '21:41:00', 0, 'C', 663),
(6, 9, 75, 4, '2019-01-01', '2019-01-01', '09:00:00', '2019-01-01 17:50:00', '2019-01-02 01:20:00', 'JCT4', 4, '2', '898', '900', 'MP THE BELICHICK', '295', 'erw', 'M', 'rtyrty', 'test', '2019-09-07 00:00:00', '2019-09-07 19:15:50', 1, '2019-01-01', '17:50:00', '2019-01-02', '01:20:00', 0, 'C', 663),
(7, 14, 76, 2, '2019-01-01', '2019-01-01', '09:00:00', '2019-01-01 21:40:00', '2019-01-02 05:18:00', 'JCT2', 3, '234', '453', '687', 'COSCO OSAKA', '260', 'rw', 'M', 'ghjhjgh', 'test', '2019-09-07 00:00:00', '2019-09-07 19:15:50', 1, '2019-01-01', '21:40:00', '2019-01-02', '05:18:00', 0, 'C', 663),
(8, 4, 77, 3, '2019-01-01', '2019-01-01', '09:00:00', '2019-01-01 23:41:00', '2019-01-02 07:11:00', 'JCT3', 4, '546', '353', '899', 'MSC ANCHROGE\r\n', '299', 'rttyr', 'M', 'lklk', 'test', '2019-09-07 00:00:00', '2019-09-07 19:15:50', 1, '2019-01-01', '23:41:00', '2019-01-02', '07:11:00', 0, 'C', 663),
(9, 7, 78, 1, '2019-01-01', '2019-01-01', '12:15:00', '2019-01-01 19:57:00', '2019-01-02 08:36:00', 'JCT1', 3, '464', '675', '1139', 'MSC MARIA LAURA', '228', 'ert', 'M', 'rtrt', 'test', '2019-09-07 00:00:00', '2019-09-07 19:15:50', 1, '2019-01-01', '19:57:00', '2019-01-02', '08:36:00', 0, 'C', 663),
(10, 8, 39, 1, '2019-01-02', '2019-01-02', '12:00:00', '2019-01-02 14:00:00', '2019-01-02 18:57:00', 'JCT1', 3, '123', '322', '445', 'RT ODIN', '170', 'Qer', 'F', '5qwe', 'test', '2019-09-07 00:00:00', '2019-09-07 19:18:41', 1, '2019-01-02', '14:00:00', '2019-01-02', '18:57:00', 0, 'C', 900),
(11, 12, 40, 3, '2019-01-02', '2019-01-02', '09:00:00', '2019-01-02 11:00:00', '2019-01-02 17:40:00', 'JCT3', 4, '344', '455', '799', 'MANA', '100', 'Qwe', 'F', '4qwe', 'test', '2019-09-07 00:00:00', '2019-09-07 19:18:41', 1, '2019-01-02', '11:00:00', '2019-01-02', '17:40:00', 0, 'C', 900),
(12, 14, 41, 2, '2019-01-02', '2019-01-02', '09:00:00', '2019-01-02 11:00:00', '2019-01-02 17:19:00', 'JCT2', 3, '23', '546', '569', 'COSCO OSAKA', '260', 'Ger', 'M', '3qwe', 'test', '2019-09-07 00:00:00', '2019-09-07 19:18:41', 1, '2019-01-02', '11:00:00', '2019-01-02', '17:19:00', 0, 'C', 900),
(13, 11, 47, 4, '2019-01-02', '2019-01-02', '14:30:00', '2019-01-02 16:30:00', '2019-01-02 20:35:00', 'JCT4', 4, '34', '456', '490', 'MSC SINDY', '337', 'Trwret we', 'M', '2wer', 'test', '2019-09-07 00:00:00', '2019-09-07 19:18:41', 1, '2019-01-02', '16:30:00', '2019-01-02', '20:35:00', 0, 'C', 900),
(14, 3, 46, 3, '2019-01-02', '2019-01-02', '12:30:00', '2019-01-02 19:40:00', '2019-01-02 23:45:00', 'JCT3', 4, '34', '456', '490', 'MSC PARIS', '335', 'Trw we', 'M', '3wer', 'test', '2019-09-07 00:00:00', '2019-09-07 19:18:42', 1, '2019-01-02', '19:40:00', '2019-01-02', '23:45:00', 0, 'C', 900),
(15, 4, 45, 2, '2019-01-02', '2019-01-02', '09:00:00', '2019-01-02 19:19:00', '2019-01-03 00:46:00', 'JCT2', 3, '34', '456', '490', 'MSC ANCHROGE\r\n', '299', 'Trw', 'M', '4wer', 'test', '2019-09-07 00:00:00', '2019-09-07 19:18:42', 1, '2019-01-02', '19:19:00', '2019-01-03', '00:46:00', 0, 'C', 900),
(16, 8, 25, 1, '2019-01-07', '2019-01-07', '02:00:00', '2019-01-07 04:00:00', '2019-01-07 07:35:00', 'JCT1', 3, '200', '122', '322', 'RT ODIN', '170', 'WW', 'F', 'erwer', 'test', '2019-09-07 00:00:00', '2019-09-07 19:18:51', 1, '2019-01-07', '04:00:00', '2019-01-07', '07:35:00', 0, 'C', 900),
(17, 5, 26, 1, '2019-01-29', '2019-01-29', '04:00:00', '2019-01-29 06:00:00', '2019-01-29 12:11:00', 'JCT1', 3, '123', '433', '556', 'NICKIE B', '162', 'EE', 'F', 'dfsfsewr', 'test', '2019-09-07 00:00:00', '2019-09-07 19:18:56', 1, '2019-01-29', '06:00:00', '2019-01-29', '12:11:00', 0, 'C', 900),
(18, 11, 22, 3, '2019-02-17', '2019-02-17', '12:00:00', '2019-02-17 14:00:00', '2019-02-17 21:19:00', 'JCT3', 4, '533', '344', '877', 'MSC SINDY', '337', 'RRR', 'M', 'wqwqwq', 'test', '2019-09-07 00:00:00', '2019-09-07 19:19:02', 1, '2019-02-17', '14:00:00', '2019-02-17', '21:19:00', 0, 'C', 900),
(19, 4, 21, 2, '2019-03-12', '2019-03-12', '03:00:00', '2019-03-12 05:00:00', '2019-03-12 11:32:00', 'JCT2', 3, '388', '200', '588', 'MSC ANCHROGE\r\n', '299', 'ERR FD', 'M', 'ssdfsdf', 'test', '2019-09-07 00:00:00', '2019-09-07 19:19:08', 1, '2019-03-12', '05:00:00', '2019-03-12', '11:32:00', 0, 'C', 900),
(20, 8, 27, 1, '2019-03-19', '2019-03-19', '04:00:00', '2019-03-19 06:00:00', '2019-03-19 15:45:00', 'JCT1', 3, '433', '444', '877', 'RT ODIN', '170', 'RRR', 'F', 'wwwwwww', 'test', '2019-09-07 00:00:00', '2019-09-07 19:19:14', 1, '2019-03-19', '06:00:00', '2019-03-19', '15:45:00', 0, 'C', 900),
(21, 7, 23, 1, '2019-03-20', '2019-03-20', '12:00:00', '2019-03-20 14:00:00', '2019-03-20 20:09:00', 'JCT1', 3, '222', '332', '554', 'MSC MARIA LAURA', '228', 'EE GGG', 'M', 'bbb', 'test', '2019-09-07 00:00:00', '2019-09-07 19:19:27', 1, '2019-03-20', '14:00:00', '2019-03-20', '20:09:00', 0, 'C', 900),
(22, 3, 24, 3, '2019-04-08', '2019-04-08', '05:00:00', '2019-04-08 07:00:00', '2019-04-08 18:01:00', 'JCT3', 4, '566', '755', '1321', 'MSC PARIS', '335', 'REE', 'M', 'vcxvx', 'test', '2019-09-07 00:00:00', '2019-09-07 19:19:33', 1, '2019-04-08', '07:00:00', '2019-04-08', '18:01:00', 0, 'C', 900),
(23, 8, 1, 1, '2019-04-29', '2019-04-29', '18:00:00', '2019-04-29 20:00:00', '2019-04-30 04:50:00', 'JCT1', 3, '210', '585', '795', 'RT ODIN', '170', 'MALE', 'F', 'q', 'test', '2019-09-07 00:00:00', '2019-09-07 19:19:47', 1, '2019-04-29', '20:00:00', '2019-04-30', '04:50:00', 0, 'C', 900),
(24, 1, 2, 1, '2019-05-01', '2019-05-01', '00:00:00', '2019-05-01 02:00:00', '2019-05-01 04:42:00', 'JCT1', 3, '0', '243', '243', 'UNISEA\r\n', '155', 'CASUAL', 'F', 'w', 'test', '2019-09-07 00:00:00', '2019-09-07 19:19:58', 1, '2019-05-01', '02:00:00', '2019-05-01', '04:42:00', 0, 'C', 900),
(25, 3, 3, 3, '2019-05-01', '2019-05-01', '16:30:00', '2019-05-01 18:30:00', '2019-05-02 21:00:00', 'JCT3', 4, '1650', '1530', '3180', 'MSC PARIS', '335', 'INGWE-E', 'M', 'e', 'test', '2019-09-07 00:00:00', '2019-09-07 19:19:58', 1, '2019-05-01', '18:30:00', '2019-05-02', '21:00:00', 0, 'C', 900),
(26, 19, 13, 2, '2019-05-01', '2019-05-01', '00:00:00', '2019-05-01 02:00:00', '2019-05-01 08:11:00', 'JCT2', 3, '206', '350', '556', 'MCP LONDON\r\n', '117', 'MALE', 'F', 'h', 'test', '2019-09-07 00:00:00', '2019-09-07 19:19:58', 1, '2019-05-01', '02:00:00', '2019-05-01', '08:11:00', 0, 'C', 900),
(27, 4, 68, 2, '2019-05-01', '2019-05-01', '09:00:00', '2019-05-01 11:00:00', '2019-05-01 22:05:00', 'JCT2', 3, '433', '565', '998', 'MSC ANCHROGE\r\n', '299', 'rte', 'M', 'werwert', 'test', '2019-09-07 00:00:00', '2019-09-07 19:19:58', 1, '2019-05-01', '11:00:00', '2019-05-01', '22:05:00', 0, 'C', 900),
(28, 4, 4, 2, '2019-05-02', '2019-05-02', '05:00:00', '2019-05-02 07:00:00', '2019-05-03 08:27:00', 'JCT2', 3, '1690', '600', '2290', 'MSC ANCHROGE\r\n', '299', 'AFR.EXP', 'M', 'r', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:03', 1, '2019-05-02', '07:00:00', '2019-05-03', '08:27:00', 0, 'C', 900),
(29, 13, 6, 1, '2019-05-02', '2019-05-02', '00:00:00', '2019-05-02 02:00:00', '2019-05-02 06:27:00', 'JCT1', 3, '0', '400', '400', 'OEL SHASTA', '179', 'CG', 'F', 't', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:03', 1, '2019-05-02', '02:00:00', '2019-05-02', '06:27:00', 0, 'C', 900),
(30, 14, 7, 4, '2019-05-02', '2019-05-02', '20:00:00', '2019-05-02 22:00:00', '2019-05-02 23:22:00', 'JCT4', 4, '79', '85', '164', 'COSCO OSAKA', '260', 'AEF-E', 'M', 'y', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:03', 1, '2019-05-02', '22:00:00', '2019-05-02', '23:22:00', 0, 'C', 900),
(31, 12, 5, 1, '2019-05-02', '2019-05-02', '07:00:00', '2019-05-02 09:00:00', '2019-05-02 09:02:00', 'JCT1', 3, '1', '0', '1', 'MANA', '100', 'CASUAL', 'F', 'a', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:03', 1, '2019-05-02', '09:00:00', '2019-05-02', '09:02:00', 0, 'C', 900),
(32, 2, 9, 1, '2019-05-02', '2019-05-02', '00:00:00', '2019-05-02 11:02:00', '2019-05-02 18:15:00', 'JCT1', 3, '0', '650', '650', 'SMILEY LADY\r\n', '184', 'CG', 'F', 's', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:03', 1, '2019-05-02', '11:02:00', '2019-05-02', '18:15:00', 0, 'C', 900),
(33, 15, 8, 1, '2019-05-03', '2019-05-03', '01:00:00', '2019-05-03 03:00:00', '2019-05-03 12:30:00', 'JCT1', 3, '400', '455', '855', 'GANTA BHUM', '152', 'TUT', 'F', 'u', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:08', 1, '2019-05-03', '03:00:00', '2019-05-03', '12:30:00', 0, 'C', 900),
(34, 17, 11, 1, '2019-05-03', '2019-05-03', '14:00:00', '2019-05-03 16:00:00', '2019-05-04 02:58:00', 'JCT1', 3, '622', '365', '987', 'TR ARAMIS\r\n', '186', 'CASUAL', 'F', 'd', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:08', 1, '2019-05-03', '16:00:00', '2019-05-04', '02:58:00', 0, 'C', 900),
(35, 16, 10, 3, '2019-05-03', '2019-05-03', '24:00:00', '2019-05-04 02:00:00', '2019-05-04 14:05:00', 'JCT3', 4, '650', '800', '1450', 'HAPPY BEE\r\n', '172', 'CCS-E', 'M', 'f', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:09', 1, '2019-05-04', '02:00:00', '2019-05-04', '14:05:00', 0, 'C', 900),
(36, 18, 12, 2, '2019-05-03', '2019-05-03', '21:00:00', '2019-05-03 23:00:00', '2019-05-04 04:10:00', 'JCT2', 3, '200', '265', '465', 'OEL INDIA\r\n\r\n\r\n', '150', 'CCU', 'F', 'g', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:09', 1, '2019-05-03', '23:00:00', '2019-05-04', '04:10:00', 0, 'C', 900),
(37, 20, 14, 4, '2019-05-04', '2019-05-04', '10:00:00', '2019-05-04 12:00:00', '2019-05-05 13:00:00', 'JCT4', 4, '1000', '2000', '3000', 'XIN SHANGHAI\r\n', '337', 'IMED', 'M', 'j', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:15', 1, '2019-05-04', '12:00:00', '2019-05-05', '13:00:00', 0, 'C', 900),
(38, 21, 15, 2, '2019-05-04', '2019-05-04', '06:30:00', '2019-05-04 08:30:00', '2019-05-05 10:03:00', 'JCT2', 3, '0', '2300', '2300', 'CORHELIA1', '294', 'PETRA', 'M', 'k', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:15', 1, '2019-05-04', '08:30:00', '2019-05-05', '10:03:00', 0, 'C', 900),
(39, 22, 16, 3, '2019-05-06', '2019-05-06', '24:59:00', '2019-05-07 02:59:00', '2019-05-07 04:04:00', 'JCT3', 4, '0', '130', '130', 'EVER CONQUEST', '334', 'CIX-2', 'M', 'l', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:21', 1, '2019-05-07', '02:59:00', '2019-05-07', '04:04:00', 0, 'C', 900),
(40, 12, 48, 1, '2019-06-04', '2019-06-04', '09:00:00', '2019-06-04 11:00:00', '2019-06-04 17:26:00', 'JCT1', 3, '234', '345', '579', 'MANA', '100', 'Wee', 'F', '1ert', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:27', 1, '2019-06-04', '11:00:00', '2019-06-04', '17:26:00', 0, 'C', 900),
(41, 11, 50, 3, '2019-06-06', '2019-06-06', '14:00:00', '2019-06-06 16:00:00', '2019-06-06 20:50:00', 'JCT3', 4, '234', '345', '579', 'MSC SINDY', '337', 'Wee re er', 'M', '3ert', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:32', 1, '2019-06-06', '16:00:00', '2019-06-06', '20:50:00', 0, 'C', 900),
(42, 7, 49, 1, '2019-06-06', '2019-06-06', '13:00:00', '2019-06-06 15:00:00', '2019-06-06 21:26:00', 'JCT1', 3, '234', '345', '579', 'MSC MARIA LAURA', '228', 'Wee re', 'M', '2ert', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:32', 1, '2019-06-06', '15:00:00', '2019-06-06', '21:26:00', 0, 'C', 900),
(43, 12, 17, 1, '2019-07-01', '2019-07-01', '12:00:00', '2019-07-01 14:00:00', '2019-07-01 18:03:00', 'JCT1', 3, '242', '123', '365', 'MANA', '100', 'WER', 'F', 'www', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:37', 1, '2019-07-01', '14:00:00', '2019-07-01', '18:03:00', 0, 'C', 900),
(44, 3, 19, 3, '2019-07-02', '2019-07-02', '12:59:00', '2019-07-02 14:59:00', '2019-07-02 18:13:00', 'JCT3', 4, '354', '34', '388', 'MSC PARIS', '335', '35', 'M', 'hhhh', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:43', 1, '2019-07-02', '14:59:00', '2019-07-02', '18:13:00', 0, 'C', 900),
(45, 7, 18, 1, '2019-07-07', '2019-07-07', '23:00:00', '2019-07-08 01:00:00', '2019-07-08 05:05:00', 'JCT1', 3, '24', '343', '367', 'MSC MARIA LAURA', '228', 'WR', 'M', 'nnnn', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:48', 1, '2019-07-08', '01:00:00', '2019-07-08', '05:05:00', 0, 'C', 900),
(46, 12, 28, 3, '2019-07-08', '2019-07-08', '03:00:00', '2019-07-08 05:00:00', '2019-07-08 10:00:00', 'JCT3', 4, '400', '200', '600', 'MANA', '100', 'qqq', 'F', 'fffghgh', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:54', 1, '2019-07-08', '05:00:00', '2019-07-08', '10:00:00', 0, 'C', 900),
(47, 4, 29, 2, '2019-07-08', '2019-07-08', '09:00:00', '2019-07-08 11:00:00', '2019-07-08 16:33:00', 'JCT2', 3, '200', '300', '500', 'MSC ANCHROGE\r\n', '299', 'qqq', 'M', 'frfre', 'test', '2019-09-07 00:00:00', '2019-09-07 19:20:54', 1, '2019-07-08', '11:00:00', '2019-07-08', '16:33:00', 0, 'C', 900),
(48, 12, 30, 1, '2019-07-09', '2019-07-09', '09:00:00', '2019-07-09 11:00:00', '2019-07-09 13:13:00', 'JCT1', 3, '100', '100', '200', 'MANA', '100', 'q', 'F', 'dsded', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:00', 1, '2019-07-09', '11:00:00', '2019-07-09', '13:13:00', 0, 'C', 900),
(49, 4, 31, 2, '2019-07-09', '2019-07-09', '09:00:00', '2019-07-09 11:00:00', '2019-07-09 16:33:00', 'JCT2', 3, '300', '200', '500', 'MSC ANCHROGE\r\n', '299', '1', 'M', 'qwer', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:00', 1, '2019-07-09', '11:00:00', '2019-07-09', '16:33:00', 0, 'C', 900),
(50, 7, 32, 3, '2019-07-09', '2019-07-09', '09:00:00', '2019-07-09 11:00:00', '2019-07-09 13:30:00', 'JCT3', 4, '100', '200', '300', 'MSC MARIA LAURA', '228', '2', 'M', 'weq', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:00', 1, '2019-07-09', '11:00:00', '2019-07-09', '13:30:00', 0, 'C', 900),
(51, 3, 33, 4, '2019-07-09', '2019-07-09', '09:00:00', '2019-07-09 11:00:00', '2019-07-09 14:20:00', 'JCT4', 4, '100', '300', '400', 'MSC PARIS', '335', '3', 'M', 'ffff', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:00', 1, '2019-07-09', '11:00:00', '2019-07-09', '14:20:00', 0, 'C', 900),
(52, 11, 34, 3, '2019-07-09', '2019-07-09', '09:00:00', '2019-07-09 15:30:00', '2019-07-09 16:58:00', 'JCT3', 4, '100', '75', '175', 'MSC SINDY', '337', '5', 'M', 'wqw', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:00', 1, '2019-07-09', '15:30:00', '2019-07-09', '16:58:00', 0, 'C', 900),
(53, 4, 67, 2, '2019-07-18', '2019-07-18', '12:30:00', '2019-07-18 14:30:00', '2019-07-18 15:45:00', 'JCT2', 3, '45', '67', '112', 'MSC ANCHROGE\r\n', '299', 'tr', 'M', 'rty', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:05', 1, '2019-07-18', '14:30:00', '2019-07-18', '15:45:00', 0, 'C', 900),
(54, 7, 66, 1, '2019-07-24', '2019-07-24', '09:00:00', '2019-07-24 11:00:00', '2019-07-24 12:07:00', 'JCT1', 3, '45', '56', '101', 'MSC MARIA LAURA', '228', 'tr', 'M', 'fgh', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:09', 1, '2019-07-24', '11:00:00', '2019-07-24', '12:07:00', 0, 'C', 900),
(55, 11, 51, 3, '2019-08-01', '2019-08-01', '12:30:00', '2019-08-01 14:30:00', '2019-08-01 17:28:00', 'JCT3', 4, '234', '345', '579', 'MSC SINDY', '337', 'Rewr', 'M', '5ert', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:14', 1, '2019-08-01', '14:30:00', '2019-08-01', '17:28:00', 0, 'C', 900),
(56, 12, 52, 1, '2019-08-01', '2019-08-01', '12:30:00', '2019-08-01 14:30:00', '2019-08-01 20:56:00', 'JCT1', 3, '234', '345', '579', 'MANA', '100', 'qwe re', 'F', '4ert', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:14', 1, '2019-08-01', '14:30:00', '2019-08-01', '20:56:00', 0, 'C', 900),
(57, 11, 51, 4, '2019-08-01', '2019-08-01', '14:00:00', '2019-08-01 16:00:00', '2019-08-01 20:50:00', 'JCT4', 4, '234', '345', '579', 'MSC SINDY', '337', 'qwe', 'M', '6ert', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:14', 1, '2019-08-01', '16:00:00', '2019-08-01', '20:50:00', 0, 'C', 900),
(58, 12, 65, 1, '2019-08-15', '2019-08-15', '09:00:00', '2019-08-15 11:00:00', '2019-08-15 16:12:00', 'JCT1', 3, '123', '345', '468', 'MANA', '100', 'rew', 'F', 'erter', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:19', 1, '2019-08-15', '11:00:00', '2019-08-15', '16:12:00', 0, 'C', 900),
(59, 7, 36, 1, '2019-08-25', '2019-08-25', '23:59:00', '2019-08-26 01:59:00', '2019-08-26 03:27:00', 'JCT1', 3, '34', '45', '79', 'MSC MARIA LAURA', '228', '56yr', 'M', '2qwe', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:24', 1, '2019-08-26', '01:59:00', '2019-08-26', '03:27:00', 0, 'C', 900),
(60, 7, 36, 3, '2019-08-25', '2019-08-25', '22:46:00', '2019-08-26 00:46:00', '2019-08-26 01:26:00', 'JCT3', 4, '34', '45', '79', 'MSC MARIA LAURA', '228', 're', 'M', '1we', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:24', 1, '2019-08-26', '00:46:00', '2019-08-26', '01:26:00', 0, 'C', 900),
(61, 12, 35, 2, '2019-08-25', '2019-08-25', '11:59:00', '2019-08-25 13:59:00', '2019-08-25 20:32:00', 'JCT2', 3, '389', '200', '589', 'MANA', '100', 'we', 'F', '1qwe', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:24', 1, '2019-08-25', '13:59:00', '2019-08-25', '20:32:00', 0, 'C', 900),
(62, 12, 64, 1, '2019-08-27', '2019-08-27', '09:00:00', '2019-08-27 11:00:00', '2019-08-27 11:05:00', 'JCT1', 3, '4', '3', '7', 'MANA', '100', '4', 'F', 'fghgh', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:30', 1, '2019-08-27', '11:00:00', '2019-08-27', '11:05:00', 0, 'C', 900),
(63, 4, 62, 2, '2019-08-31', '2019-08-31', '09:00:00', '2019-08-31 11:00:00', '2019-08-31 11:53:00', 'JCT2', 3, '45', '34', '79', 'MSC ANCHROGE\r\n', '299', 'er', 'M', 'fghfrty', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:35', 1, '2019-08-31', '11:00:00', '2019-08-31', '11:53:00', 0, 'C', 900),
(64, 3, 56, 3, '2019-09-01', '2019-09-01', '05:00:00', '2019-09-01 07:00:00', '2019-09-01 09:58:00', 'JCT3', 4, '234', '122', '356', 'MSC PARIS', '335', 'hytt yut', 'M', '7ert', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:43', 1, '2019-09-01', '07:00:00', '2019-09-01', '09:58:00', 0, 'C', 900),
(65, 4, 55, 2, '2019-09-01', '2019-09-01', '05:00:00', '2019-09-01 07:00:00', '2019-09-01 10:57:00', 'JCT2', 3, '234', '122', '356', 'MSC ANCHROGE\r\n', '299', 'hytt', 'M', '8ert', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:44', 1, '2019-09-01', '07:00:00', '2019-09-01', '10:57:00', 0, 'C', 900),
(66, 12, 54, 1, '2019-09-01', '2019-09-01', '01:30:00', '2019-09-01 03:30:00', '2019-09-01 07:27:00', 'JCT1', 3, '234', '122', '356', 'MANA', '100', 'Rewr re', 'F', '9ert', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:44', 1, '2019-09-01', '03:30:00', '2019-09-01', '07:27:00', 0, 'C', 900),
(67, 8, 59, 1, '2019-09-01', '2019-09-01', '09:00:00', '2019-09-01 11:00:00', '2019-09-01 17:26:00', 'JCT1', 3, '234', '345', '579', 'RT ODIN', '170', 'ert', 'F', '1rty', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:44', 1, '2019-09-01', '11:00:00', '2019-09-01', '17:26:00', 0, 'C', 900),
(68, 5, 58, 4, '2019-09-01', '2019-09-01', '09:00:00', '2019-09-01 11:00:00', '2019-09-01 15:50:00', 'JCT4', 4, '234', '345', '579', 'NICKIE B', '162', 'ert', 'F', '2rty', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:44', 1, '2019-09-01', '11:00:00', '2019-09-01', '15:50:00', 0, 'C', 900),
(69, 14, 60, 3, '2019-09-01', '2019-09-01', '09:00:00', '2019-09-01 11:58:00', '2019-09-01 15:02:00', 'JCT3', 4, '23', '345', '368', 'COSCO OSAKA', '260', 'twe', 'M', '4rty', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:44', 1, '2019-09-01', '11:58:00', '2019-09-01', '15:02:00', 0, 'C', 900),
(70, 12, 63, 1, '2019-09-02', '2019-09-02', '09:00:00', '2019-09-02 11:00:00', '2019-09-02 14:47:00', 'JCT1', 3, '40', '300', '340', 'MANA', '100', 'rt', 'F', 'ghj', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:49', 1, '2019-09-02', '11:00:00', '2019-09-02', '14:47:00', 0, 'C', 900),
(71, 5, 69, 3, '2019-09-02', '2019-09-02', '12:15:00', '2019-09-02 14:15:00', '2019-09-02 20:05:00', 'JCT3', 4, '243', '456', '699', 'NICKIE B', '162', 'rewtryr', 'F', 'sfs', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:49', 1, '2019-09-02', '14:15:00', '2019-09-02', '20:05:00', 0, 'C', 900),
(72, 8, 70, 2, '2019-09-02', '2019-09-02', '00:00:00', '2019-09-02 02:00:00', '2019-09-02 14:12:00', 'JCT2', 3, '234', '864', '1098', 'RT ODIN', '170', 'ert', 'F', 'dfgd', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:49', 1, '2019-09-02', '02:00:00', '2019-09-02', '14:12:00', 0, 'C', 900),
(73, 14, 71, 4, '2019-09-02', '2019-09-02', '09:00:00', '2019-09-02 11:00:00', '2019-09-02 17:41:00', 'JCT4', 4, '345', '456', '801', 'COSCO OSAKA', '260', 'ryr', 'M', 'werw', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:49', 1, '2019-09-02', '11:00:00', '2019-09-02', '17:41:00', 0, 'C', 900),
(74, 16, 72, 2, '2019-09-02', '2019-09-02', '03:45:00', '2019-09-02 16:12:00', '2019-09-03 04:48:00', 'JCT2', 3, '678', '456', '1134', 'HAPPY BEE\r\n', '172', 'yiyu', 'M', 'fghf', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:49', 1, '2019-09-02', '16:12:00', '2019-09-03', '04:48:00', 0, 'C', 900),
(75, 4, 81, 4, '2019-09-02', '2019-09-02', '09:00:00', '2019-09-02 19:41:00', '2019-09-03 01:26:00', 'JCT4', 4, '345', '345', '690', 'MSC ANCHROGE\r\n', '299', 'ere', 'M', 'tete', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:49', 1, '2019-09-02', '19:41:00', '2019-09-03', '01:26:00', 0, 'C', 900),
(76, 7, 82, 1, '2019-09-02', '2019-09-02', '06:30:00', '2019-09-02 16:47:00', '2019-09-02 23:19:00', 'JCT1', 3, '23', '565', '588', 'MSC MARIA LAURA', '228', 'retr', 'M', 'rtry', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:49', 1, '2019-09-02', '16:47:00', '2019-09-02', '23:19:00', 0, 'C', 900),
(77, 3, 83, 3, '2019-09-02', '2019-09-02', '07:00:00', '2019-09-02 22:05:00', '2019-09-03 03:49:00', 'JCT3', 4, '453', '234', '687', 'MSC PARIS', '335', 'fgd', 'M', 'ete', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:49', 1, '2019-09-02', '22:05:00', '2019-09-03', '03:49:00', 0, 'C', 900),
(78, 11, 57, 3, '2019-09-03', '2019-09-03', '05:00:00', '2019-09-03 07:00:00', '2019-09-03 09:58:00', 'JCT3', 4, '234', '122', '356', 'MSC SINDY', '337', 'htry', 'M', '5r5y', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:58', 1, '2019-09-03', '07:00:00', '2019-09-03', '09:58:00', 0, 'C', 900),
(79, 3, 84, 4, '2019-09-03', '2019-09-03', '09:00:00', '2019-09-03 11:00:00', '2019-09-03 20:17:00', 'JCT4', 4, '657', '456', '1113', 'MSC PARIS', '335', 'ert', 'M', 'ertwe', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:58', 1, '2019-09-03', '11:00:00', '2019-09-03', '20:17:00', 0, 'C', 900),
(80, 7, 86, 1, '2019-09-03', '2019-09-03', '09:00:00', '2019-09-03 11:00:00', '2019-09-03 17:55:00', 'JCT1', 3, '46', '576', '622', 'MSC MARIA LAURA', '228', 'ete', 'M', 'wrw', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:58', 1, '2019-09-03', '11:00:00', '2019-09-03', '17:55:00', 0, 'C', 900),
(81, 12, 85, 2, '2019-09-03', '2019-09-03', '06:45:00', '2019-09-03 08:45:00', '2019-09-03 20:06:00', 'JCT2', 3, '456', '565', '1021', 'MANA', '100', 'rty', 'F', 'wrwr', 'test', '2019-09-07 00:00:00', '2019-09-07 19:21:58', 1, '2019-09-03', '08:45:00', '2019-09-03', '20:06:00', 0, 'C', 900),
(82, 12, 61, 1, '2019-09-04', '2019-09-04', '09:00:00', '2019-09-04 11:00:00', '2019-09-05 03:18:00', 'JCT1', 3, '234', '1233', '1467', 'MANA', '100', 'erw', 'F', '5rty', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:12', 1, '2019-09-04', '11:00:00', '2019-09-05', '03:18:00', 0, 'C', 900),
(83, 9, 73, 2, '2019-09-04', '2019-09-04', '09:00:00', '2019-09-04 11:00:00', '2019-09-04 19:44:00', 'JCT2', 3, '786', '0', '786', 'MP THE BELICHICK', '295', 'wer', 'M', 'hgjg', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:12', 1, '2019-09-04', '11:00:00', '2019-09-04', '19:44:00', 0, 'C', 900),
(84, 7, 88, 3, '2019-09-04', '2019-09-04', '01:00:00', '2019-09-04 03:00:00', '2019-09-04 08:46:00', 'JCT3', 4, '34', '657', '691', 'MSC MARIA LAURA', '228', '45ete', 'M', 'fdhfg', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:12', 1, '2019-09-04', '03:00:00', '2019-09-04', '08:46:00', 0, 'C', 900),
(85, 4, 87, 4, '2019-09-04', '2019-09-04', '00:45:00', '2019-09-04 02:45:00', '2019-09-05 13:10:00', 'JCT4', 4, '3453', '676', '4129', 'MSC ANCHROGE\r\n', '299', 'et', 'M', 'sdfs', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:12', 1, '2019-09-04', '02:45:00', '2019-09-05', '13:10:00', 0, 'C', 900),
(86, 3, 89, 3, '2019-09-04', '2019-09-04', '00:45:00', '2019-09-04 10:46:00', '2019-09-04 16:26:00', 'JCT3', 4, '23', '657', '680', 'MSC PARIS', '335', 'te', 'M', 'erwr', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:12', 1, '2019-09-04', '10:46:00', '2019-09-04', '16:26:00', 0, 'C', 900),
(87, 3, 91, 3, '2019-09-05', '2019-09-05', '01:15:00', '2019-09-05 03:15:00', '2019-09-05 08:49:00', 'JCT3', 4, '34', '634', '668', 'MSC PARIS', '335', 'rty', 'M', 'xxxx', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:17', 1, '2019-09-05', '03:15:00', '2019-09-05', '08:49:00', 0, 'C', 900),
(88, 4, 90, 2, '2019-09-05', '2019-09-05', '00:15:00', '2019-09-05 02:15:00', '2019-09-05 05:21:00', 'JCT2', 3, '234', '45', '279', 'MSC ANCHROGE\r\n', '299', '56tyr', 'M', 'xvxvx', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:17', 1, '2019-09-05', '02:15:00', '2019-09-05', '05:21:00', 0, 'C', 900),
(89, 7, 93, 1, '2019-09-06', '2019-09-06', '00:45:00', '2019-09-06 02:45:00', '2019-09-06 03:29:00', 'JCT1', 3, '34', '32', '66', 'MSC MARIA LAURA', '228', 'ere', 'M', 'ere', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:22', 1, '2019-09-06', '02:45:00', '2019-09-06', '03:29:00', 0, 'C', 900),
(90, 4, 92, 2, '2019-09-06', '2019-09-06', '09:00:00', '2019-09-06 11:00:00', '2019-09-06 19:51:00', 'JCT2', 3, '343', '453', '796', 'MSC ANCHROGE\r\n', '299', 'rete', 'M', 'fer', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:22', 1, '2019-09-06', '11:00:00', '2019-09-06', '19:51:00', 0, 'C', 900),
(91, 11, 94, 3, '2019-09-06', '2019-09-06', '00:45:00', '2019-09-06 02:45:00', '2019-09-08 08:49:00', 'JCT3', 4, '34', '6454', '6488', 'MSC SINDY', '337', 'eww', 'M', 'sdfswr', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:22', 1, '2019-09-06', '02:45:00', '2019-09-08', '08:49:00', 0, 'C', 900),
(92, 5, 79, 1, '2019-09-07', '2019-09-07', '09:00:00', '2019-09-07 11:00:00', '2019-09-07 16:16:00', 'JCT1', 3, '242', '533', '775', 'NICKIE B', '162', 'erte', 'F', 'dfgddf', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:26', 1, '2019-09-07', '11:00:00', '2019-09-07', '16:16:00', 0, 'C', 900),
(93, 8, 80, 2, '2019-09-07', '2019-09-07', '09:00:00', '2019-09-07 11:00:00', '2019-09-07 18:40:00', 'JCT2', 3, '234', '456', '690', 'RT ODIN', '170', 'tete', 'F', 'tryrt', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:26', 1, '2019-09-07', '11:00:00', '2019-09-07', '18:40:00', 0, 'C', 900),
(94, 4, 97, 4, '2019-09-07', '2019-09-07', '01:30:00', '2019-09-07 03:30:00', '2019-09-07 10:48:00', 'JCT4', 4, '787', '89', '876', 'MSC ANCHROGE\r\n', '299', '7hjh', 'M', 'rtyre', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:26', 1, '2019-09-07', '03:30:00', '2019-09-07', '10:48:00', 0, 'C', 900),
(95, 12, 96, 4, '2019-09-07', '2019-09-07', '00:45:00', '2019-09-07 12:48:00', '2019-09-07 23:09:00', 'JCT4', 4, '454', '787', '1241', 'MANA', '100', 'mn', 'F', 'ghfgh', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:26', 1, '2019-09-07', '12:48:00', '2019-09-07', '23:09:00', 0, 'C', 900),
(96, 7, 95, 1, '2019-09-07', '2019-09-07', '09:00:00', '2019-09-07 18:16:00', '2019-09-07 23:26:00', 'JCT1', 3, '343', '122', '465', 'MSC MARIA LAURA', '228', 'klk', 'M', 'gfgd', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:26', 1, '2019-09-07', '18:16:00', '2019-09-07', '23:26:00', 0, 'C', 900),
(97, 9, 103, 2, '2019-09-07', '2019-09-07', '00:30:00', '2019-09-07 20:40:00', '2019-09-08 04:17:00', 'JCT2', 3, '343', '342', '685', 'MP THE BELICHICK', '295', 'ere', 'M', 'fgdfg', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:26', 1, '2019-09-07', '20:40:00', '2019-09-08', '04:17:00', 0, 'C', 900),
(98, 16, 104, 4, '2019-09-07', '2019-09-07', '06:45:00', '2019-09-08 01:09:00', '2019-09-08 05:47:00', 'JCT4', 4, '232', '323', '555', 'HAPPY BEE\r\n', '172', '4klk', 'M', 'rtyry', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:26', 1, '2019-09-08', '01:09:00', '2019-09-08', '05:47:00', 0, 'C', 900),
(99, 7, 99, 1, '2019-09-08', '2019-09-08', '01:45:00', '2019-09-08 03:45:00', '2019-09-08 13:59:00', 'JCT1', 3, '23', '898', '921', 'MSC MARIA LAURA', '228', '4nb', 'M', 'erte', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:34', 1, '2019-09-08', '03:45:00', '2019-09-08', '13:59:00', 0, 'C', 900),
(100, 4, 98, 2, '2019-09-08', '2019-09-08', '06:45:00', '2019-09-08 08:45:00', '2019-09-08 13:56:00', 'JCT2', 3, '343', '123', '466', 'MSC ANCHROGE\r\n', '299', 'ere', 'M', 'dgdg', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:34', 1, '2019-09-08', '08:45:00', '2019-09-08', '13:56:00', 0, 'C', 900),
(101, 5, 100, 3, '2019-09-08', '2019-09-08', '09:00:00', '2019-09-08 11:00:00', '2019-09-08 16:44:00', 'JCT3', 4, '343', '345', '688', 'NICKIE B', '162', 'ert', 'F', 'bcbc', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:34', 1, '2019-09-08', '11:00:00', '2019-09-08', '16:44:00', 0, 'C', 900),
(102, 8, 101, 4, '2019-09-08', '2019-09-08', '00:45:00', '2019-09-08 07:47:00', '2019-09-08 12:35:00', 'JCT4', 4, '232', '343', '575', 'RT ODIN', '170', 'eww', 'F', 'czcz', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:34', 1, '2019-09-08', '07:47:00', '2019-09-08', '12:35:00', 0, 'C', 900),
(103, 16, 102, 4, '2019-09-08', '2019-09-08', '09:00:00', '2019-09-08 14:35:00', '2019-09-08 18:39:00', 'JCT4', 4, '34', '454', '488', 'HAPPY BEE\r\n', '172', 'ere', 'M', 'cbxcv', 'test', '2019-09-07 00:00:00', '2019-09-07 19:22:34', 1, '2019-09-08', '14:35:00', '2019-09-08', '18:39:00', 0, 'C', 900),
(104, 11, 105, 3, '2019-09-07', '2019-09-07', '00:30:00', '2019-09-08 18:44:00', '2019-09-09 00:28:00', 'JCT3', 4, '234', '453', '687', 'MSC SINDY', '337', 'wrwr', 'M', 'jkj', '43', '2019-09-07 00:00:00', '2019-09-07 23:09:36', 1, '2019-09-08', '18:44:00', '2019-09-09', '00:28:00', 0, 'C', 663),
(105, 12, 106, 1, '2019-09-09', '2019-09-09', '09:00:00', '2019-09-09 11:00:00', '2019-09-09 16:58:00', 'JCT1', 3, '234', '123', '357', 'MANA', '100', 'test1', 'F', 'qwe1', '', '2019-09-08 00:00:00', '2019-09-08 10:45:52', 1, '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 1, 'P', 900),
(106, 5, 107, 3, '2019-09-09', '2019-09-09', '10:00:00', '2019-09-09 12:00:00', '2019-09-09 18:20:00', 'JCT3', 3, '230', '340', '570', 'NICKIE B', '162', 'test2', 'F', 'qwe2', '', '2019-09-08 00:00:00', '2019-09-08 10:45:52', 1, '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 3, 'B', 900),
(107, 14, 108, 2, '2019-09-09', '2019-09-09', '11:00:00', '2019-09-09 13:00:00', '2019-09-09 23:43:00', 'JCT2', 3, '400', '565', '965', 'COSCO OSAKA', '260', 'test3', 'M', 'qwe3', '', '2019-09-08 00:00:00', '2019-09-08 10:45:52', 1, '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'B', 900),
(108, 11, 109, 4, '2019-09-09', '2019-09-09', '09:00:00', '2019-09-09 11:00:00', '2019-09-09 16:44:00', 'JCT4', 4, '342', '345', '687', 'MSC SINDY', '337', 're', 'M', 'rer', '', '2019-09-08 00:00:00', '2019-09-08 10:57:21', 1, '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'B', 900),
(109, 8, 110, 1, '2019-09-09', '2019-09-09', '09:00:00', '2019-09-09 18:58:00', '2019-09-10 07:12:00', 'JCT1', 3, '345', '756', '1101', 'RT ODIN', '170', 'dfgd', 'F', '', '', '2019-09-08 00:00:00', '2019-09-08 10:57:21', 1, '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 2, 'B', 900);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_slot`
--

CREATE TABLE `wtyqf_slpa_slot` (
  `slot_id` int(11) NOT NULL,
  `slot_no` varchar(100) NOT NULL,
  `slot_length` int(11) NOT NULL,
  `slot_width` float NOT NULL,
  `slot_draft` int(11) NOT NULL,
  `no_of_crane` int(11) NOT NULL,
  `re_berthing_time_difference` time NOT NULL,
  `slot_status` varchar(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wtyqf_slpa_slot`
--

INSERT INTO `wtyqf_slpa_slot` (`slot_id`, `slot_no`, `slot_length`, `slot_width`, `slot_draft`, `no_of_crane`, `re_berthing_time_difference`, `slot_status`, `user_id`, `created_date`) VALUES
(1, 'JCT1', 250, 250, 11, 3, '02:00:00', 'A', 1, '2019-02-25 04:02:56'),
(2, 'JCT2', 300, 300, 12, 3, '02:00:00', 'A', 1, '2019-02-25 04:03:08'),
(3, 'JCT3', 350, 350, 13, 4, '02:00:00', 'A', 1, '2019-02-25 04:03:18'),
(4, 'JCT4', 400, 400, 14, 4, '02:00:00', 'A', 1, '2019-02-25 04:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_slot_quay_crane_map`
--

CREATE TABLE `wtyqf_slpa_slot_quay_crane_map` (
  `slot_quay_crane_map_id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `quay_crane_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_slot_quay_crane_map`
--

INSERT INTO `wtyqf_slpa_slot_quay_crane_map` (`slot_quay_crane_map_id`, `slot_id`, `quay_crane_id`, `user_id`, `created_date`, `state`) VALUES
(1, 1, 1, 1, '2019-01-07 15:59:50', 1),
(2, 1, 2, 1, '2019-01-07 15:59:50', 1),
(3, 1, 3, 1, '2019-01-07 16:00:20', 1),
(4, 2, 4, 1, '2019-01-07 16:00:20', 1),
(5, 2, 5, 1, '2019-01-07 16:00:50', 1),
(6, 2, 6, 1, '2019-01-07 16:00:50', 1),
(7, 3, 7, 1, '2019-01-07 15:59:50', 1),
(8, 3, 8, 1, '2019-01-07 15:59:50', 1),
(9, 3, 9, 1, '2019-01-07 15:59:50', 1),
(10, 3, 10, 1, '2019-01-07 15:59:50', 1),
(11, 4, 11, 1, '2019-01-07 15:59:50', 1),
(12, 4, 12, 1, '2019-01-07 15:59:50', 1),
(13, 4, 13, 1, '2019-01-07 15:59:50', 1),
(14, 4, 14, 1, '2019-01-07 15:59:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_user_details`
--

CREATE TABLE `wtyqf_slpa_user_details` (
  `user_details_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `computer_no` varchar(11) NOT NULL,
  `user_type` varchar(5) NOT NULL,
  `contact_no` varchar(12) NOT NULL,
  `address` text NOT NULL,
  `user_group` int(11) NOT NULL,
  `user_status` varchar(2) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wtyqf_slpa_user_details`
--

INSERT INTO `wtyqf_slpa_user_details` (`user_details_id`, `id`, `computer_no`, `user_type`, `contact_no`, `address`, `user_group`, `user_status`, `created_date`, `user_id`) VALUES
(1, 663, '111111', 'I', '0112222222', 'SLPA', 8, 'A', '2019-04-30 08:16:44', 663),
(2, 664, 'UAS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(3, 665, 'CHS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(4, 666, 'ERL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(5, 667, 'PL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(6, 668, 'APL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(7, 669, 'OCL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(8, 670, 'PIL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(9, 671, 'OOL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(10, 672, 'ZIM', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(11, 673, 'MOL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(12, 674, 'HLL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(13, 675, 'LLT', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(14, 676, 'YML', 'E', '', '9876 Yang Ming Road', 4, 'A', '2019-01-10 04:24:18', 663),
(15, 677, 'WHL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(16, 678, 'NYK', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(17, 679, 'ACL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(18, 680, 'COS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(19, 681, 'CDO', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(20, 682, 'SRS', 'E', '', 'PO.BOX 886, 126 SRI JAYATHILAKE,LEVEL3, YMBA, CO.1', 4, 'A', '2019-01-10 04:24:18', 663),
(21, 683, 'OCS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(22, 684, 'IRS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(23, 685, 'ICL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(24, 686, 'MIC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(25, 687, 'OSS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(26, 688, 'CSE', 'E', '', '16,RAFFLES QUAY,36-01, HONG LEONG BUILDING,', 4, 'A', '2019-01-10 04:24:18', 663),
(27, 689, 'AMS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(28, 690, 'NAU', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(29, 691, 'NSC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(30, 692, 'PON', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(31, 693, 'HLC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(32, 694, 'CGM', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(33, 695, 'MSC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(34, 696, 'HMM', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(35, 697, 'MIS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(36, 698, 'LNL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(37, 699, 'IAS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(38, 700, 'GFS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(39, 701, 'VSL', 'E', '', '606,\'A\' WING,6th FLOOR  KUKREJA PLAZA', 4, 'A', '2019-01-10 04:24:18', 663),
(40, 702, 'ASL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(41, 703, 'KLN', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(42, 704, 'CLL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(43, 705, 'DSS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(44, 706, 'LSL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(45, 707, 'AAL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(46, 708, 'CLR', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(47, 709, 'EML', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(48, 710, 'SMU', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(49, 711, 'SIT', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(50, 712, 'FAL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(51, 713, 'SLS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(52, 714, 'SSD', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(53, 715, 'GEN', 'E', '', '24 Seaway Street, Colombo', 4, 'A', '2019-01-10 04:24:18', 663),
(54, 716, 'HAN', 'E', '', '1234 Hanjin Lane', 4, 'A', '2019-01-10 04:24:18', 663),
(55, 717, 'CYL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(56, 718, 'RML', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(57, 719, 'PLY', 'E', '', 'MUMBAI', 4, 'A', '2019-01-10 04:24:18', 663),
(58, 720, 'RRS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(59, 721, 'SIX', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(60, 722, 'UAL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(61, 723, 'OES', 'E', '', '120, LOWER DELTA ROAD,#06-07, CENDEX CENTRE,', 4, 'A', '2019-01-10 04:24:18', 663),
(62, 724, 'PXL', 'E', '', '237, ALEXANDRA ROAD,#03-06, THE ALEXCIER,', 4, 'A', '2019-01-10 04:24:18', 663),
(63, 725, 'FTH', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(64, 726, 'SEN', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(65, 727, 'CSV', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(66, 728, 'WIL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(67, 729, 'EMC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(68, 730, 'MAL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(69, 731, 'CMA', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(70, 732, 'SJM', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(71, 733, 'DUM', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(72, 734, 'OTI', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(73, 735, 'HML', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(74, 736, 'ANS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(75, 737, 'A', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(76, 738, 'COC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(77, 739, 'AQL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(78, 740, 'BEN', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(79, 741, 'BJI', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(80, 742, 'BTL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(81, 743, 'CBS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(82, 744, 'CSC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(83, 745, 'CSH', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(84, 746, 'CSL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(85, 747, 'FAR', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(86, 748, 'FSL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(87, 749, 'GAT', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(88, 750, 'GSL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(89, 751, 'HNH', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(90, 752, 'HRC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(91, 753, 'HSD', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(92, 754, 'HUB', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(93, 755, 'IAL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(94, 756, 'ICF', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(95, 757, 'IRH', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(96, 758, 'MAX', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(97, 759, 'LIL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(98, 760, 'MIA', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(99, 761, 'MIL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(100, 762, 'OLS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(101, 763, 'OOC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(102, 764, 'MML', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(103, 765, 'OST', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(104, 766, 'PUL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(105, 767, 'PRD', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(106, 768, 'SCI', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(107, 769, 'RCL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(108, 770, 'SAR', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(109, 771, 'SML', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(110, 772, 'TSL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(111, 773, 'ARC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(112, 774, 'BLT', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(113, 775, 'BST', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(114, 776, 'CCL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(115, 777, 'CCN', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(116, 778, 'CEN', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(117, 779, 'CHI', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(118, 780, 'CLC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(119, 781, 'CNC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(120, 782, 'CRO', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(121, 783, 'DAM', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(122, 784, 'ICO', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(123, 785, 'MKL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(124, 786, 'OEL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(125, 787, 'ORS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(126, 788, 'QCF', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(127, 789, 'SES', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(128, 790, 'TAL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(129, 791, 'ANL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(130, 792, 'BLN', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(131, 793, 'BSC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(132, 794, 'CEE', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(133, 795, 'CMS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(134, 796, 'DFT', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(135, 797, 'ENC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(136, 798, 'EPC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(137, 799, 'ESL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(138, 800, 'FRB', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(139, 801, 'GCL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(140, 802, 'GGS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(141, 803, 'IPS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(142, 804, 'KMT', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(143, 805, 'KUK', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(144, 806, 'LAT', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(145, 807, 'OPT', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(146, 808, 'HJS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(147, 809, 'PAC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(148, 810, 'MCL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(149, 811, 'NDA', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(150, 812, 'VAS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(151, 813, 'QNL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(152, 814, 'QNF', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(153, 815, 'MAC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(154, 816, 'DLM', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(155, 817, 'AST', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(156, 818, 'SLB', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(157, 819, 'SOT', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(158, 820, 'PLL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(159, 821, 'TAM', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(160, 822, 'TTN', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(161, 823, 'XTR', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(162, 824, 'PNC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(163, 825, 'PEK', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(164, 826, 'QCL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(165, 827, 'OEM', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(166, 828, 'SIN', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(167, 829, 'DAL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(168, 830, 'WET', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(169, 831, 'SFR', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(170, 832, 'SET', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(171, 833, 'SSL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(172, 834, 'HNT', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(173, 835, 'LUK', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(174, 836, 'SWL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(175, 837, 'MNS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(176, 838, 'PNS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(177, 839, 'MFL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(178, 840, 'MET', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(179, 841, 'PRO', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(180, 842, 'MCT', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(181, 843, 'YFL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(182, 844, 'MEL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(183, 845, 'SAC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(184, 846, 'AXI', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(185, 847, 'PNN', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(186, 848, 'MRI', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(187, 849, 'OCT', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(188, 850, 'OTR', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(189, 851, 'STX', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(190, 852, 'SNL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(191, 853, 'CAL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(192, 854, 'ONT', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(193, 855, 'BPS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(194, 856, 'CEY', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(195, 857, 'CSA', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(196, 858, 'MSL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(197, 859, 'BLP', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(198, 860, 'CNS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(199, 861, 'NOR', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(200, 862, 'SSP', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(201, 863, 'OCI', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(202, 864, 'TWF', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(203, 865, 'XCL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(204, 866, 'SIM', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(205, 867, 'PSD', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(206, 868, 'SMC', 'E', '', '25,Gukjegeumyung-Ro 2-Gil,Yeongdeungpo-Gu,', 4, 'A', '2019-01-10 04:24:18', 663),
(207, 869, 'MIM', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(208, 870, 'HLN', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(209, 871, 'HCL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(210, 872, 'EMS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(211, 873, 'ETL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(212, 874, 'MSS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(213, 875, 'ONE', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(214, 876, 'RSL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(215, 877, 'AAX', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(216, 878, 'BLK', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(217, 879, 'DMC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(218, 880, 'SLL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(219, 881, 'JWL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(220, 882, 'INT', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(221, 883, 'FTW', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(222, 884, 'ESC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(223, 885, 'SAF', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(224, 886, 'CVL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(225, 887, 'GAC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(226, 888, 'SSF', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(227, 889, 'SNK', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(228, 890, 'SGS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(229, 891, 'HBS', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(230, 892, 'JGL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(231, 893, 'PDZ', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(232, 894, 'SJL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(233, 895, 'HOY', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(234, 896, 'ABL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(235, 897, 'SJC', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(236, 898, 'HYL', 'E', '', '', 4, 'A', '2019-01-10 04:24:18', 663),
(237, 899, '222222', 'I    ', '0712222222', '10', 7, 'A', '2019-05-01 04:56:55', 663),
(238, 900, '444444', 'I', '0714444444', '10', 5, 'A', '2019-05-01 05:52:38', 899),
(239, 901, '121212', 'E', '0715555555', '12, Colombo', 4, 'A', '2019-07-06 03:09:12', 899),
(240, 902, '555555', 'I', '0715555555', '10', 3, 'A', '2019-05-01 22:42:05', 663),
(241, 903, '666666', 'I', '0716666666', '10', 6, 'A', '2019-05-01 22:43:01', 663),
(242, 904, '14774714', 'I', '0125487555', '12', 7, 'A', '2019-05-08 06:29:32', 663),
(243, 905, '34343543', 'I', '0712222233', '12', 5, 'A', '2019-07-05 02:41:31', 663),
(244, 906, '11111111', 'I', '3232', '12', 5, 'A', '2019-07-06 03:05:07', 899),
(245, 907, '22222111', 'I', '0714444444', '12', 6, 'A', '2019-07-07 21:19:16', 899),
(246, 908, '11111', 'E', '9422322222', '10', 4, 'A', '2019-07-07 21:22:03', 899),
(247, 909, '233333', 'I', '0712234455', '12', 5, 'A', '2019-07-08 04:37:55', 899),
(248, 910, '33333333', 'I', '0714444444', 'test', 6, 'I', '2019-09-03 05:47:15', 899),
(249, 911, 'QQQ', 'E', '0715111111', 'test', 4, 'I', '2019-09-03 05:46:38', 899);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_vessel`
--

CREATE TABLE `wtyqf_slpa_vessel` (
  `vessel_id` int(11) NOT NULL,
  `agent_code` varchar(11) NOT NULL,
  `vessel_code` varchar(50) NOT NULL,
  `vessel_name` varchar(100) NOT NULL,
  `vessel_length` float NOT NULL,
  `vessel_width` float NOT NULL,
  `vessel_draft` float NOT NULL,
  `line_type` varchar(1) NOT NULL,
  `vessel_status` varchar(1) NOT NULL,
  `vessel_state` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wtyqf_slpa_vessel`
--

INSERT INTO `wtyqf_slpa_vessel` (`vessel_id`, `agent_code`, `vessel_code`, `vessel_name`, `vessel_length`, `vessel_width`, `vessel_draft`, `line_type`, `vessel_status`, `vessel_state`, `user_id`, `created_date`) VALUES
(1, 'OEL', 'UNS', 'UNISEA\r\n', 155, 0, 0, 'F', 'A', 1, 663, '2019-07-04 14:01:36'),
(2, 'XCL', 'SML', 'SMILEY LADY\r\n', 184, 0, 0, 'F', 'A', 1, 663, '2019-07-04 14:01:36'),
(3, 'MSC', 'MPAR', 'MSC PARIS', 335, 0, 0, 'M', 'A', 1, 663, '2019-07-04 14:01:36'),
(4, 'MSC', 'MACH', 'MSC ANCHROGE\r\n', 299, 0, 0, 'M', 'A', 1, 663, '2019-07-04 14:01:36'),
(5, 'LIL', 'NIK', 'NICKIE B', 162, 0, 0, 'F', 'A', 1, 663, '2019-07-04 14:01:36'),
(6, 'XCL', 'ASJ', 'ASIATIC JADE', 149, 0, 0, 'F', 'A', 1, 663, '2019-07-04 14:01:36'),
(7, 'MSC', 'MSMR', 'MSC MARIA LAURA', 228, 0, 0, 'M', 'A', 1, 663, '2019-07-04 14:01:36'),
(8, 'LIL', 'RDN', 'RT ODIN', 170, 0, 0, 'F', 'A', 1, 663, '2019-07-04 14:01:36'),
(9, 'SIM', 'MTB', 'MP THE BELICHICK', 295, 0, 0, 'M', 'A', 1, 663, '2019-07-04 14:01:36'),
(10, 'ORD', 'ROD', 'RDO CONCERT', 304, 0, 0, 'M', 'A', 1, 663, '2019-07-04 14:01:36'),
(11, 'MSC', 'SIDY', 'MSC SINDY', 337, 0, 0, 'M', 'A', 1, 663, '2019-07-04 14:01:36'),
(12, 'MSC', 'MANA', 'MANA', 100, 0, 0, 'F', 'A', 1, 663, '2019-07-04 14:01:36'),
(13, 'TWF', 'OEST', 'OEL SHASTA', 179, 0, 0, 'F', 'A', 1, 663, '2019-07-04 14:01:36'),
(14, 'COC', 'CSOK', 'COSCO OSAKA', 260, 0, 0, 'M', 'A', 1, 663, '2019-07-04 14:01:36'),
(15, 'RCL', 'GTB', 'GANTA BHUM', 152, 0, 0, 'F', 'A', 1, 663, '2019-07-04 14:01:36'),
(16, 'SIM', 'HAPY', 'HAPPY BEE\r\n', 172, 0, 0, 'M', 'A', 1, 663, '2019-07-04 14:01:36'),
(17, 'FAR', 'TMI', 'TR ARAMIS\r\n', 186, 0, 0, 'F', 'A', 1, 663, '2019-07-04 14:01:36'),
(18, 'OEL', 'OELIN', 'OEL INDIA\r\n\r\n\r\n', 150, 0, 0, 'F', 'A', 1, 663, '2019-07-04 14:01:36'),
(19, 'OLS', 'MCPL', 'MCP LONDON\r\n', 117, 0, 0, 'F', 'A', 1, 663, '2019-07-04 14:01:36'),
(20, 'COS', 'XNSH', 'XIN SHANGHAI\r\n', 337, 0, 0, 'M', 'A', 1, 663, '2019-07-04 14:01:36'),
(21, 'XCL', 'COR', 'CORHELIA1', 294, 0, 0, 'M', 'A', 1, 663, '2019-07-04 14:01:36'),
(22, 'EMC', 'CONQ', 'EVER CONQUEST', 334, 0, 0, 'M', 'A', 1, 663, '2019-07-04 14:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_vessel_arrival`
--

CREATE TABLE `wtyqf_slpa_vessel_arrival` (
  `vessel_arrival_id` int(11) NOT NULL,
  `vessel_id` int(11) NOT NULL,
  `agent_code` varchar(11) NOT NULL,
  `discharging` int(11) NOT NULL,
  `loading` int(11) NOT NULL,
  `estimated_date_arrival` date NOT NULL,
  `estimated_time_arrival` time NOT NULL,
  `vessel_destination` varchar(100) NOT NULL,
  `state` int(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wtyqf_slpa_vessel_arrival`
--

INSERT INTO `wtyqf_slpa_vessel_arrival` (`vessel_arrival_id`, `vessel_id`, `agent_code`, `discharging`, `loading`, `estimated_date_arrival`, `estimated_time_arrival`, `vessel_destination`, `state`, `user_id`, `created_date`) VALUES
(1, 8, 'LIL', 210, 585, '2019-04-29', '18:00:00', 'MALE', 1, 759, '2019-05-02 04:23:39'),
(2, 1, 'OEL', 0, 243, '2019-05-01', '12:00:00', 'CASUAL', 1, 786, '2019-05-02 04:31:35'),
(3, 3, 'MSC', 1650, 1530, '2019-05-01', '16:30:00', 'INGWE-E', 1, 695, '2019-05-02 04:34:30'),
(4, 4, 'MSC', 1690, 600, '2019-05-02', '05:00:00', 'AFR.EXP', 1, 695, '2019-05-02 04:37:04'),
(5, 12, 'MSC', 1, 0, '2019-05-02', '07:00:00', 'CASUAL', 1, 695, '2019-05-02 04:46:13'),
(6, 13, 'TWF', 0, 400, '2019-05-02', '12:00:00', 'CG', 1, 864, '2019-05-02 04:50:17'),
(7, 14, 'COC', 79, 85, '2019-05-02', '20:00:00', 'AEF-E', 1, 738, '2019-05-02 04:56:44'),
(8, 15, 'RCL', 400, 455, '2019-05-03', '01:00:00', 'TUT', 1, 769, '2019-05-02 04:59:33'),
(9, 2, 'XCL', 0, 650, '2019-05-02', '12:00:00', 'CG', 1, 865, '2019-05-02 05:31:35'),
(10, 16, 'SIM', 650, 800, '2019-05-03', '24:00:00', 'CCS-E', 1, 866, '2019-05-08 07:26:10'),
(11, 17, 'FAR', 622, 365, '2019-05-03', '14:00:00', 'CASUAL', 1, 747, '2019-05-07 20:26:11'),
(12, 18, 'OEL', 200, 265, '2019-05-03', '21:00:00', 'CCU', 1, 786, '2019-05-07 20:30:05'),
(13, 19, 'OLS', 206, 350, '2019-05-01', '00:00:00', 'MALE', 1, 762, '2019-05-07 20:33:35'),
(14, 20, 'COS', 1000, 2000, '2019-05-04', '10:00:00', 'IMED', 1, 680, '2019-05-08 08:38:41'),
(15, 21, 'XCL', 0, 2300, '2019-05-04', '06:30:00', 'PETRA', 1, 865, '2019-05-07 20:45:54'),
(16, 22, 'EMC', 0, 130, '2019-05-06', '23:59:00', 'CIX-2', 1, 729, '2019-07-07 05:10:51'),
(17, 12, 'MSC', 242, 123, '2019-07-01', '12:00:00', 'WER', 1, 695, '2019-09-03 04:23:08'),
(18, 7, 'MSC', 24, 343, '2019-07-07', '23:00:00', 'WR', 1, 695, '2019-07-07 05:10:32'),
(19, 3, 'MSC', 354, 34, '2019-07-02', '12:59:00', '35', 1, 695, '2019-07-07 05:12:20'),
(20, 12, 'MSC', 233, 122, '2019-01-01', '12:00:00', 'QWS', 1, 695, '2019-07-07 20:14:38'),
(21, 4, 'MSC', 388, 200, '2019-03-12', '03:00:00', 'ERR FD', 1, 695, '2019-07-07 20:16:36'),
(22, 11, 'MSC', 533, 344, '2019-02-17', '12:00:00', 'RRR', 1, 695, '2019-07-07 20:17:41'),
(23, 7, 'MSC', 222, 332, '2019-03-20', '12:00:00', 'EE GGG', 1, 695, '2019-07-07 20:18:39'),
(24, 3, 'MSC', 566, 755, '2019-04-08', '05:00:00', 'REE', 1, 695, '2019-07-07 20:19:34'),
(25, 8, 'LIL', 200, 122, '2019-01-07', '02:00:00', 'WW', 1, 759, '2019-07-07 20:32:40'),
(26, 5, 'LIL', 123, 433, '2019-01-29', '04:00:00', 'EE', 1, 759, '2019-07-07 20:33:27'),
(27, 8, 'LIL', 433, 444, '2019-03-19', '04:00:00', 'RRR', 1, 759, '2019-07-07 20:34:16'),
(28, 12, 'MSC', 400, 200, '2019-07-08', '03:00:00', 'qqq', 1, 695, '2019-07-08 05:12:44'),
(29, 4, 'MSC', 200, 300, '2019-07-08', '09:00:00', 'qqq', 1, 695, '2019-07-08 05:21:49'),
(30, 12, 'MSC', 100, 100, '2019-07-09', '09:00:00', 'q', 1, 695, '2019-07-08 05:28:35'),
(31, 4, 'MSC', 300, 200, '2019-07-09', '09:00:00', '1', 1, 695, '2019-07-08 05:30:44'),
(32, 7, 'MSC', 100, 200, '2019-07-09', '09:00:00', '2', 1, 695, '2019-07-08 05:32:37'),
(33, 3, 'MSC', 100, 300, '2019-07-09', '09:00:00', '3', 1, 695, '2019-07-08 05:33:13'),
(34, 11, 'MSC', 100, 75, '2019-07-09', '09:00:00', '5', 1, 695, '2019-07-08 05:35:31'),
(35, 12, 'MSC', 389, 200, '2019-08-25', '11:59:00', 'we', 1, 695, '2019-08-24 21:49:33'),
(36, 7, 'MSC', 34, 45, '2019-08-25', '22:46:00', 're', 1, 695, '2019-08-24 21:58:01'),
(37, 7, 'MSC', 65, 67, '2019-08-25', '23:59:00', '56yr', 1, 695, '2019-08-24 22:00:23'),
(38, 5, 'LIL', 210, 120, '2019-01-01', '09:00:00', 'Wer', 1, 759, '2019-08-27 06:17:53'),
(39, 8, 'LIL', 123, 322, '2019-01-02', '12:00:00', 'Qer', 1, 759, '2019-08-27 06:20:03'),
(40, 12, 'MSC', 344, 455, '2019-01-02', '09:00:00', 'Qwe', 1, 695, '2019-08-27 06:21:33'),
(41, 14, 'COC', 23, 546, '2019-01-02', '09:00:00', 'Ger', 1, 738, '2019-08-27 06:29:08'),
(42, 11, 'MSC', 234, 345, '2019-01-01', '09:00:00', 'Rert', 1, 695, '2019-08-27 06:30:34'),
(43, 16, 'SIM', 234, 546, '2019-01-01', '09:00:00', 'wrr', 1, 866, '2019-08-27 06:32:00'),
(44, 3, 'MSC', 34, 678, '2019-01-01', '09:00:00', 'Ye5', 1, 695, '2019-08-27 06:34:31'),
(45, 4, 'MSC', 34, 456, '2019-01-02', '09:00:00', 'Trw', 1, 695, '2019-08-27 06:44:27'),
(46, 3, 'MSC', 34, 456, '2019-01-02', '12:30:00', 'Trw we', 1, 695, '2019-08-27 06:44:44'),
(47, 11, 'MSC', 34, 456, '2019-01-02', '14:30:00', 'Trwret we', 1, 695, '2019-08-27 06:45:00'),
(48, 12, 'MSC', 234, 345, '2019-06-04', '09:00:00', 'Wee', 1, 695, '2019-08-27 07:03:45'),
(49, 7, 'MSC', 234, 345, '2019-06-06', '13:00:00', 'Wee re', 1, 695, '2019-08-27 07:04:03'),
(50, 11, 'MSC', 234, 345, '2019-06-06', '14:00:00', 'Wee re er', 1, 695, '2019-08-27 07:04:18'),
(51, 11, 'MSC', 234, 345, '2019-08-01', '14:00:00', 'qwe', 1, 695, '2019-08-27 07:04:45'),
(52, 12, 'MSC', 234, 345, '2019-08-01', '12:30:00', 'qwe re', 1, 695, '2019-08-27 07:04:56'),
(53, 11, 'MSC', 234, 122, '2019-08-01', '12:30:00', 'Rewr', 1, 695, '2019-08-27 07:05:11'),
(54, 12, 'MSC', 234, 122, '2019-09-01', '01:30:00', 'Rewr re', 1, 695, '2019-08-27 07:05:45'),
(55, 4, 'MSC', 234, 122, '2019-09-01', '05:00:00', 'hytt', 1, 695, '2019-08-27 07:06:00'),
(56, 3, 'MSC', 234, 122, '2019-09-01', '05:00:00', 'hytt yut', 1, 695, '2019-08-27 07:06:08'),
(57, 11, 'MSC', 234, 122, '2019-09-03', '05:00:00', 'htry', 1, 695, '2019-08-27 07:06:20'),
(58, 5, 'LIL', 234, 345, '2019-09-01', '09:00:00', 'ert', 1, 759, '2019-08-26 20:28:14'),
(59, 8, 'LIL', 234, 345, '2019-09-01', '09:00:00', 'ert', 1, 759, '2019-08-26 20:28:23'),
(60, 14, 'COC', 23, 345, '2019-09-01', '09:00:00', 'twe', 1, 738, '2019-08-26 21:00:57'),
(61, 12, 'MSC', 234, 1233, '2019-09-04', '09:00:00', 'erw', 1, 695, '2019-08-26 21:37:05'),
(62, 4, 'MSC', 45, 34, '2019-08-31', '09:00:00', 'er', 1, 695, '2019-08-31 07:10:46'),
(63, 12, 'MSC', 40, 300, '2019-09-02', '09:00:00', 'rt', 1, 695, '2019-08-31 01:34:38'),
(64, 12, 'MSC', 4, 3, '2019-08-27', '09:00:00', '4', 1, 695, '2019-08-31 01:41:09'),
(65, 12, 'MSC', 123, 345, '2019-08-15', '09:00:00', 'rew', 1, 695, '2019-08-31 04:21:55'),
(66, 7, 'MSC', 45, 56, '2019-07-24', '09:00:00', 'tr', 1, 695, '2019-08-31 04:22:56'),
(67, 4, 'MSC', 45, 67, '2019-07-18', '12:30:00', 'tr', 1, 695, '2019-08-31 04:23:23'),
(68, 4, 'MSC', 433, 565, '2019-05-01', '09:00:00', 'rte', 1, 695, '2019-09-01 05:32:40'),
(69, 5, 'LIL', 243, 456, '2019-09-02', '12:15:00', 'rew', 1, 759, '2019-09-03 05:55:58'),
(70, 8, 'LIL', 234, 864, '2019-09-02', '00:00:00', 'ert', 1, 759, '2019-09-03 05:56:24'),
(71, 14, 'COC', 345, 456, '2019-09-02', '09:00:00', 'ryr', 1, 738, '2019-09-03 06:00:44'),
(72, 16, 'SIM', 678, 456, '2019-09-02', '03:45:00', 'yiyu', 1, 866, '2019-09-03 06:02:22'),
(73, 9, 'SIM', 786, 0, '2019-09-04', '09:00:00', 'wer', 1, 866, '2019-09-03 06:03:21'),
(74, 5, 'LIL', 345, 435, '2019-09-20', '09:00:00', 'ert', 1, 759, '2019-09-02 20:25:39'),
(75, 9, 'SIM', 2, 898, '2019-01-01', '09:00:00', 'erw', 1, 866, '2019-09-03 03:32:16'),
(76, 14, 'COC', 234, 453, '2019-01-01', '09:00:00', 'rw', 1, 738, '2019-09-03 03:33:21'),
(77, 4, 'MSC', 546, 353, '2019-01-01', '09:00:00', 'rttyr', 1, 695, '2019-09-03 03:35:25'),
(78, 7, 'MSC', 464, 675, '2019-01-01', '12:15:00', 'ert', 1, 695, '2019-09-03 03:35:51'),
(79, 5, 'LIL', 242, 533, '2019-09-07', '09:00:00', 'erte', 1, 759, '2019-09-03 04:26:20'),
(80, 8, 'LIL', 234, 456, '2019-09-07', '09:00:00', 'tete', 1, 759, '2019-09-03 04:29:35'),
(81, 4, 'MSC', 345, 345, '2019-09-02', '09:00:00', 'ere', 1, 695, '2019-09-06 03:02:34'),
(82, 7, 'MSC', 23, 565, '2019-09-02', '06:30:00', 'retr', 1, 695, '2019-09-06 03:02:51'),
(83, 3, 'MSC', 453, 234, '2019-09-02', '07:00:00', 'fgd', 1, 695, '2019-09-06 03:03:12'),
(84, 3, 'MSC', 657, 456, '2019-09-03', '09:00:00', 'ert', 1, 695, '2019-09-06 03:05:08'),
(85, 12, 'MSC', 456, 565, '2019-09-03', '06:45:00', 'rty', 1, 695, '2019-09-06 03:05:53'),
(86, 7, 'MSC', 46, 576, '2019-09-03', '09:00:00', 'ete', 1, 695, '2019-09-06 03:07:42'),
(87, 4, 'MSC', 3453, 676, '2019-09-04', '00:45:00', 'et', 1, 695, '2019-09-06 03:08:03'),
(88, 7, 'MSC', 34, 657, '2019-09-04', '01:00:00', '45ete', 1, 695, '2019-09-06 03:08:24'),
(89, 3, 'MSC', 23, 657, '2019-09-04', '00:45:00', 'te', 1, 695, '2019-09-06 03:08:40'),
(90, 4, 'MSC', 234, 45, '2019-09-05', '00:15:00', '56tyr', 1, 695, '2019-09-06 03:09:00'),
(91, 3, 'MSC', 34, 634, '2019-09-05', '01:15:00', 'rty', 1, 695, '2019-09-06 03:09:21'),
(92, 4, 'MSC', 343, 453, '2019-09-06', '09:00:00', 'rete', 1, 695, '2019-09-06 03:11:39'),
(93, 7, 'MSC', 34, 32, '2019-09-06', '00:45:00', 'ere', 1, 695, '2019-09-06 03:11:55'),
(94, 11, 'MSC', 34, 6454, '2019-09-06', '00:45:00', 'eww', 1, 695, '2019-09-06 03:12:10'),
(95, 7, 'MSC', 343, 122, '2019-09-07', '09:00:00', 'klk', 1, 695, '2019-09-06 03:14:32'),
(96, 12, 'MSC', 454, 787, '2019-09-07', '00:45:00', 'mn', 1, 695, '2019-09-06 03:14:57'),
(97, 4, 'MSC', 787, 89, '2019-09-07', '01:30:00', '7hjh', 1, 695, '2019-09-06 03:15:41'),
(98, 4, 'MSC', 343, 123, '2019-09-08', '06:45:00', 'ere', 1, 695, '2019-09-06 03:16:08'),
(99, 7, 'MSC', 23, 898, '2019-09-08', '01:45:00', '4nb', 1, 695, '2019-09-06 03:20:19'),
(100, 5, 'LIL', 343, 345, '2019-09-08', '09:00:00', 'ert', 1, 759, '2019-09-06 03:22:15'),
(101, 8, 'LIL', 232, 343, '2019-09-08', '00:45:00', 'eww', 1, 759, '2019-09-06 03:22:31'),
(102, 16, 'SIM', 34, 454, '2019-09-08', '09:00:00', 'ere', 1, 866, '2019-09-06 03:23:20'),
(103, 9, 'SIM', 343, 342, '2019-09-07', '00:30:00', 'ere', 1, 866, '2019-09-06 03:23:38'),
(104, 16, 'SIM', 232, 323, '2019-09-07', '06:45:00', '4klk', 1, 866, '2019-09-06 03:24:09'),
(105, 11, 'MSC', 234, 453, '2019-09-07', '00:30:00', 'wrwr', 1, 695, '2019-09-06 06:03:24'),
(106, 12, 'MSC', 234, 123, '2019-09-09', '09:00:00', 'test1', 1, 695, '2019-09-07 02:42:25'),
(107, 5, 'LIL', 230, 340, '2019-09-09', '10:00:00', 'test2', 1, 759, '2019-09-07 02:44:29'),
(108, 14, 'COC', 400, 565, '2019-09-09', '11:00:00', 'test3', 1, 738, '2019-09-07 02:45:35'),
(109, 11, 'MSC', 342, 345, '2019-09-09', '09:00:00', 're', 1, 695, '2019-09-08 05:25:31'),
(110, 8, 'LIL', 345, 756, '2019-09-09', '09:00:00', 'dfgd', 1, 759, '2019-09-08 05:26:48');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_vessel_arrival_approve`
--

CREATE TABLE `wtyqf_slpa_vessel_arrival_approve` (
  `vessel_arrival_approve_id` int(11) NOT NULL,
  `vessel_arrival_id` int(11) NOT NULL,
  `vessel_id` int(11) NOT NULL,
  `agent_code` varchar(11) NOT NULL,
  `discharging` int(11) NOT NULL,
  `loading` int(11) NOT NULL,
  `estimated_date_arrival` date NOT NULL,
  `estimated_time_arrival` time NOT NULL,
  `vessel_destination` varchar(100) NOT NULL,
  `reference` varchar(50) NOT NULL,
  `is_allocated` int(1) NOT NULL,
  `state` int(1) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wtyqf_slpa_vessel_arrival_approve`
--

INSERT INTO `wtyqf_slpa_vessel_arrival_approve` (`vessel_arrival_approve_id`, `vessel_arrival_id`, `vessel_id`, `agent_code`, `discharging`, `loading`, `estimated_date_arrival`, `estimated_time_arrival`, `vessel_destination`, `reference`, `is_allocated`, `state`, `status`, `created_date`, `user_id`) VALUES
(1, 1, 8, 'LIL', 210, 585, '2019-04-29', '18:00:00', 'MALE', 'q', 1, 0, 'A', '2019-09-07 13:49:47', 759),
(2, 2, 1, 'OEL', 0, 243, '2019-05-01', '00:00:00', 'CASUAL', 'w', 1, 0, 'A', '2019-09-07 13:49:58', 786),
(3, 3, 3, 'MSC', 1650, 1530, '2019-05-01', '16:30:00', 'INGWE-E', 'e', 1, 0, 'A', '2019-09-07 13:49:58', 695),
(4, 4, 4, 'MSC', 1690, 600, '2019-05-02', '05:00:00', 'AFR.EXP', 'r', 1, 0, 'A', '2019-09-07 13:50:03', 695),
(5, 6, 13, 'TWF', 0, 400, '2019-05-02', '00:00:00', 'CG', 't', 1, 0, 'A', '2019-09-07 13:50:03', 864),
(6, 7, 14, 'COC', 79, 85, '2019-05-02', '20:00:00', 'AEF-E', 'y', 1, 0, 'A', '2019-09-07 13:50:03', 738),
(7, 8, 15, ' RCL', 400, 455, '2019-05-03', '01:00:00', 'TUT', 'u', 1, 0, 'A', '2019-09-07 13:50:08', 769),
(8, 5, 12, 'MSC', 1, 0, '2019-05-02', '07:00:00', 'CASUAL', 'a', 1, 0, 'A', '2019-09-07 13:50:03', 695),
(9, 9, 2, 'XCL', 0, 650, '2019-05-02', '00:00:00', 'CG', 's', 1, 0, 'A', '2019-09-07 13:50:03', 865),
(10, 11, 17, 'FAR', 622, 365, '2019-05-03', '14:00:00', 'CASUAL', 'd', 1, 0, 'A', '2019-09-07 13:50:08', 747),
(11, 10, 16, 'SIM', 650, 800, '2019-05-03', '24:00:00', 'CCS-E', 'f', 1, 0, 'A', '2019-09-07 13:50:09', 866),
(12, 12, 18, 'OEL', 200, 265, '2019-05-03', '21:00:00', 'CCU', 'g', 1, 0, 'A', '2019-09-07 13:50:09', 786),
(13, 13, 19, 'OLS', 206, 350, '2019-05-01', '00:00:00', 'MALE', 'h', 1, 0, 'A', '2019-09-07 13:49:58', 762),
(14, 14, 20, 'COS', 1000, 2000, '2019-05-04', '10:00:00', 'IMED', 'j', 1, 0, 'A', '2019-09-07 13:50:15', 680),
(15, 15, 21, 'XCL', 0, 2300, '2019-05-04', '06:30:00', 'PETRA', 'k', 1, 0, 'A', '2019-09-07 13:50:15', 865),
(16, 16, 22, 'EMC', 0, 130, '2019-05-06', '24:59:00', 'CIX-2', 'l', 1, 0, 'A', '2019-09-07 13:50:21', 729),
(17, 17, 12, 'MSC', 242, 123, '2019-07-01', '12:00:00', 'WER', 'www', 1, 0, 'A', '2019-09-07 13:50:37', 695),
(18, 18, 7, 'MSC', 24, 343, '2019-07-07', '23:00:00', 'WR', 'nnnn', 1, 0, 'A', '2019-09-07 13:50:48', 695),
(19, 20, 12, 'MSC', 233, 122, '2019-01-01', '12:00:00', 'QWS', 'rwerw', 1, 0, 'A', '2019-09-07 13:45:50', 695),
(20, 19, 3, 'MSC', 354, 34, '2019-07-02', '12:59:00', '35', 'hhhh', 1, 0, 'A', '2019-09-07 13:50:43', 695),
(21, 22, 11, 'MSC', 533, 344, '2019-02-17', '12:00:00', 'RRR', 'wqwqwq', 1, 0, 'A', '2019-09-07 13:49:02', 695),
(22, 21, 4, 'MSC', 388, 200, '2019-03-12', '03:00:00', 'ERR FD', 'ssdfsdf', 1, 0, 'A', '2019-09-07 13:49:08', 695),
(23, 23, 7, 'MSC', 222, 332, '2019-03-20', '12:00:00', 'EE GGG', 'bbb', 1, 0, 'A', '2019-09-07 13:49:27', 695),
(24, 24, 3, 'MSC', 566, 755, '2019-04-08', '05:00:00', 'REE', 'vcxvx', 1, 0, 'A', '2019-09-07 13:49:33', 695),
(25, 25, 8, 'LIL', 200, 122, '2019-01-07', '02:00:00', 'WW', 'erwer', 1, 0, 'A', '2019-09-07 13:48:51', 759),
(26, 26, 5, 'LIL', 123, 433, '2019-01-29', '04:00:00', 'EE', 'dfsfsewr', 1, 0, 'A', '2019-09-07 13:48:56', 759),
(27, 27, 8, 'LIL', 433, 444, '2019-03-19', '04:00:00', 'RRR', 'wwwwwww', 1, 0, 'A', '2019-09-07 13:49:14', 759),
(28, 28, 12, 'MSC', 400, 200, '2019-07-08', '03:00:00', 'qqq', 'fffghgh', 1, 0, 'A', '2019-09-07 13:50:54', 695),
(29, 29, 4, 'MSC', 200, 300, '2019-07-08', '09:00:00', 'qqq', 'frfre', 1, 0, 'A', '2019-09-07 13:50:54', 695),
(30, 30, 12, 'MSC', 100, 100, '2019-07-09', '09:00:00', 'q', 'dsded', 1, 0, 'A', '2019-09-07 13:51:00', 695),
(31, 31, 4, 'MSC', 300, 200, '2019-07-09', '09:00:00', '1', 'qwer', 1, 0, 'A', '2019-09-07 13:51:00', 695),
(32, 32, 7, 'MSC', 100, 200, '2019-07-09', '09:00:00', '2', 'weq', 1, 0, 'A', '2019-09-07 13:51:00', 695),
(33, 33, 3, 'MSC', 100, 300, '2019-07-09', '09:00:00', '3', 'ffff', 1, 0, 'A', '2019-09-07 13:51:00', 695),
(34, 34, 11, 'MSC', 100, 75, '2019-07-09', '09:00:00', '5', 'wqw', 1, 0, 'A', '2019-09-07 13:51:00', 695),
(35, 38, 5, 'LIL', 210, 120, '2019-01-01', '09:00:00', 'Wer', '9qwe', 1, 0, 'A', '2019-09-07 13:45:50', 759),
(36, 39, 8, 'LIL', 123, 322, '2019-01-02', '12:00:00', 'Qer', '5qwe', 1, 0, 'A', '2019-09-07 13:48:41', 759),
(37, 37, 7, 'MSC', 65, 67, '2019-08-25', '23:59:00', '56yr', '2qwe', 1, 0, 'A', '2019-09-07 13:51:24', 695),
(38, 40, 12, 'MSC', 344, 455, '2019-01-02', '09:00:00', 'Qwe', '4qwe', 1, 0, 'A', '2019-09-07 13:48:41', 695),
(39, 36, 7, 'MSC', 34, 45, '2019-08-25', '22:46:00', 're', '1we', 1, 0, 'A', '2019-09-07 13:51:24', 695),
(40, 35, 12, 'MSC', 389, 200, '2019-08-25', '11:59:00', 'we', '1qwe', 1, 0, 'A', '2019-09-07 13:51:24', 695),
(41, 41, 14, 'COC', 23, 546, '2019-01-02', '09:00:00', 'Ger', '3qwe', 1, 0, 'A', '2019-09-07 13:48:41', 738),
(42, 42, 11, 'MSC', 234, 345, '2019-01-01', '09:00:00', 'Rert', '8qwe', 1, 0, 'A', '2019-09-07 13:45:50', 695),
(43, 43, 16, 'SIM', 234, 546, '2019-01-01', '09:00:00', 'wrr', '7qwe', 1, 0, 'A', '2019-09-07 13:45:50', 866),
(44, 44, 3, 'MSC', 34, 678, '2019-01-01', '09:00:00', 'Ye5', '6qwe', 1, 0, 'A', '2019-09-07 13:45:50', 695),
(45, 47, 11, 'MSC', 34, 456, '2019-01-02', '14:30:00', 'Trwret we', '2wer', 1, 0, 'A', '2019-09-07 13:48:42', 695),
(46, 46, 3, 'MSC', 34, 456, '2019-01-02', '12:30:00', 'Trw we', '3wer', 1, 0, 'A', '2019-09-07 13:48:42', 695),
(47, 45, 4, 'MSC', 34, 456, '2019-01-02', '09:00:00', 'Trw', '4wer', 1, 0, 'A', '2019-09-07 13:48:42', 695),
(48, 57, 11, 'MSC', 234, 122, '2019-09-03', '05:00:00', 'htry', '5r5y', 1, 0, 'A', '2019-09-07 13:51:58', 695),
(49, 56, 3, 'MSC', 234, 122, '2019-09-01', '05:00:00', 'hytt yut', '7ert', 1, 0, 'A', '2019-09-07 13:51:43', 695),
(50, 55, 4, 'MSC', 234, 122, '2019-09-01', '05:00:00', 'hytt', '8ert', 1, 0, 'A', '2019-09-07 13:51:44', 695),
(51, 54, 12, 'MSC', 234, 122, '2019-09-01', '01:30:00', 'Rewr re', '9ert', 1, 0, 'A', '2019-09-07 13:51:44', 695),
(52, 53, 11, 'MSC', 234, 122, '2019-08-01', '12:30:00', 'Rewr', '5ert', 1, 0, 'A', '2019-09-07 13:51:14', 695),
(53, 52, 12, 'MSC', 234, 345, '2019-08-01', '12:30:00', 'qwe re', '4ert', 1, 0, 'A', '2019-09-07 13:51:14', 695),
(54, 51, 11, 'MSC', 234, 345, '2019-08-01', '14:00:00', 'qwe', '6ert', 1, 0, 'A', '2019-09-07 13:51:14', 695),
(55, 50, 11, 'MSC', 234, 345, '2019-06-06', '14:00:00', 'Wee re er', '3ert', 1, 0, 'A', '2019-09-07 13:50:32', 695),
(56, 49, 7, 'MSC', 234, 345, '2019-06-06', '13:00:00', 'Wee re', '2ert', 1, 0, 'A', '2019-09-07 13:50:32', 695),
(57, 48, 12, 'MSC', 234, 345, '2019-06-04', '09:00:00', 'Wee', '1ert', 1, 0, 'A', '2019-09-07 13:50:27', 695),
(58, 59, 8, 'LIL', 234, 345, '2019-09-01', '09:00:00', 'ert', '1rty', 1, 0, 'A', '2019-09-07 13:51:44', 759),
(59, 58, 5, 'LIL', 234, 345, '2019-09-01', '09:00:00', 'ert', '2rty', 1, 0, 'A', '2019-09-07 13:51:44', 759),
(60, 60, 14, 'COC', 23, 345, '2019-09-01', '09:00:00', 'twe', '4rty', 1, 0, 'A', '2019-09-07 13:51:44', 738),
(61, 61, 12, 'MSC', 234, 1233, '2019-09-04', '09:00:00', 'erw', '5rty', 1, 0, 'A', '2019-09-07 13:52:12', 663),
(62, 62, 4, 'MSC', 45, 34, '2019-08-31', '09:00:00', 'er', 'fghfrty', 1, 0, 'A', '2019-09-07 13:51:35', 899),
(63, 63, 12, 'MSC', 40, 300, '2019-09-02', '09:00:00', 'rt', 'ghj', 1, 0, 'A', '2019-09-07 13:51:49', 899),
(64, 64, 12, 'MSC', 4, 3, '2019-08-27', '09:00:00', '4', 'fghgh', 1, 0, 'A', '2019-09-07 13:51:30', 899),
(65, 65, 12, 'MSC', 123, 345, '2019-08-15', '09:00:00', 'rew', 'erter', 1, 0, 'A', '2019-09-07 13:51:19', 899),
(66, 66, 7, 'MSC', 45, 56, '2019-07-24', '09:00:00', 'tr', 'fgh', 1, 0, 'A', '2019-09-07 13:51:09', 899),
(67, 67, 4, 'MSC', 45, 67, '2019-07-18', '12:30:00', 'tr', 'rty', 1, 0, 'A', '2019-09-07 13:51:05', 899),
(68, 68, 4, 'MSC', 433, 565, '2019-05-01', '09:00:00', 'rte', 'werwert', 1, 0, 'A', '2019-09-07 13:49:58', 899),
(69, 69, 5, 'LIL', 243, 456, '2019-09-02', '12:15:00', 'rewtryr', 'sfs', 1, 0, 'A', '2019-09-07 13:51:49', 899),
(70, 70, 8, 'LIL', 234, 864, '2019-09-02', '00:00:00', 'ert', 'dfgd', 1, 0, 'A', '2019-09-07 13:51:49', 899),
(71, 71, 14, 'COC', 345, 456, '2019-09-02', '09:00:00', 'ryr', 'werw', 1, 0, 'A', '2019-09-07 13:51:49', 899),
(72, 72, 16, 'SIM', 678, 456, '2019-09-02', '03:45:00', 'yiyu', 'fghf', 1, 0, 'A', '2019-09-07 13:51:49', 899),
(73, 73, 9, 'SIM', 786, 0, '2019-09-04', '09:00:00', 'wer', 'hgjg', 1, 0, 'A', '2019-09-07 13:52:12', 899),
(74, 74, 5, 'LIL', 345, 435, '2019-09-20', '09:00:00', 'ert', 'dgfdgf', 0, 1, 'A', '2019-09-03 10:38:02', 663),
(75, 75, 9, 'SIM', 2, 898, '2019-01-01', '09:00:00', 'erw', 'rtyrty', 1, 0, 'A', '2019-09-07 13:45:50', 663),
(76, 76, 14, 'COC', 234, 453, '2019-01-01', '09:00:00', 'rw', 'ghjhjgh', 1, 0, 'A', '2019-09-07 13:45:50', 663),
(77, 77, 4, 'MSC', 546, 353, '2019-01-01', '09:00:00', 'rttyr', 'lklk', 1, 0, 'A', '2019-09-07 13:45:50', 663),
(78, 78, 7, 'MSC', 464, 675, '2019-01-01', '12:15:00', 'ert', 'rtrt', 1, 0, 'A', '2019-09-07 13:45:50', 663),
(79, 79, 5, 'LIL', 242, 232, '2019-09-07', '09:00:00', 'erte', 'dfgddf', 1, 0, 'A', '2019-09-07 13:52:26', 663),
(80, 80, 8, 'LIL', 234, 456, '2019-09-07', '09:00:00', 'tete', 'tryrt', 1, 0, 'A', '2019-09-07 13:52:26', 663),
(81, 81, 4, 'MSC', 345, 345, '2019-09-02', '09:00:00', 'ere', 'tete', 1, 0, 'A', '2019-09-07 13:51:49', 663),
(82, 82, 7, 'MSC', 23, 565, '2019-09-02', '06:30:00', 'retr', 'rtry', 1, 0, 'A', '2019-09-07 13:51:49', 663),
(83, 83, 3, 'MSC', 453, 234, '2019-09-02', '07:00:00', 'fgd', 'ete', 1, 0, 'A', '2019-09-07 13:51:49', 663),
(84, 84, 3, 'MSC', 657, 456, '2019-09-03', '09:00:00', 'ert', 'ertwe', 1, 0, 'A', '2019-09-07 13:51:58', 663),
(85, 86, 7, 'MSC', 46, 576, '2019-09-03', '09:00:00', 'ete', 'wrw', 1, 0, 'A', '2019-09-07 13:51:58', 663),
(86, 85, 12, 'MSC', 456, 565, '2019-09-03', '06:45:00', 'rty', 'wrwr', 1, 0, 'A', '2019-09-07 13:51:58', 663),
(87, 88, 7, 'MSC', 34, 657, '2019-09-04', '01:00:00', '45ete', 'fdhfg', 1, 0, 'A', '2019-09-07 13:52:12', 663),
(88, 91, 3, 'MSC', 34, 634, '2019-09-05', '01:15:00', 'rty', 'xxxx', 1, 0, 'A', '2019-09-07 13:52:17', 663),
(89, 87, 4, 'MSC', 3453, 676, '2019-09-04', '00:45:00', 'et', 'sdfs', 1, 0, 'A', '2019-09-07 13:52:12', 663),
(90, 90, 4, 'MSC', 234, 45, '2019-09-05', '00:15:00', '56tyr', 'xvxvx', 1, 0, 'A', '2019-09-07 13:52:17', 663),
(91, 89, 3, 'MSC', 23, 657, '2019-09-04', '00:45:00', 'te', 'erwr', 1, 0, 'A', '2019-09-07 13:52:12', 663),
(92, 93, 7, 'MSC', 34, 32, '2019-09-06', '00:45:00', 'ere', 'ere', 1, 0, 'A', '2019-09-07 13:52:22', 663),
(93, 92, 4, 'MSC', 343, 453, '2019-09-06', '09:00:00', 'rete', 'fer', 1, 0, 'A', '2019-09-07 13:52:22', 663),
(94, 94, 11, 'MSC', 34, 6454, '2019-09-06', '00:45:00', 'eww', 'sdfswr', 1, 0, 'A', '2019-09-07 13:52:22', 663),
(95, 97, 4, 'MSC', 787, 89, '2019-09-07', '01:30:00', '7hjh', 'rtyre', 1, 0, 'A', '2019-09-07 13:52:26', 663),
(96, 96, 12, 'MSC', 454, 787, '2019-09-07', '00:45:00', 'mn', 'ghfgh', 1, 0, 'A', '2019-09-07 13:52:26', 663),
(97, 95, 7, 'MSC', 343, 122, '2019-09-07', '09:00:00', 'klk', 'gfgd', 1, 0, 'A', '2019-09-07 13:52:26', 663),
(98, 99, 7, 'MSC', 23, 898, '2019-09-08', '01:45:00', '4nb', 'erte', 1, 0, 'A', '2019-09-07 13:52:34', 663),
(99, 98, 4, 'MSC', 343, 123, '2019-09-08', '06:45:00', 'ere', 'dgdg', 1, 0, 'A', '2019-09-07 13:52:34', 663),
(100, 100, 5, 'LIL', 343, 345, '2019-09-08', '09:00:00', 'ert', 'bcbc', 1, 0, 'A', '2019-09-07 13:52:34', 663),
(101, 101, 8, 'LIL', 232, 343, '2019-09-08', '00:45:00', 'eww', 'czcz', 1, 0, 'A', '2019-09-07 13:52:34', 663),
(102, 102, 16, 'SIM', 34, 454, '2019-09-08', '09:00:00', 'ere', 'cbxcv', 1, 0, 'A', '2019-09-07 13:52:34', 663),
(103, 103, 9, 'SIM', 343, 342, '2019-09-07', '00:30:00', 'ere', 'fgdfg', 1, 0, 'A', '2019-09-07 13:52:26', 663),
(104, 104, 16, 'SIM', 232, 323, '2019-09-07', '06:45:00', '4klk', 'rtyry', 1, 0, 'A', '2019-09-07 13:52:26', 663),
(105, 106, 12, 'MSC', 234, 123, '2019-09-09', '09:00:00', 'test1', 'qwe1', 1, 0, 'A', '2019-09-08 05:15:52', 899),
(106, 107, 5, 'LIL', 230, 340, '2019-09-09', '10:00:00', 'test2', 'qwe2', 1, 0, 'A', '2019-09-08 05:15:52', 899),
(107, 108, 14, 'COC', 400, 565, '2019-09-09', '11:00:00', 'test3', 'qwe3', 1, 0, 'A', '2019-09-08 05:15:52', 899),
(108, 105, 11, 'MSC', 234, 453, '2019-09-07', '00:30:00', 'wrwr', 'jkj', 1, 0, 'A', '2019-09-07 17:39:36', 663),
(109, 109, 11, 'MSC', 342, 345, '2019-09-09', '09:00:00', 're', 'rer', 1, 0, 'A', '2019-09-08 05:27:21', 900),
(110, 110, 8, 'LIL', 345, 756, '2019-09-09', '09:00:00', 'dfgd', '', 1, 0, 'P', '2019-09-08 05:27:21', 759);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_vessel_arrival_confirmation`
--

CREATE TABLE `wtyqf_slpa_vessel_arrival_confirmation` (
  `vessel_arrival_confirmation_id` int(11) NOT NULL,
  `vessel_arrival_id` int(11) NOT NULL,
  `vessel_id` int(11) NOT NULL,
  `agent_code` varchar(11) NOT NULL,
  `confirmation_type` int(11) NOT NULL,
  `discharging` int(11) NOT NULL,
  `loading` int(11) NOT NULL,
  `estimated_date_arrival` date NOT NULL,
  `estimated_time_arrival` time NOT NULL,
  `vessel_destination` varchar(200) NOT NULL,
  `is_allocated` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `wtyqf_slpa_vessel_arrival_confirmation`
--

INSERT INTO `wtyqf_slpa_vessel_arrival_confirmation` (`vessel_arrival_confirmation_id`, `vessel_arrival_id`, `vessel_id`, `agent_code`, `confirmation_type`, `discharging`, `loading`, `estimated_date_arrival`, `estimated_time_arrival`, `vessel_destination`, `is_allocated`, `state`, `created_date`, `user_id`) VALUES
(1, 1, 8, 'LIL', 72, 210, 585, '2019-04-29', '18:00:00', 'MALE', 0, 1, '2019-05-02 04:27:48', 759),
(2, 1, 8, 'LIL', 48, 210, 585, '2019-04-29', '18:00:00', 'MALE', 0, 1, '2019-05-02 04:27:52', 759),
(3, 1, 8, 'LIL', 24, 210, 585, '2019-04-29', '18:00:00', 'MALE', 0, 1, '2019-05-02 00:58:03', 759),
(4, 2, 1, 'OEL', 72, 0, 243, '2019-05-01', '12:00:00', 'CASUAL', 0, 1, '2019-05-02 01:01:46', 786),
(5, 2, 1, 'OEL', 48, 0, 243, '2019-05-01', '12:00:00', 'CASUAL', 0, 1, '2019-05-02 01:01:56', 786),
(6, 2, 1, 'OEL', 24, 0, 243, '2019-05-01', '12:00:00', 'CASUAL', 0, 1, '2019-05-02 01:02:05', 786),
(7, 3, 3, 'MSC', 72, 1650, 1530, '2019-05-01', '16:30:00', 'INGWE-E', 0, 1, '2019-05-02 01:04:40', 695),
(8, 3, 3, 'MSC', 48, 1650, 1530, '2019-05-01', '16:30:00', 'INGWE-E', 0, 1, '2019-05-02 01:04:50', 695),
(9, 3, 3, 'MSC', 24, 1650, 1530, '2019-05-01', '16:30:00', 'INGWE-E', 0, 1, '2019-05-02 01:05:00', 695),
(10, 4, 4, 'MSC', 72, 1690, 600, '2019-05-02', '05:00:00', 'AFR.EXP', 0, 1, '2019-05-02 01:07:23', 695),
(11, 4, 4, 'MSC', 48, 1690, 600, '2019-05-02', '05:00:00', 'AFR.EXP', 0, 1, '2019-05-02 01:07:44', 695),
(12, 4, 4, 'MSC', 24, 1690, 600, '2019-05-02', '05:00:00', 'AFR.EXP', 0, 1, '2019-05-02 01:07:54', 695),
(13, 6, 13, 'TWF', 72, 0, 400, '2019-05-02', '12:00:00', 'CG', 0, 1, '2019-05-02 01:20:27', 864),
(14, 6, 13, 'TWF', 48, 0, 400, '2019-05-02', '12:00:00', 'CG', 0, 1, '2019-05-02 01:20:35', 864),
(15, 6, 13, 'TWF', 24, 0, 400, '2019-05-02', '12:00:00', 'CG', 0, 1, '2019-05-02 01:20:44', 864),
(16, 7, 14, 'COC', 72, 79, 85, '2019-05-02', '20:00:00', 'AEF-E', 0, 1, '2019-05-02 01:27:33', 738),
(17, 7, 14, 'COC', 48, 79, 85, '2019-05-02', '20:00:00', 'AEF-E', 0, 1, '2019-05-02 01:27:40', 738),
(18, 7, 14, 'COC', 24, 79, 85, '2019-05-02', '20:00:00', 'AEF-E', 0, 1, '2019-05-02 01:27:47', 738),
(19, 8, 15, 'RCL', 72, 400, 455, '2019-05-03', '01:00:00', 'TUT', 0, 1, '2019-05-02 01:29:44', 769),
(20, 8, 15, 'RCL', 48, 400, 455, '2019-05-03', '01:00:00', 'TUT', 0, 1, '2019-05-02 01:29:54', 769),
(21, 8, 15, 'RCL', 24, 400, 455, '2019-05-03', '01:00:00', 'TUT', 0, 1, '2019-05-02 01:30:01', 769),
(22, 5, 12, 'MSC', 72, 1, 0, '2019-05-02', '07:00:00', 'CASUAL', 0, 1, '2019-05-02 01:51:23', 695),
(23, 5, 12, 'MSC', 48, 1, 0, '2019-05-02', '07:00:00', 'CASUAL', 0, 1, '2019-05-02 01:51:32', 695),
(24, 5, 12, 'MSC', 24, 1, 0, '2019-05-02', '07:00:00', 'CASUAL', 0, 1, '2019-05-02 01:51:39', 695),
(25, 9, 2, 'XCL', 72, 0, 650, '2019-05-02', '12:00:00', 'CG', 0, 1, '2019-05-02 02:01:43', 865),
(26, 9, 2, 'XCL', 48, 0, 650, '2019-05-02', '12:00:00', 'CG', 0, 1, '2019-05-02 02:01:53', 865),
(27, 9, 2, 'XCL', 24, 0, 650, '2019-05-02', '12:00:00', 'CG', 0, 1, '2019-05-02 02:02:02', 865),
(28, 11, 17, 'FAR', 72, 622, 365, '2019-05-03', '14:00:00', 'CASUAL', 0, 1, '2019-05-08 04:56:22', 747),
(29, 11, 17, 'FAR', 48, 622, 365, '2019-05-03', '14:00:00', 'CASUAL', 0, 1, '2019-05-08 04:56:31', 747),
(30, 11, 17, 'FAR', 24, 622, 365, '2019-05-03', '14:00:00', 'CASUAL', 0, 1, '2019-05-08 04:56:40', 747),
(31, 10, 16, 'SIM', 72, 650, 800, '2019-05-03', '24:00:00', 'CCS-E', 0, 1, '2019-05-08 04:57:12', 866),
(32, 10, 16, 'SIM', 48, 650, 800, '2019-05-03', '24:00:00', 'CCS-E', 0, 1, '2019-05-08 04:57:21', 866),
(33, 10, 16, 'SIM', 24, 650, 800, '2019-05-03', '24:00:00', 'CCS-E', 0, 1, '2019-05-08 04:57:30', 866),
(34, 12, 18, 'OEL', 72, 200, 265, '2019-05-03', '21:00:00', 'CCU', 0, 1, '2019-05-08 05:00:13', 786),
(35, 12, 18, 'OEL', 48, 200, 265, '2019-05-03', '21:00:00', 'CCU', 0, 1, '2019-05-08 05:00:21', 786),
(36, 12, 18, 'OEL', 24, 200, 265, '2019-05-03', '21:00:00', 'CCU', 0, 1, '2019-05-08 05:00:28', 786),
(37, 13, 19, 'OLS', 72, 206, 350, '2019-05-01', '00:00:00', 'MALE', 0, 1, '2019-05-08 05:03:42', 762),
(38, 13, 19, 'OLS', 48, 206, 350, '2019-05-01', '00:00:00', 'MALE', 0, 1, '2019-05-08 05:03:52', 762),
(39, 13, 19, 'OLS', 24, 206, 350, '2019-05-01', '00:00:00', 'MALE', 0, 1, '2019-05-08 05:03:58', 762),
(40, 14, 20, 'COS', 72, 1000, 2000, '2019-05-04', '10:00:00', 'IMED', 0, 1, '2019-05-08 08:39:14', 680),
(41, 14, 20, 'COS', 48, 1000, 2000, '2019-05-04', '10:00:00', 'IMED', 0, 1, '2019-05-08 08:39:21', 680),
(42, 14, 20, 'COS', 24, 1000, 2000, '2019-05-04', '10:00:00', 'IMED', 0, 1, '2019-05-08 08:39:27', 680),
(43, 15, 21, 'XCL', 72, 0, 2300, '2019-05-04', '06:30:00', 'PETRA', 0, 1, '2019-05-08 05:16:03', 865),
(44, 15, 21, 'XCL', 48, 0, 2300, '2019-05-04', '06:30:00', 'PETRA', 0, 1, '2019-05-08 05:16:14', 865),
(45, 15, 21, 'XCL', 24, 0, 2300, '2019-05-04', '06:30:00', 'PETRA', 0, 1, '2019-05-08 05:16:22', 865),
(46, 16, 22, 'EMC', 72, 0, 130, '2019-05-06', '24:59:00', 'CIX-2', 0, 1, '2019-05-08 05:22:39', 729),
(47, 16, 22, 'EMC', 48, 0, 130, '2019-05-06', '24:59:00', 'CIX-2', 0, 1, '2019-05-08 05:22:51', 729),
(48, 16, 22, 'EMC', 24, 0, 130, '2019-05-06', '24:59:00', 'CIX-2', 0, 1, '2019-05-08 05:22:58', 729),
(49, 17, 12, 'MSC', 72, 242, 123, '2019-07-01', '12:00:00', 'WER', 0, 1, '2019-09-03 04:24:07', 695),
(50, 18, 7, 'MSC', 72, 24, 343, '2019-07-07', '23:00:00', 'WR', 0, 1, '2019-07-07 00:19:09', 695),
(51, 19, 3, 'MSC', 72, 354, 34, '2019-07-02', '12:59:00', '35', 0, 1, '2019-07-07 00:19:37', 695),
(52, 17, 12, 'MSC', 48, 242, 123, '2019-07-01', '12:00:00', 'WER', 0, 1, '2019-09-03 04:24:12', 695),
(53, 17, 12, 'MSC', 24, 242, 123, '2019-07-01', '12:00:00', 'WER', 0, 1, '2019-09-03 04:24:15', 695),
(54, 20, 12, 'MSC', 72, 233, 122, '2019-01-01', '12:00:00', 'QWS', 0, 1, '2019-07-07 02:44:54', 695),
(55, 20, 12, 'MSC', 48, 233, 122, '2019-01-01', '12:00:00', 'QWS', 0, 1, '2019-07-07 02:45:18', 695),
(56, 18, 7, 'MSC', 48, 24, 343, '2019-07-07', '23:00:00', 'WR', 0, 1, '2019-07-07 02:45:27', 695),
(57, 18, 7, 'MSC', 24, 24, 343, '2019-07-07', '23:00:00', 'WR', 0, 1, '2019-07-07 02:45:35', 695),
(58, 20, 12, 'MSC', 24, 233, 122, '2019-01-01', '12:00:00', 'QWS', 0, 1, '2019-07-07 02:45:42', 695),
(59, 19, 3, 'MSC', 48, 354, 34, '2019-07-02', '12:59:00', '35', 0, 1, '2019-07-07 02:46:00', 695),
(60, 19, 3, 'MSC', 24, 354, 34, '2019-07-02', '12:59:00', '35', 0, 1, '2019-07-07 02:46:46', 695),
(61, 21, 4, 'MSC', 72, 388, 200, '2019-03-12', '03:00:00', 'ERR FD', 0, 1, '2019-07-07 02:46:55', 695),
(62, 21, 4, 'MSC', 48, 388, 200, '2019-03-12', '03:00:00', 'ERR FD', 0, 1, '2019-07-07 02:47:02', 695),
(63, 22, 11, 'MSC', 72, 533, 344, '2019-02-17', '12:00:00', 'RRR', 0, 1, '2019-07-07 02:47:50', 695),
(64, 22, 11, 'MSC', 48, 533, 344, '2019-02-17', '12:00:00', 'RRR', 0, 1, '2019-07-07 02:47:58', 695),
(65, 22, 11, 'MSC', 24, 533, 344, '2019-02-17', '12:00:00', 'RRR', 0, 1, '2019-07-07 02:48:05', 695),
(66, 21, 4, 'MSC', 24, 388, 200, '2019-03-12', '03:00:00', 'ERR FD', 0, 1, '2019-07-07 02:48:12', 695),
(67, 23, 7, 'MSC', 72, 222, 332, '2019-03-20', '12:00:00', 'EE GGG', 0, 1, '2019-07-07 02:48:47', 695),
(68, 23, 7, 'MSC', 48, 222, 332, '2019-03-20', '12:00:00', 'EE GGG', 0, 1, '2019-07-07 02:48:55', 695),
(69, 23, 7, 'MSC', 24, 222, 332, '2019-03-20', '12:00:00', 'EE GGG', 0, 1, '2019-07-07 02:49:02', 695),
(70, 24, 3, 'MSC', 72, 566, 755, '2019-04-08', '05:00:00', 'REE', 0, 1, '2019-07-07 02:49:47', 695),
(71, 24, 3, 'MSC', 48, 566, 755, '2019-04-08', '05:00:00', 'REE', 0, 1, '2019-07-07 02:49:58', 695),
(72, 24, 3, 'MSC', 24, 566, 755, '2019-04-08', '05:00:00', 'REE', 0, 1, '2019-07-07 02:50:08', 695),
(73, 25, 8, 'LIL', 72, 200, 122, '2019-01-07', '02:00:00', 'WW', 0, 1, '2019-07-07 03:02:50', 759),
(74, 25, 8, 'LIL', 48, 200, 122, '2019-01-07', '02:00:00', 'WW', 0, 1, '2019-07-07 03:02:57', 759),
(75, 25, 8, 'LIL', 24, 200, 122, '2019-01-07', '02:00:00', 'WW', 0, 1, '2019-07-07 03:03:04', 759),
(76, 26, 5, 'LIL', 72, 123, 433, '2019-01-29', '04:00:00', 'EE', 0, 1, '2019-07-07 03:03:34', 759),
(77, 26, 5, 'LIL', 48, 123, 433, '2019-01-29', '04:00:00', 'EE', 0, 1, '2019-07-07 03:03:42', 759),
(78, 26, 5, 'LIL', 24, 123, 433, '2019-01-29', '04:00:00', 'EE', 0, 1, '2019-07-07 03:03:48', 759),
(79, 27, 8, 'LIL', 72, 433, 444, '2019-03-19', '04:00:00', 'RRR', 0, 1, '2019-07-07 03:04:31', 759),
(80, 27, 8, 'LIL', 48, 433, 444, '2019-03-19', '04:00:00', 'RRR', 0, 1, '2019-07-07 03:04:39', 759),
(81, 27, 8, 'LIL', 24, 433, 444, '2019-03-19', '04:00:00', 'RRR', 0, 1, '2019-07-07 03:04:47', 759),
(82, 28, 12, 'MSC', 72, 400, 200, '2019-07-08', '03:00:00', 'qqq', 0, 1, '2019-07-07 23:43:48', 695),
(83, 28, 12, 'MSC', 48, 400, 200, '2019-07-08', '03:00:00', 'qqq', 0, 1, '2019-07-07 23:44:04', 695),
(84, 28, 12, 'MSC', 24, 400, 200, '2019-07-08', '03:00:00', 'qqq', 0, 1, '2019-07-07 23:44:18', 695),
(85, 29, 4, 'MSC', 72, 200, 300, '2019-07-08', '09:00:00', 'qqq', 0, 1, '2019-07-07 23:52:03', 695),
(86, 29, 4, 'MSC', 48, 200, 300, '2019-07-08', '09:00:00', 'qqq', 0, 1, '2019-07-07 23:52:17', 695),
(87, 29, 4, 'MSC', 24, 200, 300, '2019-07-08', '09:00:00', 'qqq', 0, 1, '2019-07-07 23:52:27', 695),
(88, 30, 12, 'MSC', 72, 100, 100, '2019-07-09', '09:00:00', 'q', 0, 1, '2019-07-07 23:58:51', 695),
(89, 30, 12, 'MSC', 48, 100, 100, '2019-07-09', '09:00:00', 'q', 0, 1, '2019-07-07 23:59:03', 695),
(90, 30, 12, 'MSC', 24, 100, 100, '2019-07-09', '09:00:00', 'q', 0, 1, '2019-07-07 23:59:11', 695),
(91, 31, 4, 'MSC', 72, 300, 200, '2019-07-09', '09:00:00', '1', 0, 1, '2019-07-08 00:00:55', 695),
(92, 31, 4, 'MSC', 48, 300, 200, '2019-07-09', '09:00:00', '1', 0, 1, '2019-07-08 00:01:06', 695),
(93, 31, 4, 'MSC', 24, 300, 200, '2019-07-09', '09:00:00', '1', 0, 1, '2019-07-08 00:01:15', 695),
(94, 32, 7, 'MSC', 72, 100, 200, '2019-07-09', '09:00:00', '2', 0, 1, '2019-07-08 00:05:42', 695),
(95, 32, 7, 'MSC', 48, 100, 200, '2019-07-09', '09:00:00', '2', 0, 1, '2019-07-08 00:05:51', 695),
(96, 33, 3, 'MSC', 72, 100, 300, '2019-07-09', '09:00:00', '3', 0, 1, '2019-07-08 00:06:02', 695),
(97, 34, 11, 'MSC', 72, 100, 75, '2019-07-09', '09:00:00', '5', 0, 1, '2019-07-08 00:06:11', 695),
(98, 32, 7, 'MSC', 24, 100, 200, '2019-07-09', '09:00:00', '2', 0, 1, '2019-07-08 00:06:22', 695),
(99, 33, 3, 'MSC', 48, 100, 300, '2019-07-09', '09:00:00', '3', 0, 1, '2019-07-08 00:06:31', 695),
(100, 33, 3, 'MSC', 24, 100, 300, '2019-07-09', '09:00:00', '3', 0, 1, '2019-07-08 00:06:48', 695),
(101, 34, 11, 'MSC', 48, 100, 75, '2019-07-09', '09:00:00', '5', 0, 1, '2019-07-08 00:06:57', 695),
(102, 34, 11, 'MSC', 24, 100, 75, '2019-07-09', '09:00:00', '5', 0, 1, '2019-07-08 00:07:07', 695),
(103, 38, 5, 'LIL', 72, 210, 120, '2019-01-01', '09:00:00', 'Wer', 0, 1, '2019-08-27 02:48:51', 759),
(104, 38, 5, 'LIL', 48, 210, 120, '2019-01-01', '09:00:00', 'Wer', 0, 1, '2019-08-27 02:49:09', 759),
(105, 38, 5, 'LIL', 24, 210, 120, '2019-01-01', '09:00:00', 'Wer', 0, 1, '2019-08-27 02:49:26', 759),
(106, 39, 8, 'LIL', 72, 123, 322, '2019-01-02', '12:00:00', 'Qer', 0, 1, '2019-08-27 02:50:14', 759),
(107, 39, 8, 'LIL', 48, 123, 322, '2019-01-02', '12:00:00', 'Qer', 0, 1, '2019-08-27 02:50:23', 759),
(108, 39, 8, 'LIL', 24, 123, 322, '2019-01-02', '12:00:00', 'Qer', 0, 1, '2019-08-27 02:50:32', 759),
(109, 37, 7, 'MSC', 72, 65, 67, '2019-08-25', '23:59:00', '56yr', 0, 1, '2019-08-27 02:51:57', 695),
(110, 37, 7, 'MSC', 48, 65, 67, '2019-08-25', '23:59:00', '56yr', 0, 1, '2019-08-27 02:52:09', 695),
(111, 37, 7, 'MSC', 24, 65, 67, '2019-08-25', '23:59:00', '56yr', 0, 1, '2019-08-27 02:52:22', 695),
(112, 40, 12, 'MSC', 72, 344, 455, '2019-01-02', '09:00:00', 'Qwe', 0, 1, '2019-08-27 02:52:33', 695),
(113, 40, 12, 'MSC', 48, 344, 455, '2019-01-02', '09:00:00', 'Qwe', 0, 1, '2019-08-27 02:52:45', 695),
(114, 40, 12, 'MSC', 24, 344, 455, '2019-01-02', '09:00:00', 'Qwe', 0, 1, '2019-08-27 02:56:05', 695),
(115, 36, 7, 'MSC', 72, 34, 45, '2019-08-25', '22:46:00', 're', 0, 1, '2019-08-27 02:56:15', 695),
(116, 36, 7, 'MSC', 48, 34, 45, '2019-08-25', '22:46:00', 're', 0, 1, '2019-08-27 02:56:26', 695),
(117, 36, 7, 'MSC', 24, 34, 45, '2019-08-25', '22:46:00', 're', 0, 1, '2019-08-27 02:56:38', 695),
(118, 35, 12, 'MSC', 72, 389, 200, '2019-08-25', '11:59:00', 'we', 0, 1, '2019-08-27 02:56:51', 695),
(119, 35, 12, 'MSC', 48, 389, 200, '2019-08-25', '11:59:00', 'we', 0, 1, '2019-08-27 02:57:05', 695),
(120, 35, 12, 'MSC', 24, 389, 200, '2019-08-25', '11:59:00', 'we', 0, 1, '2019-08-27 02:57:17', 695),
(121, 41, 14, 'COC', 72, 23, 546, '2019-01-02', '09:00:00', 'Ger', 0, 1, '2019-08-27 02:59:21', 738),
(122, 41, 14, 'COC', 48, 23, 546, '2019-01-02', '09:00:00', 'Ger', 0, 1, '2019-08-27 02:59:31', 738),
(123, 41, 14, 'COC', 24, 23, 546, '2019-01-02', '09:00:00', 'Ger', 0, 1, '2019-08-27 02:59:39', 738),
(124, 42, 11, 'MSC', 72, 234, 345, '2019-01-01', '09:00:00', 'Rert', 0, 1, '2019-08-27 03:00:45', 695),
(125, 42, 11, 'MSC', 48, 234, 345, '2019-01-01', '09:00:00', 'Rert', 0, 1, '2019-08-27 03:00:55', 695),
(126, 42, 11, 'MSC', 24, 234, 345, '2019-01-01', '09:00:00', 'Rert', 0, 1, '2019-08-27 03:01:04', 695),
(127, 43, 16, 'SIM', 72, 234, 546, '2019-01-01', '09:00:00', 'wrr', 0, 1, '2019-08-27 03:02:09', 866),
(128, 43, 16, 'SIM', 48, 234, 546, '2019-01-01', '09:00:00', 'wrr', 0, 1, '2019-08-27 03:02:19', 866),
(129, 43, 16, 'SIM', 24, 234, 546, '2019-01-01', '09:00:00', 'wrr', 0, 1, '2019-08-27 03:02:27', 866),
(130, 44, 3, 'MSC', 72, 34, 678, '2019-01-01', '09:00:00', 'Ye5', 0, 1, '2019-08-27 03:04:43', 695),
(131, 44, 3, 'MSC', 48, 34, 678, '2019-01-01', '09:00:00', 'Ye5', 0, 1, '2019-08-27 03:04:51', 695),
(132, 44, 3, 'MSC', 24, 34, 678, '2019-01-01', '09:00:00', 'Ye5', 0, 1, '2019-08-27 03:04:59', 695),
(133, 47, 11, 'MSC', 72, 34, 456, '2019-01-02', '14:30:00', 'Trwret we', 0, 1, '2019-08-27 03:15:12', 695),
(134, 46, 3, 'MSC', 72, 34, 456, '2019-01-02', '12:30:00', 'Trw we', 0, 1, '2019-08-27 03:15:23', 695),
(135, 45, 4, 'MSC', 72, 34, 456, '2019-01-02', '09:00:00', 'Trw', 0, 1, '2019-08-27 03:15:31', 695),
(136, 47, 11, 'MSC', 48, 34, 456, '2019-01-02', '14:30:00', 'Trwret we', 0, 1, '2019-08-27 03:15:40', 695),
(137, 46, 3, 'MSC', 48, 34, 456, '2019-01-02', '12:30:00', 'Trw we', 0, 1, '2019-08-27 03:15:49', 695),
(138, 45, 4, 'MSC', 48, 34, 456, '2019-01-02', '09:00:00', 'Trw', 0, 1, '2019-08-27 03:15:58', 695),
(139, 47, 11, 'MSC', 24, 34, 456, '2019-01-02', '14:30:00', 'Trwret we', 0, 1, '2019-08-27 03:16:08', 695),
(140, 46, 3, 'MSC', 24, 34, 456, '2019-01-02', '12:30:00', 'Trw we', 0, 1, '2019-08-27 03:16:16', 695),
(141, 45, 4, 'MSC', 24, 34, 456, '2019-01-02', '09:00:00', 'Trw', 0, 1, '2019-08-27 03:16:26', 695),
(142, 57, 11, 'MSC', 72, 234, 122, '2019-09-03', '05:00:00', 'htry', 0, 1, '2019-08-27 03:38:15', 695),
(143, 57, 11, 'MSC', 48, 234, 122, '2019-09-03', '05:00:00', 'htry', 0, 1, '2019-08-27 04:44:53', 695),
(144, 57, 11, 'MSC', 24, 234, 122, '2019-09-03', '05:00:00', 'htry', 0, 1, '2019-08-27 04:52:55', 695),
(145, 56, 3, 'MSC', 72, 234, 122, '2019-09-01', '05:00:00', 'hytt yut', 0, 1, '2019-08-27 04:53:14', 695),
(146, 56, 3, 'MSC', 48, 234, 122, '2019-09-01', '05:00:00', 'hytt yut', 0, 1, '2019-08-27 04:53:40', 695),
(147, 56, 3, 'MSC', 24, 234, 122, '2019-09-01', '05:00:00', 'hytt yut', 0, 1, '2019-08-27 04:53:53', 695),
(148, 55, 4, 'MSC', 72, 234, 122, '2019-09-01', '05:00:00', 'hytt', 0, 1, '2019-08-27 04:54:45', 695),
(149, 55, 4, 'MSC', 48, 234, 122, '2019-09-01', '05:00:00', 'hytt', 0, 1, '2019-08-27 04:54:51', 695),
(150, 55, 4, 'MSC', 24, 234, 122, '2019-09-01', '05:00:00', 'hytt', 0, 1, '2019-08-27 04:55:08', 695),
(151, 54, 12, 'MSC', 72, 234, 122, '2019-09-01', '01:30:00', 'Rewr re', 0, 1, '2019-08-27 04:55:15', 695),
(152, 54, 12, 'MSC', 48, 234, 122, '2019-09-01', '01:30:00', 'Rewr re', 0, 1, '2019-08-27 04:55:21', 695),
(153, 54, 12, 'MSC', 24, 234, 122, '2019-09-01', '01:30:00', 'Rewr re', 0, 1, '2019-08-27 04:55:27', 695),
(154, 53, 11, 'MSC', 72, 234, 122, '2019-08-01', '12:30:00', 'Rewr', 0, 1, '2019-08-27 04:55:33', 695),
(155, 53, 11, 'MSC', 48, 234, 122, '2019-08-01', '12:30:00', 'Rewr', 0, 1, '2019-08-27 04:55:39', 695),
(156, 53, 11, 'MSC', 24, 234, 122, '2019-08-01', '12:30:00', 'Rewr', 0, 1, '2019-08-27 04:55:45', 695),
(157, 52, 12, 'MSC', 72, 234, 345, '2019-08-01', '12:30:00', 'qwe re', 0, 1, '2019-08-27 04:55:52', 695),
(158, 52, 12, 'MSC', 48, 234, 345, '2019-08-01', '12:30:00', 'qwe re', 0, 1, '2019-08-27 04:55:57', 695),
(159, 52, 12, 'MSC', 24, 234, 345, '2019-08-01', '12:30:00', 'qwe re', 0, 1, '2019-08-27 04:56:03', 695),
(160, 51, 11, 'MSC', 72, 234, 345, '2019-08-01', '14:00:00', 'qwe', 0, 1, '2019-08-27 04:56:16', 695),
(161, 50, 11, 'MSC', 72, 234, 345, '2019-06-06', '14:00:00', 'Wee re er', 0, 1, '2019-08-27 04:56:22', 695),
(162, 50, 11, 'MSC', 48, 234, 345, '2019-06-06', '14:00:00', 'Wee re er', 0, 1, '2019-08-27 04:56:28', 695),
(163, 51, 11, 'MSC', 48, 234, 345, '2019-08-01', '14:00:00', 'qwe', 0, 1, '2019-08-27 04:56:33', 695),
(164, 51, 11, 'MSC', 24, 234, 345, '2019-08-01', '14:00:00', 'qwe', 0, 1, '2019-08-27 04:56:39', 695),
(165, 50, 11, 'MSC', 24, 234, 345, '2019-06-06', '14:00:00', 'Wee re er', 0, 1, '2019-08-27 04:56:44', 695),
(166, 49, 7, 'MSC', 72, 234, 345, '2019-06-06', '13:00:00', 'Wee re', 0, 1, '2019-08-27 04:56:49', 695),
(167, 49, 7, 'MSC', 48, 234, 345, '2019-06-06', '13:00:00', 'Wee re', 0, 1, '2019-08-27 04:56:55', 695),
(168, 49, 7, 'MSC', 24, 234, 345, '2019-06-06', '13:00:00', 'Wee re', 0, 1, '2019-08-27 04:57:01', 695),
(169, 48, 12, 'MSC', 72, 234, 345, '2019-06-04', '09:00:00', 'Wee', 0, 1, '2019-08-27 04:57:08', 695),
(170, 48, 12, 'MSC', 48, 234, 345, '2019-06-04', '09:00:00', 'Wee', 0, 1, '2019-08-27 04:57:15', 695),
(171, 48, 12, 'MSC', 24, 234, 345, '2019-06-04', '09:00:00', 'Wee', 0, 1, '2019-08-27 04:57:21', 695),
(172, 59, 8, 'LIL', 72, 234, 345, '2019-09-01', '09:00:00', 'ert', 0, 1, '2019-08-27 04:58:31', 759),
(173, 59, 8, 'LIL', 48, 234, 345, '2019-09-01', '09:00:00', 'ert', 0, 1, '2019-08-27 04:59:21', 759),
(174, 59, 8, 'LIL', 24, 234, 345, '2019-09-01', '09:00:00', 'ert', 0, 1, '2019-08-27 05:04:52', 759),
(175, 58, 5, 'LIL', 72, 234, 345, '2019-09-01', '09:00:00', 'ert', 0, 1, '2019-08-27 05:27:20', 759),
(176, 58, 5, 'LIL', 48, 234, 345, '2019-09-01', '09:00:00', 'ert', 0, 1, '2019-08-27 05:27:29', 759),
(177, 58, 5, 'LIL', 24, 234, 345, '2019-09-01', '09:00:00', 'ert', 0, 1, '2019-08-27 05:27:37', 759),
(178, 60, 14, 'COC', 72, 23, 345, '2019-09-01', '09:00:00', 'twe', 0, 1, '2019-08-27 05:31:04', 738),
(179, 60, 14, 'COC', 48, 23, 345, '2019-09-01', '09:00:00', 'twe', 0, 1, '2019-08-27 05:31:11', 738),
(180, 60, 14, 'COC', 24, 23, 345, '2019-09-01', '09:00:00', 'twe', 0, 1, '2019-08-27 05:31:18', 738),
(181, 61, 12, 'MSC', 72, 234, 1233, '2019-09-04', '09:00:00', 'erw', 0, 1, '2019-08-27 06:07:14', 695),
(182, 61, 12, 'MSC', 48, 234, 1233, '2019-09-04', '09:00:00', 'erw', 0, 1, '2019-08-27 06:07:19', 695),
(183, 61, 12, 'MSC', 24, 234, 1233, '2019-09-04', '09:00:00', 'erw', 0, 1, '2019-08-27 06:07:25', 695),
(184, 62, 4, 'MSC', 72, 45, 34, '2019-08-31', '09:00:00', 'er', 0, 1, '2019-08-30 23:00:38', 695),
(185, 62, 4, 'MSC', 48, 45, 34, '2019-08-31', '09:00:00', 'er', 0, 1, '2019-08-30 23:02:43', 695),
(186, 62, 4, 'MSC', 24, 45, 34, '2019-08-31', '09:00:00', 'er', 0, 1, '2019-08-30 23:02:50', 695),
(187, 63, 12, 'MSC', 72, 40, 300, '2019-09-02', '09:00:00', 'rt', 0, 1, '2019-08-30 23:02:57', 695),
(188, 63, 12, 'MSC', 48, 40, 300, '2019-09-02', '09:00:00', 'rt', 0, 1, '2019-08-30 23:03:04', 695),
(189, 64, 12, 'MSC', 72, 4, 3, '2019-08-27', '09:00:00', '4', 0, 1, '2019-08-30 23:03:10', 695),
(190, 65, 12, 'MSC', 72, 123, 345, '2019-08-15', '09:00:00', 'rew', 0, 1, '2019-08-30 23:03:15', 695),
(191, 66, 7, 'MSC', 72, 45, 56, '2019-07-24', '09:00:00', 'tr', 0, 1, '2019-08-30 23:03:22', 695),
(192, 67, 4, 'MSC', 72, 45, 67, '2019-07-18', '12:30:00', 'tr', 0, 1, '2019-08-30 23:03:27', 695),
(193, 63, 12, 'MSC', 24, 40, 300, '2019-09-02', '09:00:00', 'rt', 0, 1, '2019-09-03 01:34:19', 695),
(194, 64, 12, 'MSC', 48, 4, 3, '2019-08-27', '09:00:00', '4', 0, 1, '2019-09-03 01:34:37', 695),
(195, 64, 12, 'MSC', 24, 4, 3, '2019-08-27', '09:00:00', '4', 0, 1, '2019-09-03 01:34:46', 695),
(196, 65, 12, 'MSC', 48, 123, 345, '2019-08-15', '09:00:00', 'rew', 0, 1, '2019-09-03 01:34:52', 695),
(197, 65, 12, 'MSC', 24, 123, 345, '2019-08-15', '09:00:00', 'rew', 0, 1, '2019-09-03 01:34:58', 695),
(198, 66, 7, 'MSC', 48, 45, 56, '2019-07-24', '09:00:00', 'tr', 0, 1, '2019-09-03 01:35:47', 695),
(199, 66, 7, 'MSC', 24, 45, 56, '2019-07-24', '09:00:00', 'tr', 0, 1, '2019-09-03 01:35:55', 695),
(200, 67, 4, 'MSC', 48, 45, 67, '2019-07-18', '12:30:00', 'tr', 0, 1, '2019-09-03 01:36:01', 695),
(201, 68, 4, 'MSC', 72, 433, 565, '2019-05-01', '09:00:00', 'rte', 0, 1, '2019-09-03 01:36:13', 695),
(202, 67, 4, 'MSC', 24, 45, 67, '2019-07-18', '12:30:00', 'tr', 0, 1, '2019-09-03 01:36:19', 695),
(203, 68, 4, 'MSC', 48, 433, 565, '2019-05-01', '09:00:00', 'rte', 0, 1, '2019-09-03 01:36:25', 695),
(204, 68, 4, 'MSC', 24, 433, 565, '2019-05-01', '09:00:00', 'rte', 0, 1, '2019-09-03 01:36:30', 695),
(205, 69, 5, 'LIL', 72, 243, 456, '2019-09-02', '12:15:00', 'rewtryr', 0, 1, '2019-09-03 02:29:34', 759),
(206, 69, 5, 'LIL', 48, 243, 456, '2019-09-02', '12:15:00', 'rewtryr', 0, 1, '2019-09-03 02:29:47', 759),
(207, 69, 5, 'LIL', 24, 243, 456, '2019-09-02', '12:15:00', 'rewtryr', 0, 1, '2019-09-03 02:29:53', 759),
(208, 70, 8, 'LIL', 72, 234, 864, '2019-09-02', '00:00:00', 'ert', 0, 1, '2019-09-03 02:30:00', 759),
(209, 70, 8, 'LIL', 48, 234, 864, '2019-09-02', '00:00:00', 'ert', 0, 1, '2019-09-03 02:30:07', 759),
(210, 70, 8, 'LIL', 24, 234, 864, '2019-09-02', '00:00:00', 'ert', 0, 1, '2019-09-03 02:30:12', 759),
(211, 71, 14, 'COC', 72, 345, 456, '2019-09-02', '09:00:00', 'ryr', 0, 1, '2019-09-03 02:30:54', 738),
(212, 71, 14, 'COC', 48, 345, 456, '2019-09-02', '09:00:00', 'ryr', 0, 1, '2019-09-03 02:31:00', 738),
(213, 71, 14, 'COC', 24, 345, 456, '2019-09-02', '09:00:00', 'ryr', 0, 1, '2019-09-03 02:31:05', 738),
(214, 72, 16, 'SIM', 72, 678, 456, '2019-09-02', '03:45:00', 'yiyu', 0, 1, '2019-09-03 02:32:31', 866),
(215, 72, 16, 'SIM', 48, 678, 456, '2019-09-02', '03:45:00', 'yiyu', 0, 1, '2019-09-03 02:32:48', 866),
(216, 72, 16, 'SIM', 24, 678, 456, '2019-09-02', '03:45:00', 'yiyu', 0, 1, '2019-09-03 02:32:55', 866),
(217, 73, 9, 'SIM', 72, 786, 0, '2019-09-04', '09:00:00', 'wer', 0, 1, '2019-09-03 02:33:31', 866),
(218, 73, 9, 'SIM', 48, 786, 0, '2019-09-04', '09:00:00', 'wer', 0, 1, '2019-09-03 02:34:22', 866),
(219, 73, 9, 'SIM', 24, 786, 0, '2019-09-04', '09:00:00', 'wer', 0, 1, '2019-09-03 02:34:28', 866),
(220, 74, 5, 'LIL', 72, 345, 435, '2019-09-20', '09:00:00', 'ert', 0, 1, '2019-09-03 04:56:10', 759),
(221, 74, 5, 'LIL', 48, 345, 435, '2019-09-20', '09:00:00', 'ert', 0, 1, '2019-09-03 04:56:16', 759),
(222, 74, 5, 'LIL', 24, 345, 435, '2019-09-20', '09:00:00', 'ert', 0, 1, '2019-09-03 04:56:21', 759),
(223, 75, 9, 'SIM', 72, 2, 898, '2019-01-01', '09:00:00', 'erw', 0, 1, '2019-09-02 22:02:32', 866),
(224, 75, 9, 'SIM', 48, 2, 898, '2019-01-01', '09:00:00', 'erw', 0, 1, '2019-09-02 22:02:36', 866),
(225, 75, 9, 'SIM', 24, 2, 898, '2019-01-01', '09:00:00', 'erw', 0, 1, '2019-09-02 22:02:40', 866),
(226, 76, 14, 'COC', 72, 234, 453, '2019-01-01', '09:00:00', 'rw', 0, 1, '2019-09-02 22:03:28', 738),
(227, 76, 14, 'COC', 48, 234, 453, '2019-01-01', '09:00:00', 'rw', 0, 1, '2019-09-02 22:03:34', 738),
(228, 76, 14, 'COC', 24, 234, 453, '2019-01-01', '09:00:00', 'rw', 0, 1, '2019-09-02 22:03:38', 738),
(229, 77, 4, 'MSC', 72, 546, 353, '2019-01-01', '09:00:00', 'rttyr', 0, 1, '2019-09-02 22:06:33', 695),
(230, 77, 4, 'MSC', 48, 546, 353, '2019-01-01', '09:00:00', 'rttyr', 0, 1, '2019-09-02 22:06:37', 695),
(231, 77, 4, 'MSC', 24, 546, 353, '2019-01-01', '09:00:00', 'rttyr', 0, 1, '2019-09-02 22:06:41', 695),
(232, 78, 7, 'MSC', 72, 464, 675, '2019-01-01', '12:15:00', 'ert', 0, 1, '2019-09-02 22:06:46', 695),
(233, 78, 7, 'MSC', 48, 464, 675, '2019-01-01', '12:15:00', 'ert', 0, 1, '2019-09-02 22:06:50', 695),
(234, 78, 7, 'MSC', 24, 464, 675, '2019-01-01', '12:15:00', 'ert', 0, 1, '2019-09-02 22:06:54', 695),
(235, 79, 5, 'LIL', 72, 242, 533, '2019-09-07', '09:00:00', 'erte', 0, 1, '2019-09-02 22:56:45', 759),
(236, 79, 5, 'LIL', 48, 242, 533, '2019-09-07', '09:00:00', 'erte', 0, 1, '2019-09-02 22:57:08', 759),
(237, 79, 5, 'LIL', 24, 242, 232, '2019-09-07', '09:00:00', 'erte', 0, 1, '2019-09-02 22:58:29', 759),
(238, 80, 8, 'LIL', 72, 234, 456, '2019-09-07', '09:00:00', 'tete', 0, 1, '2019-09-02 22:59:43', 759),
(239, 80, 8, 'LIL', 48, 234, 456, '2019-09-07', '09:00:00', 'tete', 0, 1, '2019-09-02 22:59:48', 759),
(240, 80, 8, 'LIL', 24, 234, 456, '2019-09-07', '09:00:00', 'tete', 0, 1, '2019-09-02 22:59:54', 759),
(241, 81, 4, 'MSC', 72, 345, 345, '2019-09-02', '09:00:00', 'ere', 0, 1, '2019-09-05 21:33:21', 695),
(242, 81, 4, 'MSC', 48, 345, 345, '2019-09-02', '09:00:00', 'ere', 0, 1, '2019-09-05 21:33:25', 695),
(243, 81, 4, 'MSC', 24, 345, 345, '2019-09-02', '09:00:00', 'ere', 0, 1, '2019-09-05 21:33:30', 695),
(244, 82, 7, 'MSC', 72, 23, 565, '2019-09-02', '06:30:00', 'retr', 0, 1, '2019-09-05 21:33:34', 695),
(245, 82, 7, 'MSC', 48, 23, 565, '2019-09-02', '06:30:00', 'retr', 0, 1, '2019-09-05 21:33:38', 695),
(246, 82, 7, 'MSC', 24, 23, 565, '2019-09-02', '06:30:00', 'retr', 0, 1, '2019-09-05 21:33:42', 695),
(247, 83, 3, 'MSC', 72, 453, 234, '2019-09-02', '07:00:00', 'fgd', 0, 1, '2019-09-05 21:34:01', 695),
(248, 83, 3, 'MSC', 48, 453, 234, '2019-09-02', '07:00:00', 'fgd', 0, 1, '2019-09-05 21:34:10', 695),
(249, 83, 3, 'MSC', 24, 453, 234, '2019-09-02', '07:00:00', 'fgd', 0, 1, '2019-09-05 21:34:15', 695),
(250, 91, 3, 'MSC', 72, 34, 634, '2019-09-05', '01:15:00', 'rty', 0, 1, '2019-09-05 21:39:41', 695),
(251, 91, 3, 'MSC', 48, 34, 634, '2019-09-05', '01:15:00', 'rty', 0, 1, '2019-09-05 21:39:46', 695),
(252, 84, 3, 'MSC', 72, 657, 456, '2019-09-03', '09:00:00', 'ert', 0, 1, '2019-09-05 21:39:50', 695),
(253, 85, 12, 'MSC', 72, 456, 565, '2019-09-03', '06:45:00', 'rty', 0, 1, '2019-09-05 21:39:55', 695),
(254, 84, 3, 'MSC', 48, 657, 456, '2019-09-03', '09:00:00', 'ert', 0, 1, '2019-09-05 21:39:59', 695),
(255, 86, 7, 'MSC', 72, 46, 576, '2019-09-03', '09:00:00', 'ete', 0, 1, '2019-09-05 21:40:03', 695),
(256, 84, 3, 'MSC', 24, 657, 456, '2019-09-03', '09:00:00', 'ert', 0, 1, '2019-09-05 21:40:07', 695),
(257, 86, 7, 'MSC', 48, 46, 576, '2019-09-03', '09:00:00', 'ete', 0, 1, '2019-09-05 21:40:10', 695),
(258, 85, 12, 'MSC', 48, 456, 565, '2019-09-03', '06:45:00', 'rty', 0, 1, '2019-09-05 21:40:14', 695),
(259, 86, 7, 'MSC', 24, 46, 576, '2019-09-03', '09:00:00', 'ete', 0, 1, '2019-09-05 21:40:19', 695),
(260, 85, 12, 'MSC', 24, 456, 565, '2019-09-03', '06:45:00', 'rty', 0, 1, '2019-09-05 21:40:23', 695),
(261, 88, 7, 'MSC', 72, 34, 657, '2019-09-04', '01:00:00', '45ete', 0, 1, '2019-09-05 21:40:27', 695),
(262, 88, 7, 'MSC', 48, 34, 657, '2019-09-04', '01:00:00', '45ete', 0, 1, '2019-09-05 21:40:31', 695),
(263, 88, 7, 'MSC', 24, 34, 657, '2019-09-04', '01:00:00', '45ete', 0, 1, '2019-09-05 21:40:34', 695),
(264, 89, 3, 'MSC', 72, 23, 657, '2019-09-04', '00:45:00', 'te', 0, 1, '2019-09-05 21:40:38', 695),
(265, 90, 4, 'MSC', 72, 234, 45, '2019-09-05', '00:15:00', '56tyr', 0, 1, '2019-09-05 21:40:42', 695),
(266, 90, 4, 'MSC', 48, 234, 45, '2019-09-05', '00:15:00', '56tyr', 0, 1, '2019-09-05 21:40:46', 695),
(267, 91, 3, 'MSC', 24, 34, 634, '2019-09-05', '01:15:00', 'rty', 0, 1, '2019-09-05 21:40:50', 695),
(268, 87, 4, 'MSC', 72, 3453, 676, '2019-09-04', '00:45:00', 'et', 0, 1, '2019-09-05 21:40:54', 695),
(269, 87, 4, 'MSC', 48, 3453, 676, '2019-09-04', '00:45:00', 'et', 0, 1, '2019-09-05 21:40:58', 695),
(270, 89, 3, 'MSC', 48, 23, 657, '2019-09-04', '00:45:00', 'te', 0, 1, '2019-09-05 21:41:02', 695),
(271, 87, 4, 'MSC', 24, 3453, 676, '2019-09-04', '00:45:00', 'et', 0, 1, '2019-09-05 21:41:06', 695),
(272, 90, 4, 'MSC', 24, 234, 45, '2019-09-05', '00:15:00', '56tyr', 0, 1, '2019-09-05 21:41:10', 695),
(273, 89, 3, 'MSC', 24, 23, 657, '2019-09-04', '00:45:00', 'te', 0, 1, '2019-09-05 21:41:14', 695),
(274, 92, 4, 'MSC', 72, 343, 453, '2019-09-06', '09:00:00', 'rete', 0, 1, '2019-09-05 21:42:18', 695),
(275, 93, 7, 'MSC', 72, 34, 32, '2019-09-06', '00:45:00', 'ere', 0, 1, '2019-09-05 21:42:22', 695),
(276, 94, 11, 'MSC', 72, 34, 6454, '2019-09-06', '00:45:00', 'eww', 0, 1, '2019-09-05 21:42:25', 695),
(277, 92, 4, 'MSC', 48, 343, 453, '2019-09-06', '09:00:00', 'rete', 0, 1, '2019-09-05 21:42:30', 695),
(278, 93, 7, 'MSC', 48, 34, 32, '2019-09-06', '00:45:00', 'ere', 0, 1, '2019-09-05 21:42:33', 695),
(279, 93, 7, 'MSC', 24, 34, 32, '2019-09-06', '00:45:00', 'ere', 0, 1, '2019-09-05 21:42:37', 695),
(280, 94, 11, 'MSC', 48, 34, 6454, '2019-09-06', '00:45:00', 'eww', 0, 1, '2019-09-05 21:42:41', 695),
(281, 92, 4, 'MSC', 24, 343, 453, '2019-09-06', '09:00:00', 'rete', 0, 1, '2019-09-05 21:42:44', 695),
(282, 94, 11, 'MSC', 24, 34, 6454, '2019-09-06', '00:45:00', 'eww', 0, 1, '2019-09-05 21:42:48', 695),
(283, 99, 7, 'MSC', 72, 23, 898, '2019-09-08', '01:45:00', '4nb', 0, 1, '2019-09-05 21:50:32', 695),
(284, 98, 4, 'MSC', 72, 343, 123, '2019-09-08', '06:45:00', 'ere', 0, 1, '2019-09-05 21:50:36', 695),
(285, 97, 4, 'MSC', 72, 787, 89, '2019-09-07', '01:30:00', '7hjh', 0, 1, '2019-09-05 21:50:40', 695),
(286, 96, 12, 'MSC', 72, 454, 787, '2019-09-07', '00:45:00', 'mn', 0, 1, '2019-09-05 21:50:46', 695),
(287, 95, 7, 'MSC', 72, 343, 122, '2019-09-07', '09:00:00', 'klk', 0, 1, '2019-09-05 21:50:54', 695),
(288, 95, 7, 'MSC', 48, 343, 122, '2019-09-07', '09:00:00', 'klk', 0, 1, '2019-09-05 21:51:00', 695),
(289, 96, 12, 'MSC', 48, 454, 787, '2019-09-07', '00:45:00', 'mn', 0, 1, '2019-09-05 21:51:15', 695),
(290, 97, 4, 'MSC', 48, 787, 89, '2019-09-07', '01:30:00', '7hjh', 0, 1, '2019-09-05 21:51:19', 695),
(291, 97, 4, 'MSC', 24, 787, 89, '2019-09-07', '01:30:00', '7hjh', 0, 1, '2019-09-05 21:51:22', 695),
(292, 96, 12, 'MSC', 24, 454, 787, '2019-09-07', '00:45:00', 'mn', 0, 1, '2019-09-05 21:51:26', 695),
(293, 95, 7, 'MSC', 24, 343, 122, '2019-09-07', '09:00:00', 'klk', 0, 1, '2019-09-05 21:51:31', 695),
(294, 99, 7, 'MSC', 48, 23, 898, '2019-09-08', '01:45:00', '4nb', 0, 1, '2019-09-05 21:51:35', 695),
(295, 99, 7, 'MSC', 24, 23, 898, '2019-09-08', '01:45:00', '4nb', 0, 1, '2019-09-05 21:51:39', 695),
(296, 98, 4, 'MSC', 48, 343, 123, '2019-09-08', '06:45:00', 'ere', 0, 1, '2019-09-05 21:51:43', 695),
(297, 98, 4, 'MSC', 24, 343, 123, '2019-09-08', '06:45:00', 'ere', 0, 1, '2019-09-05 21:51:47', 695),
(298, 100, 5, 'LIL', 72, 343, 345, '2019-09-08', '09:00:00', 'ert', 0, 1, '2019-09-05 21:52:39', 759),
(299, 101, 8, 'LIL', 72, 232, 343, '2019-09-08', '00:45:00', 'eww', 0, 1, '2019-09-05 21:52:43', 759),
(300, 100, 5, 'LIL', 48, 343, 345, '2019-09-08', '09:00:00', 'ert', 0, 1, '2019-09-05 21:52:47', 759),
(301, 101, 8, 'LIL', 48, 232, 343, '2019-09-08', '00:45:00', 'eww', 0, 1, '2019-09-05 21:52:51', 759),
(302, 100, 5, 'LIL', 24, 343, 345, '2019-09-08', '09:00:00', 'ert', 0, 1, '2019-09-05 21:52:54', 759),
(303, 101, 8, 'LIL', 24, 232, 343, '2019-09-08', '00:45:00', 'eww', 0, 1, '2019-09-05 21:52:58', 759),
(304, 102, 16, 'SIM', 72, 34, 454, '2019-09-08', '09:00:00', 'ere', 0, 1, '2019-09-05 21:54:16', 866),
(305, 103, 9, 'SIM', 72, 343, 342, '2019-09-07', '00:30:00', 'ere', 0, 1, '2019-09-05 21:54:20', 866),
(306, 104, 16, 'SIM', 72, 232, 323, '2019-09-07', '06:45:00', '4klk', 0, 1, '2019-09-05 21:54:25', 866),
(307, 102, 16, 'SIM', 48, 34, 454, '2019-09-08', '09:00:00', 'ere', 0, 1, '2019-09-05 21:54:28', 866),
(308, 103, 9, 'SIM', 48, 343, 342, '2019-09-07', '00:30:00', 'ere', 0, 1, '2019-09-05 21:54:32', 866),
(309, 104, 16, 'SIM', 48, 232, 323, '2019-09-07', '06:45:00', '4klk', 0, 1, '2019-09-05 21:54:35', 866),
(310, 102, 16, 'SIM', 24, 34, 454, '2019-09-08', '09:00:00', 'ere', 0, 1, '2019-09-05 21:54:40', 866),
(311, 103, 9, 'SIM', 24, 343, 342, '2019-09-07', '00:30:00', 'ere', 0, 1, '2019-09-05 21:54:43', 866),
(312, 104, 16, 'SIM', 24, 232, 323, '2019-09-07', '06:45:00', '4klk', 0, 1, '2019-09-05 21:54:46', 866),
(313, 106, 12, 'MSC', 72, 234, 123, '2019-09-09', '09:00:00', 'test1', 0, 1, '2019-09-06 21:13:10', 695),
(314, 106, 12, 'MSC', 48, 234, 123, '2019-09-09', '09:00:00', 'test1', 0, 1, '2019-09-06 21:13:16', 695),
(315, 106, 12, 'MSC', 24, 234, 123, '2019-09-09', '09:00:00', 'test1', 0, 1, '2019-09-06 21:13:20', 695),
(316, 107, 5, 'LIL', 72, 230, 340, '2019-09-09', '10:00:00', 'test2', 0, 1, '2019-09-06 21:14:39', 759),
(317, 107, 5, 'LIL', 48, 230, 340, '2019-09-09', '10:00:00', 'test2', 0, 1, '2019-09-06 21:14:43', 759),
(318, 107, 5, 'LIL', 24, 230, 340, '2019-09-09', '10:00:00', 'test2', 0, 1, '2019-09-06 21:14:48', 759),
(319, 108, 14, 'COC', 72, 400, 565, '2019-09-09', '11:00:00', 'test3', 0, 1, '2019-09-06 21:15:45', 738),
(320, 108, 14, 'COC', 48, 400, 565, '2019-09-09', '11:00:00', 'test3', 0, 1, '2019-09-06 21:15:49', 738),
(321, 108, 14, 'COC', 24, 400, 565, '2019-09-09', '11:00:00', 'test3', 0, 1, '2019-09-06 21:15:53', 738),
(322, 105, 11, 'MSC', 72, 234, 453, '2019-09-07', '00:30:00', 'wrwr', 0, 1, '2019-09-07 00:05:29', 695),
(323, 105, 11, 'MSC', 48, 234, 453, '2019-09-07', '00:30:00', 'wrwr', 0, 1, '2019-09-07 00:05:33', 695),
(324, 105, 11, 'MSC', 24, 234, 453, '2019-09-07', '00:30:00', 'wrwr', 0, 1, '2019-09-07 00:07:33', 695),
(325, 109, 11, 'MSC', 72, 342, 345, '2019-09-09', '09:00:00', 're', 0, 1, '2019-09-07 23:55:39', 695),
(326, 109, 11, 'MSC', 48, 342, 345, '2019-09-09', '09:00:00', 're', 0, 1, '2019-09-07 23:55:44', 695),
(327, 109, 11, 'MSC', 24, 342, 345, '2019-09-09', '09:00:00', 're', 0, 1, '2019-09-07 23:55:47', 695),
(328, 110, 8, 'LIL', 72, 345, 756, '2019-09-09', '09:00:00', 'dfgd', 0, 1, '2019-09-07 23:56:53', 759),
(329, 110, 8, 'LIL', 48, 345, 756, '2019-09-09', '09:00:00', 'dfgd', 0, 1, '2019-09-07 23:56:57', 759),
(330, 110, 8, 'LIL', 24, 345, 756, '2019-09-09', '09:00:00', 'dfgd', 0, 1, '2019-09-07 23:57:01', 759);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_vessel_berthing_allocation_reschedule`
--

CREATE TABLE `wtyqf_slpa_vessel_berthing_allocation_reschedule` (
  `vessel_berthing_reschedule_id` int(11) NOT NULL,
  `schedule_automaic_id` int(11) NOT NULL,
  `slot_id` int(11) DEFAULT NULL,
  `vessel_id` int(11) DEFAULT NULL,
  `vessel_arrival_id` int(11) DEFAULT NULL,
  `schedule_date` date DEFAULT NULL,
  `date_vessel_arrival` date DEFAULT NULL,
  `time_vessel_arrival` time DEFAULT NULL,
  `date_vessel_berthing` date DEFAULT NULL,
  `time_vessel_berthing` time DEFAULT NULL,
  `no_of_cranes` int(11) NOT NULL,
  `finish_date` date DEFAULT NULL,
  `finish_time` time DEFAULT NULL,
  `allocated_total_time` int(11) DEFAULT NULL COMMENT 'time in minutes',
  `allocated_time_loading` int(11) DEFAULT NULL COMMENT 'time in minutes',
  `allocated_time_discharging` int(11) DEFAULT NULL COMMENT 'time in minutes',
  `reserved_time` int(11) DEFAULT NULL COMMENT 'time gap when select next berthing time',
  `is_berthing_same_day` varchar(10) DEFAULT NULL,
  `remarks` text,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_vessel_berthing_allocation_reschedule`
--

INSERT INTO `wtyqf_slpa_vessel_berthing_allocation_reschedule` (`vessel_berthing_reschedule_id`, `schedule_automaic_id`, `slot_id`, `vessel_id`, `vessel_arrival_id`, `schedule_date`, `date_vessel_arrival`, `time_vessel_arrival`, `date_vessel_berthing`, `time_vessel_berthing`, `no_of_cranes`, `finish_date`, `finish_time`, `allocated_total_time`, `allocated_time_loading`, `allocated_time_discharging`, `reserved_time`, `is_berthing_same_day`, `remarks`, `created_date`, `state`, `user_id`) VALUES
(1, 105, 1, 12, 106, '2019-09-09', '2019-09-09', '09:00:00', '2019-09-09', '11:00:00', 3, '2019-09-09', '16:58:00', 714, 246, 468, 120, 'N', 'test', '2019-09-08 00:00:00', 1, 900),
(2, 109, 1, 8, 110, '2019-09-09', '2019-09-09', '09:00:00', '2019-09-09', '18:58:00', 3, '2019-09-10', '07:12:00', 2202, 1512, 690, 120, 'N', 'test', '2019-09-08 05:28:16', 1, 900),
(3, 106, 3, 5, 107, '2019-09-09', '2019-09-09', '10:00:00', '2019-09-09', '12:00:00', 3, '2019-09-09', '18:20:00', 1140, 680, 460, 120, 'N', '', '2019-09-08 05:30:43', 1, 900);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_vessel_berthing_allocation_slot_info`
--

CREATE TABLE `wtyqf_slpa_vessel_berthing_allocation_slot_info` (
  `vessel_berthing_allocation_id` int(11) NOT NULL,
  `schedule_automaic_id` int(11) NOT NULL,
  `slot_id` int(11) DEFAULT NULL,
  `vessel_id` int(11) DEFAULT NULL,
  `vessel_arrival_id` int(11) DEFAULT NULL,
  `schedule_date` date DEFAULT NULL,
  `date_vessel_arrival` date DEFAULT NULL,
  `time_vessel_arrival` time DEFAULT NULL,
  `date_vessel_berthing` date DEFAULT NULL,
  `time_vessel_berthing` time DEFAULT NULL,
  `no_of_cranes` int(11) NOT NULL,
  `finish_date` date DEFAULT NULL,
  `finish_time` time DEFAULT NULL,
  `allocated_total_time` int(11) DEFAULT NULL COMMENT 'time in minutes',
  `allocated_time_loading` int(11) DEFAULT NULL COMMENT 'time in minutes',
  `allocated_time_discharging` int(11) DEFAULT NULL COMMENT 'time in minutes',
  `reserved_time` int(11) DEFAULT NULL COMMENT 'time gap when select next berthing time',
  `is_berthing_same_day` varchar(10) DEFAULT NULL,
  `remarks` text,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_vessel_berthing_allocation_slot_info`
--

INSERT INTO `wtyqf_slpa_vessel_berthing_allocation_slot_info` (`vessel_berthing_allocation_id`, `schedule_automaic_id`, `slot_id`, `vessel_id`, `vessel_arrival_id`, `schedule_date`, `date_vessel_arrival`, `time_vessel_arrival`, `date_vessel_berthing`, `time_vessel_berthing`, `no_of_cranes`, `finish_date`, `finish_time`, `allocated_total_time`, `allocated_time_loading`, `allocated_time_discharging`, `reserved_time`, `is_berthing_same_day`, `remarks`, `created_date`, `state`, `user_id`) VALUES
(1, 1, 1, 12, 20, '2019-01-01', '2019-01-01', '12:00:00', '2019-01-01', '14:00:00', 3, '2019-01-01', '17:57:00', 710, 244, 466, 120, 'N', '', '2019-09-07 13:45:50', 1, 663),
(2, 2, 3, 5, 38, '2019-01-01', '2019-01-01', '09:00:00', '2019-01-01', '11:00:00', 4, '2019-01-01', '13:45:00', 660, 240, 420, 120, 'N', '', '2019-09-07 13:45:50', 1, 663),
(3, 3, 4, 11, 42, '2019-01-01', '2019-01-01', '09:00:00', '2019-01-01', '11:00:00', 4, '2019-01-01', '15:50:00', 1158, 690, 468, 120, 'N', '', '2019-09-07 13:45:50', 1, 663),
(4, 4, 2, 16, 43, '2019-01-01', '2019-01-01', '09:00:00', '2019-01-01', '11:00:00', 3, '2019-01-01', '19:40:00', 1560, 1092, 468, 120, 'N', '', '2019-09-07 13:45:50', 1, 663),
(5, 5, 3, 3, 44, '2019-01-01', '2019-01-01', '09:00:00', '2019-01-01', '15:45:00', 4, '2019-01-01', '21:41:00', 1424, 1356, 68, 120, 'N', '', '2019-09-07 13:45:50', 1, 663),
(6, 6, 4, 9, 75, '2019-01-01', '2019-01-01', '09:00:00', '2019-01-01', '17:50:00', 4, '2019-01-02', '01:20:00', 1800, 1796, 4, 120, 'N', '', '2019-09-07 13:45:50', 1, 663),
(7, 7, 2, 14, 76, '2019-01-01', '2019-01-01', '09:00:00', '2019-01-01', '21:40:00', 3, '2019-01-02', '05:18:00', 1374, 906, 468, 120, 'N', '', '2019-09-07 13:45:50', 1, 663),
(8, 8, 3, 4, 77, '2019-01-01', '2019-01-01', '09:00:00', '2019-01-01', '23:41:00', 4, '2019-01-02', '07:11:00', 1798, 706, 1092, 120, 'N', '', '2019-09-07 13:45:50', 1, 663),
(9, 9, 1, 7, 78, '2019-01-01', '2019-01-01', '12:15:00', '2019-01-01', '19:57:00', 3, '2019-01-02', '08:36:00', 2278, 1350, 928, 120, 'N', '', '2019-09-07 13:45:50', 1, 663),
(10, 10, 1, 8, 39, '2019-01-02', '2019-01-02', '12:00:00', '2019-01-02', '14:00:00', 3, '2019-01-02', '18:57:00', 890, 644, 246, 120, 'N', '', '2019-09-07 13:48:41', 1, 900),
(11, 11, 3, 12, 40, '2019-01-02', '2019-01-02', '09:00:00', '2019-01-02', '11:00:00', 4, '2019-01-02', '17:40:00', 1598, 910, 688, 120, 'N', '', '2019-09-07 13:48:41', 1, 900),
(12, 12, 2, 14, 41, '2019-01-02', '2019-01-02', '09:00:00', '2019-01-02', '11:00:00', 3, '2019-01-02', '17:19:00', 1138, 1092, 46, 120, 'N', '', '2019-09-07 13:48:41', 1, 900),
(13, 13, 4, 11, 47, '2019-01-02', '2019-01-02', '14:30:00', '2019-01-02', '16:30:00', 4, '2019-01-02', '20:35:00', 980, 912, 68, 120, 'N', '', '2019-09-07 13:48:41', 1, 900),
(14, 14, 3, 3, 46, '2019-01-02', '2019-01-02', '12:30:00', '2019-01-02', '19:40:00', 4, '2019-01-02', '23:45:00', 980, 912, 68, 120, 'N', '', '2019-09-07 13:48:42', 1, 900),
(15, 15, 2, 4, 45, '2019-01-02', '2019-01-02', '09:00:00', '2019-01-02', '19:19:00', 3, '2019-01-03', '00:46:00', 980, 912, 68, 120, 'N', '', '2019-09-07 13:48:42', 1, 900),
(16, 16, 1, 8, 25, '2019-01-07', '2019-01-07', '02:00:00', '2019-01-07', '04:00:00', 3, '2019-01-07', '07:35:00', 644, 244, 400, 120, 'N', '', '2019-09-07 13:48:51', 1, 900),
(17, 17, 1, 5, 26, '2019-01-29', '2019-01-29', '04:00:00', '2019-01-29', '06:00:00', 3, '2019-01-29', '12:11:00', 1112, 866, 246, 120, 'N', '', '2019-09-07 13:48:56', 1, 900),
(18, 18, 3, 11, 22, '2019-02-17', '2019-02-17', '12:00:00', '2019-02-17', '14:00:00', 4, '2019-02-17', '21:19:00', 1754, 688, 1066, 120, 'N', '', '2019-09-07 13:49:02', 1, 900),
(19, 19, 2, 4, 21, '2019-03-12', '2019-03-12', '03:00:00', '2019-03-12', '05:00:00', 3, '2019-03-12', '11:32:00', 1176, 400, 776, 120, 'N', '', '2019-09-07 13:49:08', 1, 900),
(20, 20, 1, 8, 27, '2019-03-19', '2019-03-19', '04:00:00', '2019-03-19', '06:00:00', 3, '2019-03-19', '15:45:00', 1754, 888, 866, 120, 'N', '', '2019-09-07 13:49:14', 1, 900),
(21, 21, 1, 7, 23, '2019-03-20', '2019-03-20', '12:00:00', '2019-03-20', '14:00:00', 3, '2019-03-20', '20:09:00', 1108, 664, 444, 120, 'N', '', '2019-09-07 13:49:27', 1, 900),
(22, 22, 3, 3, 24, '2019-04-08', '2019-04-08', '05:00:00', '2019-04-08', '07:00:00', 4, '2019-04-08', '18:01:00', 2642, 1510, 1132, 120, 'N', '', '2019-09-07 13:49:33', 1, 900),
(23, 23, 1, 8, 1, '2019-04-29', '2019-04-29', '18:00:00', '2019-04-29', '20:00:00', 3, '2019-04-30', '04:50:00', 1590, 1170, 420, 120, 'N', '', '2019-09-07 13:49:47', 1, 900),
(24, 24, 1, 1, 2, '2019-05-01', '2019-05-01', '00:00:00', '2019-05-01', '02:00:00', 3, '2019-05-01', '04:42:00', 486, 486, 0, 120, 'N', '', '2019-09-07 13:49:58', 1, 900),
(25, 25, 3, 3, 3, '2019-05-01', '2019-05-01', '16:30:00', '2019-05-01', '18:30:00', 4, '2019-05-02', '21:00:00', 6360, 3060, 3300, 120, 'N', '', '2019-09-07 13:49:58', 1, 900),
(26, 26, 2, 19, 13, '2019-05-01', '2019-05-01', '00:00:00', '2019-05-01', '02:00:00', 3, '2019-05-01', '08:11:00', 1112, 700, 412, 120, 'N', '', '2019-09-07 13:49:58', 1, 900),
(27, 27, 2, 4, 68, '2019-05-01', '2019-05-01', '09:00:00', '2019-05-01', '11:00:00', 3, '2019-05-01', '22:05:00', 1996, 1130, 866, 120, 'N', '', '2019-09-07 13:49:58', 1, 900),
(28, 28, 2, 4, 4, '2019-05-02', '2019-05-02', '05:00:00', '2019-05-02', '07:00:00', 3, '2019-05-03', '08:27:00', 4580, 1200, 3380, 120, 'N', '', '2019-09-07 13:50:03', 1, 900),
(29, 29, 1, 13, 6, '2019-05-02', '2019-05-02', '00:00:00', '2019-05-02', '02:00:00', 3, '2019-05-02', '06:27:00', 800, 800, 0, 120, 'N', '', '2019-09-07 13:50:03', 1, 900),
(30, 30, 4, 14, 7, '2019-05-02', '2019-05-02', '20:00:00', '2019-05-02', '22:00:00', 4, '2019-05-02', '23:22:00', 328, 170, 158, 120, 'N', '', '2019-09-07 13:50:03', 1, 900),
(31, 31, 1, 12, 5, '2019-05-02', '2019-05-02', '07:00:00', '2019-05-02', '09:00:00', 3, '2019-05-02', '09:02:00', 2, 0, 2, 120, 'N', '', '2019-09-07 13:50:03', 1, 900),
(32, 32, 1, 2, 9, '2019-05-02', '2019-05-02', '00:00:00', '2019-05-02', '11:02:00', 3, '2019-05-02', '18:15:00', 1300, 1300, 0, 120, 'N', '', '2019-09-07 13:50:03', 1, 900),
(33, 33, 1, 15, 8, '2019-05-03', '2019-05-03', '01:00:00', '2019-05-03', '03:00:00', 3, '2019-05-03', '12:30:00', 1710, 910, 800, 120, 'N', '', '2019-09-07 13:50:08', 1, 900),
(34, 34, 1, 17, 11, '2019-05-03', '2019-05-03', '14:00:00', '2019-05-03', '16:00:00', 3, '2019-05-04', '02:58:00', 1974, 730, 1244, 120, 'N', '', '2019-09-07 13:50:08', 1, 900),
(35, 35, 3, 16, 10, '2019-05-03', '2019-05-03', '24:00:00', '2019-05-04', '02:00:00', 4, '2019-05-04', '14:05:00', 2900, 1600, 1300, 120, 'N', '', '2019-09-07 13:50:09', 1, 900),
(36, 36, 2, 18, 12, '2019-05-03', '2019-05-03', '21:00:00', '2019-05-03', '23:00:00', 3, '2019-05-04', '04:10:00', 930, 530, 400, 120, 'N', '', '2019-09-07 13:50:09', 1, 900),
(37, 37, 4, 20, 14, '2019-05-04', '2019-05-04', '10:00:00', '2019-05-04', '12:00:00', 4, '2019-05-05', '13:00:00', 6000, 4000, 2000, 120, 'N', '', '2019-09-07 13:50:15', 1, 900),
(38, 38, 2, 21, 15, '2019-05-04', '2019-05-04', '06:30:00', '2019-05-04', '08:30:00', 3, '2019-05-05', '10:03:00', 4600, 4600, 0, 120, 'N', '', '2019-09-07 13:50:15', 1, 900),
(39, 39, 3, 22, 16, '2019-05-06', '2019-05-06', '24:59:00', '2019-05-07', '02:59:00', 4, '2019-05-07', '04:04:00', 260, 260, 0, 120, 'N', '', '2019-09-07 13:50:21', 1, 900),
(40, 40, 1, 12, 48, '2019-06-04', '2019-06-04', '09:00:00', '2019-06-04', '11:00:00', 3, '2019-06-04', '17:26:00', 1158, 690, 468, 120, 'N', '', '2019-09-07 13:50:27', 1, 900),
(41, 41, 3, 11, 50, '2019-06-06', '2019-06-06', '14:00:00', '2019-06-06', '16:00:00', 4, '2019-06-06', '20:50:00', 1158, 690, 468, 120, 'N', '', '2019-09-07 13:50:32', 1, 900),
(42, 42, 1, 7, 49, '2019-06-06', '2019-06-06', '13:00:00', '2019-06-06', '15:00:00', 3, '2019-06-06', '21:26:00', 1158, 690, 468, 120, 'N', '', '2019-09-07 13:50:32', 1, 900),
(43, 43, 1, 12, 17, '2019-07-01', '2019-07-01', '12:00:00', '2019-07-01', '14:00:00', 3, '2019-07-01', '18:03:00', 730, 246, 484, 120, 'N', '', '2019-09-07 13:50:37', 1, 900),
(44, 44, 3, 3, 19, '2019-07-02', '2019-07-02', '12:59:00', '2019-07-02', '14:59:00', 4, '2019-07-02', '18:13:00', 776, 68, 708, 120, 'N', '', '2019-09-07 13:50:43', 1, 900),
(45, 45, 1, 7, 18, '2019-07-07', '2019-07-07', '23:00:00', '2019-07-08', '01:00:00', 3, '2019-07-08', '05:05:00', 734, 686, 48, 120, 'N', '', '2019-09-07 13:50:48', 1, 900),
(46, 46, 3, 12, 28, '2019-07-08', '2019-07-08', '03:00:00', '2019-07-08', '05:00:00', 4, '2019-07-08', '10:00:00', 1200, 400, 800, 120, 'N', '', '2019-09-07 13:50:54', 1, 900),
(47, 47, 2, 4, 29, '2019-07-08', '2019-07-08', '09:00:00', '2019-07-08', '11:00:00', 3, '2019-07-08', '16:33:00', 1000, 600, 400, 120, 'N', '', '2019-09-07 13:50:54', 1, 900),
(48, 48, 1, 12, 30, '2019-07-09', '2019-07-09', '09:00:00', '2019-07-09', '11:00:00', 3, '2019-07-09', '13:13:00', 400, 200, 200, 120, 'N', '', '2019-09-07 13:51:00', 1, 900),
(49, 49, 2, 4, 31, '2019-07-09', '2019-07-09', '09:00:00', '2019-07-09', '11:00:00', 3, '2019-07-09', '16:33:00', 1000, 400, 600, 120, 'N', '', '2019-09-07 13:51:00', 1, 900),
(50, 50, 3, 7, 32, '2019-07-09', '2019-07-09', '09:00:00', '2019-07-09', '11:00:00', 4, '2019-07-09', '13:30:00', 600, 400, 200, 120, 'N', '', '2019-09-07 13:51:00', 1, 900),
(51, 51, 4, 3, 33, '2019-07-09', '2019-07-09', '09:00:00', '2019-07-09', '11:00:00', 4, '2019-07-09', '14:20:00', 800, 600, 200, 120, 'N', '', '2019-09-07 13:51:00', 1, 900),
(52, 52, 3, 11, 34, '2019-07-09', '2019-07-09', '09:00:00', '2019-07-09', '15:30:00', 4, '2019-07-09', '16:58:00', 350, 150, 200, 120, 'N', '', '2019-09-07 13:51:00', 1, 900),
(53, 53, 2, 4, 67, '2019-07-18', '2019-07-18', '12:30:00', '2019-07-18', '14:30:00', 3, '2019-07-18', '15:45:00', 224, 134, 90, 120, 'N', '', '2019-09-07 13:51:05', 1, 900),
(54, 54, 1, 7, 66, '2019-07-24', '2019-07-24', '09:00:00', '2019-07-24', '11:00:00', 3, '2019-07-24', '12:07:00', 202, 112, 90, 120, 'N', '', '2019-09-07 13:51:09', 1, 900),
(55, 55, 3, 11, 51, '2019-08-01', '2019-08-01', '12:30:00', '2019-08-01', '14:30:00', 4, '2019-08-01', '17:28:00', 712, 244, 468, 120, 'N', '', '2019-09-07 13:51:14', 1, 900),
(56, 56, 1, 12, 52, '2019-08-01', '2019-08-01', '12:30:00', '2019-08-01', '14:30:00', 3, '2019-08-01', '20:56:00', 1158, 690, 468, 120, 'N', '', '2019-09-07 13:51:14', 1, 900),
(57, 57, 4, 11, 51, '2019-08-01', '2019-08-01', '14:00:00', '2019-08-01', '16:00:00', 4, '2019-08-01', '20:50:00', 1158, 690, 468, 120, 'N', '', '2019-09-07 13:51:14', 1, 900),
(58, 58, 1, 12, 65, '2019-08-15', '2019-08-15', '09:00:00', '2019-08-15', '11:00:00', 3, '2019-08-15', '16:12:00', 936, 690, 246, 120, 'N', '', '2019-09-07 13:51:19', 1, 900),
(59, 59, 1, 7, 36, '2019-08-25', '2019-08-25', '23:59:00', '2019-08-26', '01:59:00', 3, '2019-08-26', '03:27:00', 264, 134, 130, 120, 'N', '', '2019-09-07 13:51:24', 1, 900),
(60, 60, 3, 7, 36, '2019-08-25', '2019-08-25', '22:46:00', '2019-08-26', '00:46:00', 4, '2019-08-26', '01:26:00', 158, 90, 68, 120, 'N', '', '2019-09-07 13:51:24', 1, 900),
(61, 61, 2, 12, 35, '2019-08-25', '2019-08-25', '11:59:00', '2019-08-25', '13:59:00', 3, '2019-08-25', '20:32:00', 1178, 400, 778, 120, 'N', '', '2019-09-07 13:51:24', 1, 900),
(62, 62, 1, 12, 64, '2019-08-27', '2019-08-27', '09:00:00', '2019-08-27', '11:00:00', 3, '2019-08-27', '11:05:00', 14, 6, 8, 120, 'N', '', '2019-09-07 13:51:30', 1, 900),
(63, 63, 2, 4, 62, '2019-08-31', '2019-08-31', '09:00:00', '2019-08-31', '11:00:00', 3, '2019-08-31', '11:53:00', 158, 68, 90, 120, 'N', '', '2019-09-07 13:51:35', 1, 900),
(64, 64, 3, 3, 56, '2019-09-01', '2019-09-01', '05:00:00', '2019-09-01', '07:00:00', 4, '2019-09-01', '09:58:00', 712, 244, 468, 120, 'N', '', '2019-09-07 13:51:43', 1, 900),
(65, 65, 2, 4, 55, '2019-09-01', '2019-09-01', '05:00:00', '2019-09-01', '07:00:00', 3, '2019-09-01', '10:57:00', 712, 244, 468, 120, 'N', '', '2019-09-07 13:51:44', 1, 900),
(66, 66, 1, 12, 54, '2019-09-01', '2019-09-01', '01:30:00', '2019-09-01', '03:30:00', 3, '2019-09-01', '07:27:00', 712, 244, 468, 120, 'N', '', '2019-09-07 13:51:44', 1, 900),
(67, 67, 1, 8, 59, '2019-09-01', '2019-09-01', '09:00:00', '2019-09-01', '11:00:00', 3, '2019-09-01', '17:26:00', 1158, 690, 468, 120, 'N', '', '2019-09-07 13:51:44', 1, 900),
(68, 68, 4, 5, 58, '2019-09-01', '2019-09-01', '09:00:00', '2019-09-01', '11:00:00', 4, '2019-09-01', '15:50:00', 1158, 690, 468, 120, 'N', '', '2019-09-07 13:51:44', 1, 900),
(69, 69, 3, 14, 60, '2019-09-01', '2019-09-01', '09:00:00', '2019-09-01', '11:58:00', 4, '2019-09-01', '15:02:00', 736, 690, 46, 120, 'N', '', '2019-09-07 13:51:44', 1, 900),
(70, 70, 1, 12, 63, '2019-09-02', '2019-09-02', '09:00:00', '2019-09-02', '11:00:00', 3, '2019-09-02', '14:47:00', 680, 600, 80, 120, 'N', '', '2019-09-07 13:51:49', 1, 900),
(71, 71, 3, 5, 69, '2019-09-02', '2019-09-02', '12:15:00', '2019-09-02', '14:15:00', 4, '2019-09-02', '20:05:00', 1398, 912, 486, 120, 'N', '', '2019-09-07 13:51:49', 1, 900),
(72, 72, 2, 8, 70, '2019-09-02', '2019-09-02', '00:00:00', '2019-09-02', '02:00:00', 3, '2019-09-02', '14:12:00', 2196, 1728, 468, 120, 'N', '', '2019-09-07 13:51:49', 1, 900),
(73, 73, 4, 14, 71, '2019-09-02', '2019-09-02', '09:00:00', '2019-09-02', '11:00:00', 4, '2019-09-02', '17:41:00', 1602, 912, 690, 120, 'N', '', '2019-09-07 13:51:49', 1, 900),
(74, 74, 2, 16, 72, '2019-09-02', '2019-09-02', '03:45:00', '2019-09-02', '16:12:00', 3, '2019-09-03', '04:48:00', 2268, 912, 1356, 120, 'N', '', '2019-09-07 13:51:49', 1, 900),
(75, 75, 4, 4, 81, '2019-09-02', '2019-09-02', '09:00:00', '2019-09-02', '19:41:00', 4, '2019-09-03', '01:26:00', 1380, 690, 690, 120, 'N', '', '2019-09-07 13:51:49', 1, 900),
(76, 76, 1, 7, 82, '2019-09-02', '2019-09-02', '06:30:00', '2019-09-02', '16:47:00', 3, '2019-09-02', '23:19:00', 1176, 1130, 46, 120, 'N', '', '2019-09-07 13:51:49', 1, 900),
(77, 77, 3, 3, 83, '2019-09-02', '2019-09-02', '07:00:00', '2019-09-02', '22:05:00', 4, '2019-09-03', '03:49:00', 1374, 468, 906, 120, 'N', '', '2019-09-07 13:51:49', 1, 900),
(78, 78, 3, 11, 57, '2019-09-03', '2019-09-03', '05:00:00', '2019-09-03', '07:00:00', 4, '2019-09-03', '09:58:00', 712, 244, 468, 120, 'N', '', '2019-09-07 13:51:58', 1, 900),
(79, 79, 4, 3, 84, '2019-09-03', '2019-09-03', '09:00:00', '2019-09-03', '11:00:00', 4, '2019-09-03', '20:17:00', 2226, 912, 1314, 120, 'N', '', '2019-09-07 13:51:58', 1, 900),
(80, 80, 1, 7, 86, '2019-09-03', '2019-09-03', '09:00:00', '2019-09-03', '11:00:00', 3, '2019-09-03', '17:55:00', 1244, 1152, 92, 120, 'N', '', '2019-09-07 13:51:58', 1, 900),
(81, 81, 2, 12, 85, '2019-09-03', '2019-09-03', '06:45:00', '2019-09-03', '08:45:00', 3, '2019-09-03', '20:06:00', 2042, 1130, 912, 120, 'N', '', '2019-09-07 13:51:58', 1, 900),
(82, 82, 1, 12, 61, '2019-09-04', '2019-09-04', '09:00:00', '2019-09-04', '11:00:00', 3, '2019-09-05', '03:18:00', 2934, 2466, 468, 120, 'N', '', '2019-09-07 13:52:12', 1, 900),
(83, 83, 2, 9, 73, '2019-09-04', '2019-09-04', '09:00:00', '2019-09-04', '11:00:00', 3, '2019-09-04', '19:44:00', 1572, 0, 1572, 120, 'N', '', '2019-09-07 13:52:12', 1, 900),
(84, 84, 3, 7, 88, '2019-09-04', '2019-09-04', '01:00:00', '2019-09-04', '03:00:00', 4, '2019-09-04', '08:46:00', 1382, 1314, 68, 120, 'N', '', '2019-09-07 13:52:12', 1, 900),
(85, 85, 4, 4, 87, '2019-09-04', '2019-09-04', '00:45:00', '2019-09-04', '02:45:00', 4, '2019-09-05', '13:10:00', 8258, 1352, 6906, 120, 'N', '', '2019-09-07 13:52:12', 1, 900),
(86, 86, 3, 3, 89, '2019-09-04', '2019-09-04', '00:45:00', '2019-09-04', '10:46:00', 4, '2019-09-04', '16:26:00', 1360, 1314, 46, 120, 'N', '', '2019-09-07 13:52:12', 1, 900),
(87, 87, 3, 3, 91, '2019-09-05', '2019-09-05', '01:15:00', '2019-09-05', '03:15:00', 4, '2019-09-05', '08:49:00', 1336, 1268, 68, 120, 'N', '', '2019-09-07 13:52:17', 1, 900),
(88, 88, 2, 4, 90, '2019-09-05', '2019-09-05', '00:15:00', '2019-09-05', '02:15:00', 3, '2019-09-05', '05:21:00', 558, 90, 468, 120, 'N', '', '2019-09-07 13:52:17', 1, 900),
(89, 89, 1, 7, 93, '2019-09-06', '2019-09-06', '00:45:00', '2019-09-06', '02:45:00', 3, '2019-09-06', '03:29:00', 132, 64, 68, 120, 'N', '', '2019-09-07 13:52:22', 1, 900),
(90, 90, 2, 4, 92, '2019-09-06', '2019-09-06', '09:00:00', '2019-09-06', '11:00:00', 3, '2019-09-06', '19:51:00', 1592, 906, 686, 120, 'N', '', '2019-09-07 13:52:22', 1, 900),
(91, 91, 3, 11, 94, '2019-09-06', '2019-09-06', '00:45:00', '2019-09-06', '02:45:00', 4, '2019-09-08', '08:49:00', 12976, 12908, 68, 120, 'N', '', '2019-09-07 13:52:22', 1, 900),
(92, 92, 1, 5, 79, '2019-09-07', '2019-09-07', '09:00:00', '2019-09-07', '11:00:00', 3, '2019-09-07', '16:16:00', 948, 464, 484, 120, 'N', '', '2019-09-07 13:52:26', 1, 900),
(93, 93, 2, 8, 80, '2019-09-07', '2019-09-07', '09:00:00', '2019-09-07', '11:00:00', 3, '2019-09-07', '18:40:00', 1380, 912, 468, 120, 'N', '', '2019-09-07 13:52:26', 1, 900),
(94, 94, 4, 4, 97, '2019-09-07', '2019-09-07', '01:30:00', '2019-09-07', '03:30:00', 4, '2019-09-07', '10:48:00', 1752, 178, 1574, 120, 'N', '', '2019-09-07 13:52:26', 1, 900),
(95, 95, 4, 12, 96, '2019-09-07', '2019-09-07', '00:45:00', '2019-09-07', '12:48:00', 4, '2019-09-07', '23:09:00', 2482, 1574, 908, 120, 'N', '', '2019-09-07 13:52:26', 1, 900),
(96, 96, 1, 7, 95, '2019-09-07', '2019-09-07', '09:00:00', '2019-09-07', '18:16:00', 3, '2019-09-07', '23:26:00', 930, 244, 686, 120, 'N', '', '2019-09-07 13:52:26', 1, 900),
(97, 97, 2, 9, 103, '2019-09-07', '2019-09-07', '00:30:00', '2019-09-07', '20:40:00', 3, '2019-09-08', '04:17:00', 1370, 684, 686, 120, 'N', '', '2019-09-07 13:52:26', 1, 900),
(98, 98, 4, 16, 104, '2019-09-07', '2019-09-07', '06:45:00', '2019-09-08', '01:09:00', 4, '2019-09-08', '05:47:00', 1110, 646, 464, 120, 'N', '', '2019-09-07 13:52:26', 1, 900),
(99, 99, 1, 7, 99, '2019-09-08', '2019-09-08', '01:45:00', '2019-09-08', '03:45:00', 3, '2019-09-08', '13:59:00', 1842, 1796, 46, 120, 'N', '', '2019-09-07 13:52:34', 1, 900),
(100, 100, 2, 4, 98, '2019-09-08', '2019-09-08', '06:45:00', '2019-09-08', '08:45:00', 3, '2019-09-08', '13:56:00', 932, 246, 686, 120, 'N', '', '2019-09-07 13:52:34', 1, 900),
(101, 101, 3, 5, 100, '2019-09-08', '2019-09-08', '09:00:00', '2019-09-08', '11:00:00', 4, '2019-09-08', '16:44:00', 1376, 690, 686, 120, 'N', '', '2019-09-07 13:52:34', 1, 900),
(102, 102, 4, 8, 101, '2019-09-08', '2019-09-08', '00:45:00', '2019-09-08', '07:47:00', 4, '2019-09-08', '12:35:00', 1150, 686, 464, 120, 'N', '', '2019-09-07 13:52:34', 1, 900),
(103, 103, 4, 16, 102, '2019-09-08', '2019-09-08', '09:00:00', '2019-09-08', '14:35:00', 4, '2019-09-08', '18:39:00', 976, 908, 68, 120, 'N', '', '2019-09-07 13:52:34', 1, 900),
(104, 104, 3, 11, 105, '2019-09-07', '2019-09-07', '00:30:00', '2019-09-08', '18:44:00', 4, '2019-09-09', '00:28:00', 1374, 906, 468, 120, 'N', '', '2019-09-07 17:39:36', 1, 663),
(105, 105, 1, 12, 106, '2019-09-09', '2019-09-09', '09:00:00', '2019-09-09', '11:00:00', 3, '2019-09-09', '14:58:00', 714, 246, 468, 120, 'N', '', '2019-09-08 05:15:52', 1, 900),
(106, 106, 3, 5, 107, '2019-09-09', '2019-09-09', '10:00:00', '2019-09-09', '12:00:00', 4, '2019-09-09', '16:45:00', 1140, 680, 460, 120, 'N', '', '2019-09-08 05:15:52', 1, 900),
(107, 107, 2, 14, 108, '2019-09-09', '2019-09-09', '11:00:00', '2019-09-09', '13:00:00', 3, '2019-09-09', '23:43:00', 1930, 1130, 800, 120, 'N', '', '2019-09-08 05:15:52', 1, 900),
(108, 108, 4, 11, 109, '2019-09-09', '2019-09-09', '09:00:00', '2019-09-09', '11:00:00', 4, '2019-09-09', '16:44:00', 1374, 690, 684, 120, 'N', '', '2019-09-08 05:27:21', 1, 900),
(109, 109, 1, 8, 110, '2019-09-09', '2019-09-09', '09:00:00', '2019-09-09', '16:58:00', 3, '2019-09-10', '05:12:00', 2202, 1512, 690, 120, 'N', '', '2019-09-08 05:27:21', 1, 900);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_tags`
--

CREATE TABLE `wtyqf_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_tags`
--

INSERT INTO `wtyqf_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 663, '2018-07-10 09:54:18', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_template_styles`
--

CREATE TABLE `wtyqf_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_template_styles`
--

INSERT INTO `wtyqf_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_ucm_base`
--

CREATE TABLE `wtyqf_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_ucm_content`
--

CREATE TABLE `wtyqf_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_ucm_history`
--

CREATE TABLE `wtyqf_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_ucm_history`
--

INSERT INTO `wtyqf_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 1, '', '2018-07-10 11:46:09', 663, 1749, '74495299c10f1e5271a0a43ab04706b0b361727c', '{\"id\":1,\"asset_id\":56,\"title\":\"admin\",\"alias\":\"admin\",\"introtext\":\"<p>admin<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-07-10 11:46:09\",\"created_by\":\"663\",\"created_by_alias\":\"\",\"modified\":\"2018-07-10 11:46:09\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-07-10 11:46:09\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(2, 1, 1, '', '2018-07-11 05:08:19', 663, 1774, 'eaf88f3fa554381e10ffc445b9c8f207a6002218', '{\"id\":1,\"asset_id\":\"56\",\"title\":\"admin\",\"alias\":\"admin\",\"introtext\":\"<p>admin panel<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-07-10 11:46:09\",\"created_by\":\"663\",\"created_by_alias\":\"\",\"modified\":\"2018-07-11 05:08:19\",\"modified_by\":\"663\",\"checked_out\":\"663\",\"checked_out_time\":\"2018-07-11 05:07:59\",\"publish_up\":\"2018-07-10 11:46:09\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_updates`
--

CREATE TABLE `wtyqf_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `wtyqf_updates`
--

INSERT INTO `wtyqf_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.9.11', '', 'https://update.joomla.org/core/sts/extension_sts.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_update_sites`
--

CREATE TABLE `wtyqf_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `wtyqf_update_sites`
--

INSERT INTO `wtyqf_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1568729739, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1567787177, '');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_update_sites_extensions`
--

CREATE TABLE `wtyqf_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `wtyqf_update_sites_extensions`
--

INSERT INTO `wtyqf_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_usergroups`
--

CREATE TABLE `wtyqf_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_usergroups`
--

INSERT INTO `wtyqf_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 10, 17, 'Registered'),
(3, 2, 11, 16, 'Vessel Planner'),
(4, 3, 12, 15, 'Shipping Agent'),
(5, 4, 13, 14, 'Berthing Planner'),
(6, 1, 2, 7, 'Duty Planner'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users'),
(9, 1, 8, 9, 'Guest'),
(10, 6, 5, 6, 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_users`
--

CREATE TABLE `wtyqf_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_users`
--

INSERT INTO `wtyqf_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(663, 'SUPER USER', 'ADMIN', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:19', '2019-09-08 02:03:34', '0', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(664, 'UNITED ARAB SHIPPING LINE', 'UAS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:19', '2019-01-10 09:54:19', '0', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(665, 'CHINA SHIPPING CONTAINER LINES CO L', 'CHS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:19', '2019-01-10 09:54:19', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(666, 'EMIRATES SHIPPING LINE', 'ERL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(667, 'PRO LINE', 'PL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(668, 'AMERICAN PRE. LINE', 'APL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:19', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(669, 'ORIENT SHIPPING CONTAINER LINE', 'OCL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(670, 'PACIFIC INTERNATIONAL Line', 'PIL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(671, 'Orient Overseas Line', 'OOL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(672, 'ZIM LINE', 'ZIM', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(673, 'MITSUI OSK LINE', 'MOL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(674, 'HAPAG LLOYD LINE', 'HLL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(675, 'ITLIA MARITIME S.P.A', 'LLT', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(676, 'YANG MING LINE', 'YML', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(677, 'WAN HAI LINE', 'WHL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(678, 'NYK LINE', 'NYK', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(679, 'ADVANCE CONTAINER LINE', 'ACL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(680, 'CHINA OCEAN SHIPPING LINE', 'COS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-05-08 08:44:40', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(681, 'CREDO SHIPPING PVT. LTD.,', 'CDO', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(682, 'SIRIPALA SHIPING PVT LTD', 'SRS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(683, 'OCEANWAY SHIPPING', 'OCS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(684, 'ISLAMIC REPUB. SHIPPING LINE', 'IRS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(685, 'INDUS CONTAINER LINES (GUJARAT)', 'ICL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(686, 'MISC BERHAD', 'MIC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(687, 'ORIENT SHIPPING SERVICES', 'OSS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(688, 'NEW GOLDEN SEA SHIPPING', 'CSE', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(689, 'ARINMA SHIPPING PTE LTD - SINGAPORE', 'AMS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(690, 'NAUTICAL SHIPPING LINE', 'NAU', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(691, 'NATIONAL SHIPPING CORP.SAUDI ARABIA', 'NSC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(692, 'P&O NED-LLOYD', 'PON', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(693, 'Hapaag Lloyd', 'HLC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(694, 'CAMP GEN. MARITIME', 'CGM', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(695, 'MEDITERAN SHIPPING CORP', 'MSC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-09-08 05:25:52', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(696, 'HYUNDAI MERCHANT MARINE', 'HMM', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(697, 'MALAYSIAN INTER SHIPPING LINE', 'MIS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(698, 'LAUREL NAVIGATION LTD.', 'LNL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(699, 'INTERASIA LINE SINGAPORE  PTE LTD.', 'IAS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(700, 'GLOBAL FEEDER SHIPPING LLC', 'GFS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(701, 'VICTOR SHIPS PVT. LTD.,', 'VSL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(702, 'AVANT SHIPPING LINE', 'ASL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(703, 'K. LINE', 'KLN', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(704, 'CMA CGM LANKA LTD', 'CLL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(705, 'DIAMOND SHIPPING SERVICES', 'DSS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(706, 'LSL Line', 'LSL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(707, 'AAL Line', 'AAL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(708, 'CLARION SHIPPING PVT LTD', 'CLR', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(709, 'EML Line', 'EML', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(710, 'SMU', 'SMU', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(711, 'SITARA LINE', 'SIT', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(712, 'FAL', 'FAL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(713, 'SRI LANKA SHIPPING', 'SLS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(714, 'SATSINDU LIMITED', 'SSD', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(715, 'gen line', 'GEN', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(716, 'Hanjin Shipping Company', 'HAN', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(717, 'CHO YANG LINE', 'CYL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(718, 'ROYAL MARINE LINE PTE LTD.', 'RML', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(719, 'PAN LLOYD LOGISTICS PVT LTD', 'PLY', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(720, 'R R SHIPPING PVT LTD.,', 'RRS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(721, 'SEA IMPEX SRI', 'SIX', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(722, 'UNITED AFRICA FEEDER LINE', 'UAL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(723, 'ORIENT EXPRESS LINES - SINGAPORE', 'OES', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(724, 'PENDULUM EXPRESS LINES', 'PXL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(725, 'FEEDERTECH PTE LTD.', 'FTH', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(726, 'SENATOR LINE GMBH', 'SEN', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(727, 'CSAV LINE', 'CSV', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(728, 'WALLNIUS WILHELMSEN LI', 'WIL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(729, 'EVERGREEN MARIEN CO.', 'EMC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-05-08 08:56:35', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(730, 'MALSHIP CEYLON LTD', 'MAL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(731, 'CAMP MARITIME AGENCY', 'CMA', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(732, 'ST JOHN LINE', 'SJM', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(733, 'DUMMY LINE', 'DUM', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(734, 'O.T.IDEAAL', 'OTI', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(735, 'HATSU MARINE  CO-ORPERATION LTD', 'HML', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(736, 'AUSTRALIAN NATIONAL LINE SGP PTE', 'ANS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(737, 'AAL', 'A', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(738, 'CHINA OCEAN SHIPPING CO.', 'COC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-09-07 14:46:03', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(739, 'AQUARIUS NAVIGATION LINE', 'AQL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(740, 'BEN LINE AGENCIES', 'BEN', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(741, 'BALAJI LINE', 'BJI', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(742, 'BENGAL TIGER LINE', 'BTL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(743, 'colombo shipping line', 'CBS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(744, 'CEYLON SHIPPING CORPORATION', 'CSC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(745, 'CHINA SHIPPING CONT. LINES', 'CSH', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(746, 'CEYLON SHIPPING LINES', 'CSL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(747, 'FAR SHIPPING SINGAPORE ( PVT ) LTD', 'FAR', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-05-08 08:26:50', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(748, 'FAR SHIPPING LINES', 'FSL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(749, 'GATI COAST TO COAST LINE', 'GAT', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(750, 'GOLD STAR LINE', 'GSL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(751, 'HULL & HATCH LINE', 'HNH', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(752, 'HRC LINE', 'HRC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(753, 'HAMBURG SUD', 'HSD', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(754, 'HUB LINE AGENCIES LTD', 'HUB', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(755, 'INDO ARAB LINE', 'IAL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(756, 'INTERG CNTR FEEDER SVC.', 'ICF', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(757, 'IRANO HIND LINE', 'IRH', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(758, 'MAXICON SHIPPING LINE', 'MAX', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(759, 'LILY LINE', 'LIL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-09-08 05:27:03', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(760, 'METRO INTERNATIONAL ASIA PVT LTD', 'MIA', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(761, 'GREAT EASTERN CONTAINER LINE', 'MIL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(762, 'OCEAN LANKA SERVICES PVT LTD', 'OLS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-05-08 08:35:51', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(763, 'ORIENT OVERSEAS CONTAINER LINE', 'OOC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(764, 'MILAHA MARITIME & LOGISTICS', 'MML', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(765, 'OYSTER SHIPPING LINE(UK) LTD.', 'OST', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(766, 'PULSAR SHIPPING AGENCIES LTD.', 'PUL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(767, 'prudential shipping line', 'PRD', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(768, 'SHIPPING CORP.OF INDIA', 'SCI', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(769, 'REGIONAL CONTAINER LINE', 'RCL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-05-02 05:08:57', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(770, 'BERJAYA ASIA SHIPPING', 'SAR', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(771, 'SAMUDERA SHIPPING LINE', 'SML', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(772, 'TS LINE', 'TSL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(773, 'ARC LINE', 'ARC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(774, 'BALTIC SHIPPING LLC', 'BLT', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(775, 'BUYER SHIPPING & TRADING', 'BST', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(776, 'CONCORD CONTAINER LINE', 'CCL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(777, 'COMPANIA CHILENA NAVIGATION', 'CCN', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(778, 'CENEP LINE', 'CEN', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(779, 'COSCO HEIGHT INTER.', 'CHI', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(780, 'C & LINE CO. LTD', 'CLC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(781, 'CHENG LIE NAVIGATION CO.', 'CNC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(782, 'CRONOS LINE', 'CRO', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(783, 'DAMANI LINE', 'DAM', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(784, 'ICON LINE', 'ICO', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(785, 'MAERSK SEALAND', 'MKL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(786, 'ORIENT EXPRESS LINE', 'OEL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-05-08 08:32:54', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(787, ' ORAM SHIPPING LINE', 'ORS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(788, 'Q C FEEDERS', 'QCF', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(789, 'SEA SERVICES PVT LTD.', 'SES', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(790, 'TRANS ASIA LINE', 'TAL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(791, 'AUSTRALIAN NATIONAL LINE', 'ANL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(792, 'BAY LINE', 'BLN', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(793, 'BANGLADESH SHIPPING CORP', 'BSC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(794, 'CEEKAY LINE', 'CEE', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(795, 'CONSOLITATED MARINE SER.', 'CMS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(796, 'DRAFT CARGO', 'DFT', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(797, 'EGYPTION NAVIGATION CO.', 'ENC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(798, 'E.P. CARRIERS PVT. SINGAPORE', 'EPC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(799, 'ETHIOPIAN SHIPPING LINE', 'ESL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(800, 'FORBES CONTAINER LINE', 'FRB', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(801, 'GLOBAL CONTAINER LINE', 'GCL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(802, 'GULF GATE SHIPPING LINE', 'GGS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(803, 'INTER PACIFIC SHIPPING LINE', 'IPS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(804, 'KOREAN MARI. TRANSPORT CO.', 'KMT', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(805, 'KUKBO EXPRESS INTER', 'KUK', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(806, 'LATIVIAN LINE', 'LAT', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(807, 'OPTIONAL', 'OPT', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(808, 'HANJIN SHIPPING', 'HJS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(809, 'PACC CONTAINER LINE', 'PAC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(810, 'MERIDEAN CONTAINER LINE', 'MCL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(811, 'NILE DUTCH AFRICAN LINE', 'NDA', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(812, 'VASCO LINE', 'VAS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(813, 'QCCL', 'QNL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(814, 'QCFL', 'QNF', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(815, 'MAC ANDREWS', 'MAC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(816, 'DELMAS LINE', 'DLM', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(817, 'ASIATIC SHIPPING SERVIES INC', 'AST', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(818, 'SILVER BROOKE', 'SLB', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(819, 'SOUTHERN SHIPPING LINE', 'SOT', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(820, 'PACIFIC LLOYD LINE', 'PLL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(821, 'TRANS AMERICAN LEASING CO', 'TAM', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(822, 'TRITON LEASIING CO', 'TTN', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(823, 'XTRA CONTAINER LEASING', 'XTR', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(824, 'NOR LANKA SHIPPING PVT LTD', 'PNC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(825, 'PERKINS SHIPPING LTD', 'PEK', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(826, 'QUADRANT CONTAINER LTD', 'QCL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(827, 'ORIENT EMPIRE LINE', 'OEM', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(828, 'STAR INT NAVIGATION SA', 'SIN', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(829, 'DEUTSCHE AFRIKALINIEN GMBH & CO', 'DAL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(830, 'WEST TRANS LINE', 'WET', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(831, 'STAR FEEDER LLC', 'SFR', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(832, 'SETH SHIPPING CORP', 'SET', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(833, 'SAMUDERA SHIPPING LINE NVO', 'SSL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(834, 'H & T CONTAINER LINE LANKA PVT LTD', 'HNT', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(835, 'LUCKY SEAWAY LINE', 'LUK', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(836, 'SEAWAYS SHI[PPING INDIA LTD', 'SWL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(837, 'MALDIVIAN NATIONL SHIPPING MG', 'MNS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(838, 'PAKISTAN NATIONAL SHIPPING LINE', 'PNS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(839, 'MARFET COMPANY AGENCIES MAR', 'MFL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(840, 'METRA LINE', 'MET', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(841, 'PRO LINE', 'PRO', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(842, 'MCC TRANSPORT', 'MCT', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(843, 'YUHFA LANKA SHIPPI TRADE PVT LTD.', 'YFL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(844, 'MALE EXPRESS LINE', 'MEL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(845, 'SACO LINE', 'SAC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(846, 'AXIS LINE', 'AXI', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(847, 'PENINSULAR SHIPPING LINE', 'PNN', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(848, 'MARINE INT AGENCIES PVT', 'MRI', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(849, 'OCTOMAR LINE', 'OCT', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(850, 'OCTOTRANA', 'OTR', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(851, 'STX PAN OCEAN', 'STX', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(852, 'STAR NAVIGATIONS SDN BHD', 'SNL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(853, 'CHRYSOBEL ASIA LINK', 'CAL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(854, 'ORNATE CONTAINER LINE', 'ONT', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(855, 'BPSC INTERNATIONAL', 'BPS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(856, 'CEYSERVE LINE', 'CEY', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(857, 'CONTSHIP LINE', 'CSA', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(858, 'MCLARENS SHIPPING', 'MSL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(859, 'BLPL SINGAPORE PTE. LTD.,', 'BLP', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(860, 'CONSOLIDATED SHIPPING LINE', 'CNS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(861, 'NORASIA SHIPPING SERVICES', 'NOR', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(862, 'SIRIPALA SHIPPING ( PVT ) LTD', 'SSP', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(863, 'OLDENDROFF CARRIERS(INDOTRANS)', 'OCI', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(864, 'TRANSWOLRD  FEEDERS FZCO', 'TWF', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-05-02 04:55:21', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(865, 'XPRESS CONTAINER LINE', 'XCL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-05-08 08:49:52', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(866, 'SIMATECH SHIPPINGLLC.', 'SIM', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-09-06 15:25:08', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(867, 'PACIFIC SHIPPING DMCEST', 'PSD', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(868, 'S M LINE CORPORATION', 'SMC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(869, 'MILAHA MARITIME AND LOGISTICS', 'MIM', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(870, 'HARBOUR-LINK LINES SDN,BHD', 'HLN', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(871, 'HC LINE MALE', 'HCL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(872, 'EVERGREEN MARINE (SINGAPORE)PTE LTD', 'EMS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(873, 'EAGLETAINER LOGISTICS PVT LTD.,', 'ETL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(874, 'SHANGHAI MINSHENG SHIPPING CO.LTD.,', 'MSS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(875, 'OCEAN NETWORK EXPRESS PTE. LTD.', 'ONE', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(876, 'REACH SHIPPING LINE.', 'RSL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(877, 'NEW ASIA ADADRIATIC EXPRESS SERVICE', 'AAX', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(878, 'BULKTAINER SHIPPING LTD.,', 'BLK', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(879, 'DAMCO LINE', 'DMC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(880, 'MARCONSULT SCHIFFAHRT (GMBH & CO.)', 'SLL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(881, 'JINDAL WATERWAYS LTD.', 'JWL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(882, 'INTER TRANSPORT', 'INT', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(883, 'FRIEGHT WORLD', 'FTW', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(884, 'ESSENTIAL SERVICE COMMIS', 'ESC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(885, 'SAF MARINE CMBT LINE', 'SAF', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(886, 'CARAVEL LOGISTICS PVT. LTD.', 'CVL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(887, 'FAR EASTERN LINE PVT LTD.,', 'GAC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(888, 'SIMATECH SHIPPING & FORWARDING LLC', 'SSF', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(889, 'SINOKOR MERCHANT MARINE', 'SNK', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(890, 'ROYAL MARINE LINES', 'SGS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(891, 'HERBILAN SHIPPING (PVT) LTD', 'HBS', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(892, 'JAPAN GRACE CO. LTD', 'JGL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(893, 'PDZ LINE LTD.', 'PDZ', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `wtyqf_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(894, 'ST JOHN LINES PTE LTD', 'SJL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(895, 'hoy line', 'HOY', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(896, 'ABERDEEN CONTAINER LINES', 'ABL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(897, 'ST JOHN LINE', 'SJC', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(898, 'HAYLEYLINES LTD.', 'HYL', 'test@gmail.com', '$2y$10$Ww8W0Ora5nOSkAhokUjXFuwjv0LaNNDKDIG1dui0hGeONQgfFVDjO', 0, 1, '2019-01-10 09:54:18', '2019-01-10 09:54:18', '', '', '0000-00-00 00:00:00', 0, '', '', 0),
(899, 'Administrator', 'admins', 'admin@slpa.lk', '$2y$10$Pp6sITtIXsSmDoVoTM7cLOxtK7c8NChpCapSkZJSkzsIXZJ/BQrN2', 0, 0, '2019-05-01 10:26:55', '2019-09-08 05:45:05', '0', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(900, 'Berthing', 'berthing', 'berthing@slpa.lk', '$2y$10$Pp6sITtIXsSmDoVoTM7cLOxtK7c8NChpCapSkZJSkzsIXZJ/BQrN2', 0, 0, '2019-05-01 11:22:38', '2019-09-08 05:31:00', '0', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(901, 'Agent', 'agent', 'agent@slpa.lk', '$2y$10$Pp6sITtIXsSmDoVoTM7cLOxtK7c8NChpCapSkZJSkzsIXZJ/BQrN2', 0, 0, '2019-05-01 01:56:03', '2019-07-06 08:39:12', '0', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(902, 'Vessel', 'vessel', 'vessel@slpa.lk', '$2y$10$Pp6sITtIXsSmDoVoTM7cLOxtK7c8NChpCapSkZJSkzsIXZJ/BQrN2', 0, 0, '2019-05-02 04:12:05', '2019-09-08 05:44:52', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(903, 'Duty', 'duty', 'duty@slpa.lk', '$2y$10$Pp6sITtIXsSmDoVoTM7cLOxtK7c8NChpCapSkZJSkzsIXZJ/BQrN2', 0, 0, '2019-05-02 04:13:01', '2019-09-08 05:19:49', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(904, 'Silva', 'silva', 'silva@slpa.lk', '$2y$10$65Q3LcrotFOHWA.UMR8LyeQWW51U5v3xmbaOHDNtX09LxI4RlGBQi', 0, 0, '2019-05-08 11:59:32', '2019-05-08 11:59:32', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(905, 'P. Perera', 'pperera', 'pperera@slpa.lk', '$2y$10$C.SN68/dX/N481Aa0gYCUOVxjn50zRtLx9J3n7S1y3ZIpytuZJYee', 0, 0, '2019-07-05 08:11:31', '2019-07-05 08:11:31', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(906, 'www', 'dddd', '3242ewr@slpa.lk', '$2y$10$Hb4IFlTO/e1ggpg1pfnNUOQpHSu89dbLfyVHGcUCIBoJEF8D5BcR.', 0, 127, '2019-07-06 08:35:07', '2019-07-06 15:08:05', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(907, 'namali', 'namali', 'na@slpa.lk', '$2y$10$bNiz07LAWGrSaXjzziQLQOlFZ9iIh6pffZsTcFxORe12Oq3wrW.1.', 0, 0, '2019-07-08 02:49:16', '2019-07-08 02:49:16', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(908, 'ASTAR', 'astar', 'astar@gmali.com', '$2y$10$yhD.FHe0z6DV483JKV2cU.A0hlOqfowp1vd1ig2NpBcCa0za3oHSa', 0, 0, '2019-07-08 02:51:43', '2019-07-08 02:52:03', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(909, 'perera', 'abc', 'abc@slpa.lk', '$2y$10$389BoAy2uNiNlQf.dscCwuA8AeJjna7p3yWIJpRQ0klg77WvYNYRG', 0, 0, '2019-07-08 10:07:55', '2019-07-08 10:07:55', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(910, 'test', 'test', 'test@slpa.lk', '$2y$10$9gIxJ5EwyJFwuC.sm/g/su0mrfDwfst7ZCdKRiYQrupIU1JuUbHSa', 0, 0, '2019-09-03 11:07:54', '2019-09-03 11:17:15', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(911, 'test', 'qqq', 'qqq@gmail.lk', '$2y$10$BiE0tY7mWkaHYnWh5URSw.5sPmGiOpEy1xR7qoitTNpWKQej6VvUG', 0, 0, '2019-09-03 11:13:22', '2019-09-03 11:16:38', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_user_keys`
--

CREATE TABLE `wtyqf_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_user_notes`
--

CREATE TABLE `wtyqf_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_user_profiles`
--

CREATE TABLE `wtyqf_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_user_usergroup_map`
--

CREATE TABLE `wtyqf_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_user_usergroup_map`
--

INSERT INTO `wtyqf_user_usergroup_map` (`user_id`, `group_id`) VALUES
(663, 8),
(664, 4),
(665, 4),
(666, 4),
(667, 4),
(668, 4),
(669, 4),
(670, 4),
(671, 4),
(672, 4),
(673, 4),
(674, 4),
(675, 4),
(676, 4),
(677, 4),
(678, 4),
(679, 4),
(680, 4),
(681, 4),
(682, 4),
(683, 4),
(684, 4),
(685, 4),
(686, 4),
(687, 4),
(688, 4),
(689, 4),
(690, 4),
(691, 4),
(692, 4),
(693, 4),
(694, 4),
(695, 4),
(696, 4),
(697, 4),
(698, 4),
(699, 4),
(700, 4),
(701, 4),
(702, 4),
(703, 4),
(704, 4),
(705, 4),
(706, 4),
(707, 4),
(708, 4),
(709, 4),
(710, 4),
(711, 4),
(712, 4),
(713, 4),
(714, 4),
(715, 4),
(716, 4),
(717, 4),
(718, 4),
(719, 4),
(720, 4),
(721, 4),
(722, 4),
(723, 4),
(724, 4),
(725, 4),
(726, 4),
(727, 4),
(728, 4),
(729, 4),
(730, 4),
(731, 4),
(732, 4),
(733, 4),
(734, 4),
(735, 4),
(736, 4),
(737, 4),
(738, 4),
(739, 4),
(740, 4),
(741, 4),
(742, 4),
(743, 4),
(744, 4),
(745, 4),
(746, 4),
(747, 4),
(748, 4),
(749, 4),
(750, 4),
(751, 4),
(752, 4),
(753, 4),
(754, 4),
(755, 4),
(756, 4),
(757, 4),
(758, 4),
(759, 4),
(760, 4),
(761, 4),
(762, 4),
(763, 4),
(764, 4),
(765, 4),
(766, 4),
(767, 4),
(768, 4),
(769, 4),
(770, 4),
(771, 4),
(772, 4),
(773, 4),
(774, 4),
(775, 4),
(776, 4),
(777, 4),
(778, 4),
(779, 4),
(780, 4),
(781, 4),
(782, 4),
(783, 4),
(784, 4),
(785, 4),
(786, 4),
(787, 4),
(788, 4),
(789, 4),
(790, 4),
(791, 4),
(792, 4),
(793, 4),
(794, 4),
(795, 4),
(796, 4),
(797, 4),
(798, 4),
(799, 4),
(800, 4),
(801, 4),
(802, 4),
(803, 4),
(804, 4),
(805, 4),
(806, 4),
(807, 4),
(808, 4),
(809, 4),
(810, 4),
(811, 4),
(812, 4),
(813, 4),
(814, 4),
(815, 4),
(816, 4),
(817, 4),
(818, 4),
(819, 4),
(820, 4),
(821, 4),
(822, 4),
(823, 4),
(824, 4),
(825, 4),
(826, 4),
(827, 4),
(828, 4),
(829, 4),
(830, 4),
(831, 4),
(832, 4),
(833, 4),
(834, 4),
(835, 4),
(836, 4),
(837, 4),
(838, 4),
(839, 4),
(840, 4),
(841, 4),
(842, 4),
(843, 4),
(844, 4),
(845, 4),
(846, 4),
(847, 4),
(848, 4),
(849, 4),
(850, 4),
(851, 4),
(852, 4),
(853, 4),
(854, 4),
(855, 4),
(856, 4),
(857, 4),
(858, 4),
(859, 4),
(860, 4),
(861, 4),
(862, 4),
(863, 4),
(864, 4),
(865, 4),
(866, 4),
(867, 4),
(868, 4),
(869, 4),
(870, 4),
(871, 4),
(872, 4),
(873, 4),
(874, 4),
(875, 4),
(876, 4),
(877, 4),
(878, 4),
(879, 4),
(880, 4),
(881, 4),
(882, 4),
(883, 4),
(884, 4),
(885, 4),
(886, 4),
(887, 4),
(888, 4),
(889, 4),
(890, 4),
(891, 4),
(892, 4),
(893, 4),
(894, 4),
(895, 4),
(896, 4),
(897, 4),
(898, 4),
(899, 7),
(900, 5),
(901, 4),
(902, 3),
(903, 6),
(904, 7),
(905, 5),
(906, 5),
(907, 6),
(908, 4),
(909, 5),
(910, 6),
(911, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_utf8_conversion`
--

CREATE TABLE `wtyqf_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_utf8_conversion`
--

INSERT INTO `wtyqf_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_viewlevels`
--

CREATE TABLE `wtyqf_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_viewlevels`
--

INSERT INTO `wtyqf_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wtyqf_assets`
--
ALTER TABLE `wtyqf_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `wtyqf_associations`
--
ALTER TABLE `wtyqf_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `wtyqf_banners`
--
ALTER TABLE `wtyqf_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `wtyqf_banner_clients`
--
ALTER TABLE `wtyqf_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `wtyqf_banner_tracks`
--
ALTER TABLE `wtyqf_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `wtyqf_baqcs_cpanel`
--
ALTER TABLE `wtyqf_baqcs_cpanel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wtyqf_categories`
--
ALTER TABLE `wtyqf_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `wtyqf_contact_details`
--
ALTER TABLE `wtyqf_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `wtyqf_content`
--
ALTER TABLE `wtyqf_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indexes for table `wtyqf_contentitem_tag_map`
--
ALTER TABLE `wtyqf_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `wtyqf_content_frontpage`
--
ALTER TABLE `wtyqf_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `wtyqf_content_rating`
--
ALTER TABLE `wtyqf_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `wtyqf_content_types`
--
ALTER TABLE `wtyqf_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `wtyqf_extensions`
--
ALTER TABLE `wtyqf_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `wtyqf_fields`
--
ALTER TABLE `wtyqf_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `wtyqf_fields_categories`
--
ALTER TABLE `wtyqf_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `wtyqf_fields_groups`
--
ALTER TABLE `wtyqf_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `wtyqf_fields_values`
--
ALTER TABLE `wtyqf_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `wtyqf_finder_filters`
--
ALTER TABLE `wtyqf_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `wtyqf_finder_links`
--
ALTER TABLE `wtyqf_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `wtyqf_finder_links_terms0`
--
ALTER TABLE `wtyqf_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `wtyqf_finder_links_terms1`
--
ALTER TABLE `wtyqf_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `wtyqf_finder_links_terms2`
--
ALTER TABLE `wtyqf_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `wtyqf_finder_links_terms3`
--
ALTER TABLE `wtyqf_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `wtyqf_finder_links_terms4`
--
ALTER TABLE `wtyqf_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `wtyqf_finder_links_terms5`
--
ALTER TABLE `wtyqf_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `wtyqf_finder_links_terms6`
--
ALTER TABLE `wtyqf_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `wtyqf_finder_links_terms7`
--
ALTER TABLE `wtyqf_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `wtyqf_finder_links_terms8`
--
ALTER TABLE `wtyqf_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `wtyqf_finder_links_terms9`
--
ALTER TABLE `wtyqf_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `wtyqf_finder_links_termsa`
--
ALTER TABLE `wtyqf_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `wtyqf_finder_links_termsb`
--
ALTER TABLE `wtyqf_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `wtyqf_finder_links_termsc`
--
ALTER TABLE `wtyqf_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `wtyqf_finder_links_termsd`
--
ALTER TABLE `wtyqf_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `wtyqf_finder_links_termse`
--
ALTER TABLE `wtyqf_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `wtyqf_finder_links_termsf`
--
ALTER TABLE `wtyqf_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `wtyqf_finder_taxonomy`
--
ALTER TABLE `wtyqf_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `wtyqf_finder_taxonomy_map`
--
ALTER TABLE `wtyqf_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `wtyqf_finder_terms`
--
ALTER TABLE `wtyqf_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `wtyqf_finder_terms_common`
--
ALTER TABLE `wtyqf_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `wtyqf_finder_tokens`
--
ALTER TABLE `wtyqf_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `wtyqf_finder_tokens_aggregate`
--
ALTER TABLE `wtyqf_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `wtyqf_finder_types`
--
ALTER TABLE `wtyqf_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `wtyqf_languages`
--
ALTER TABLE `wtyqf_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `wtyqf_menu`
--
ALTER TABLE `wtyqf_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `wtyqf_menu_types`
--
ALTER TABLE `wtyqf_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `wtyqf_messages`
--
ALTER TABLE `wtyqf_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `wtyqf_messages_cfg`
--
ALTER TABLE `wtyqf_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `wtyqf_modules`
--
ALTER TABLE `wtyqf_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `wtyqf_modules_menu`
--
ALTER TABLE `wtyqf_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `wtyqf_newsfeeds`
--
ALTER TABLE `wtyqf_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `wtyqf_overrider`
--
ALTER TABLE `wtyqf_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wtyqf_postinstall_messages`
--
ALTER TABLE `wtyqf_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `wtyqf_redirect_links`
--
ALTER TABLE `wtyqf_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `wtyqf_schemas`
--
ALTER TABLE `wtyqf_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `wtyqf_session`
--
ALTER TABLE `wtyqf_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `wtyqf_slpa_crane_schedule_automatic`
--
ALTER TABLE `wtyqf_slpa_crane_schedule_automatic`
  ADD PRIMARY KEY (`crane_schedule_automatic_id`);

--
-- Indexes for table `wtyqf_slpa_hold_berthing history`
--
ALTER TABLE `wtyqf_slpa_hold_berthing history`
  ADD PRIMARY KEY (`hold_id`);

--
-- Indexes for table `wtyqf_slpa_notification`
--
ALTER TABLE `wtyqf_slpa_notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `wtyqf_slpa_quay_crane`
--
ALTER TABLE `wtyqf_slpa_quay_crane`
  ADD PRIMARY KEY (`quay_crane_id`);

--
-- Indexes for table `wtyqf_slpa_quay_crane_disable`
--
ALTER TABLE `wtyqf_slpa_quay_crane_disable`
  ADD PRIMARY KEY (`quay_crane_disable_id`);

--
-- Indexes for table `wtyqf_slpa_schedule_automatic`
--
ALTER TABLE `wtyqf_slpa_schedule_automatic`
  ADD PRIMARY KEY (`schedule_automaic_id`);

--
-- Indexes for table `wtyqf_slpa_slot`
--
ALTER TABLE `wtyqf_slpa_slot`
  ADD PRIMARY KEY (`slot_id`);

--
-- Indexes for table `wtyqf_slpa_slot_quay_crane_map`
--
ALTER TABLE `wtyqf_slpa_slot_quay_crane_map`
  ADD PRIMARY KEY (`slot_quay_crane_map_id`);

--
-- Indexes for table `wtyqf_slpa_user_details`
--
ALTER TABLE `wtyqf_slpa_user_details`
  ADD PRIMARY KEY (`user_details_id`);

--
-- Indexes for table `wtyqf_slpa_vessel`
--
ALTER TABLE `wtyqf_slpa_vessel`
  ADD PRIMARY KEY (`vessel_id`);

--
-- Indexes for table `wtyqf_slpa_vessel_arrival`
--
ALTER TABLE `wtyqf_slpa_vessel_arrival`
  ADD PRIMARY KEY (`vessel_arrival_id`);

--
-- Indexes for table `wtyqf_slpa_vessel_arrival_approve`
--
ALTER TABLE `wtyqf_slpa_vessel_arrival_approve`
  ADD PRIMARY KEY (`vessel_arrival_approve_id`);

--
-- Indexes for table `wtyqf_slpa_vessel_arrival_confirmation`
--
ALTER TABLE `wtyqf_slpa_vessel_arrival_confirmation`
  ADD PRIMARY KEY (`vessel_arrival_confirmation_id`);

--
-- Indexes for table `wtyqf_slpa_vessel_berthing_allocation_reschedule`
--
ALTER TABLE `wtyqf_slpa_vessel_berthing_allocation_reschedule`
  ADD PRIMARY KEY (`vessel_berthing_reschedule_id`);

--
-- Indexes for table `wtyqf_slpa_vessel_berthing_allocation_slot_info`
--
ALTER TABLE `wtyqf_slpa_vessel_berthing_allocation_slot_info`
  ADD PRIMARY KEY (`vessel_berthing_allocation_id`);

--
-- Indexes for table `wtyqf_tags`
--
ALTER TABLE `wtyqf_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `wtyqf_template_styles`
--
ALTER TABLE `wtyqf_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `wtyqf_ucm_base`
--
ALTER TABLE `wtyqf_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `wtyqf_ucm_content`
--
ALTER TABLE `wtyqf_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `wtyqf_ucm_history`
--
ALTER TABLE `wtyqf_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `wtyqf_updates`
--
ALTER TABLE `wtyqf_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `wtyqf_update_sites`
--
ALTER TABLE `wtyqf_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `wtyqf_update_sites_extensions`
--
ALTER TABLE `wtyqf_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `wtyqf_usergroups`
--
ALTER TABLE `wtyqf_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `wtyqf_users`
--
ALTER TABLE `wtyqf_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `wtyqf_user_keys`
--
ALTER TABLE `wtyqf_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wtyqf_user_notes`
--
ALTER TABLE `wtyqf_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `wtyqf_user_profiles`
--
ALTER TABLE `wtyqf_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `wtyqf_user_usergroup_map`
--
ALTER TABLE `wtyqf_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `wtyqf_viewlevels`
--
ALTER TABLE `wtyqf_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wtyqf_assets`
--
ALTER TABLE `wtyqf_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `wtyqf_banners`
--
ALTER TABLE `wtyqf_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_banner_clients`
--
ALTER TABLE `wtyqf_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_baqcs_cpanel`
--
ALTER TABLE `wtyqf_baqcs_cpanel`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_categories`
--
ALTER TABLE `wtyqf_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wtyqf_contact_details`
--
ALTER TABLE `wtyqf_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_content`
--
ALTER TABLE `wtyqf_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wtyqf_content_types`
--
ALTER TABLE `wtyqf_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wtyqf_extensions`
--
ALTER TABLE `wtyqf_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=808;

--
-- AUTO_INCREMENT for table `wtyqf_fields`
--
ALTER TABLE `wtyqf_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_fields_groups`
--
ALTER TABLE `wtyqf_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_finder_filters`
--
ALTER TABLE `wtyqf_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_finder_links`
--
ALTER TABLE `wtyqf_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_finder_taxonomy`
--
ALTER TABLE `wtyqf_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wtyqf_finder_terms`
--
ALTER TABLE `wtyqf_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_finder_types`
--
ALTER TABLE `wtyqf_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_languages`
--
ALTER TABLE `wtyqf_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wtyqf_menu`
--
ALTER TABLE `wtyqf_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `wtyqf_menu_types`
--
ALTER TABLE `wtyqf_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wtyqf_messages`
--
ALTER TABLE `wtyqf_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_modules`
--
ALTER TABLE `wtyqf_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `wtyqf_newsfeeds`
--
ALTER TABLE `wtyqf_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_overrider`
--
ALTER TABLE `wtyqf_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `wtyqf_postinstall_messages`
--
ALTER TABLE `wtyqf_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wtyqf_redirect_links`
--
ALTER TABLE `wtyqf_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_slpa_crane_schedule_automatic`
--
ALTER TABLE `wtyqf_slpa_crane_schedule_automatic`
  MODIFY `crane_schedule_automatic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;

--
-- AUTO_INCREMENT for table `wtyqf_slpa_hold_berthing history`
--
ALTER TABLE `wtyqf_slpa_hold_berthing history`
  MODIFY `hold_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_slpa_notification`
--
ALTER TABLE `wtyqf_slpa_notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `wtyqf_slpa_quay_crane`
--
ALTER TABLE `wtyqf_slpa_quay_crane`
  MODIFY `quay_crane_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wtyqf_slpa_quay_crane_disable`
--
ALTER TABLE `wtyqf_slpa_quay_crane_disable`
  MODIFY `quay_crane_disable_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_slpa_schedule_automatic`
--
ALTER TABLE `wtyqf_slpa_schedule_automatic`
  MODIFY `schedule_automaic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `wtyqf_slpa_slot`
--
ALTER TABLE `wtyqf_slpa_slot`
  MODIFY `slot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wtyqf_slpa_slot_quay_crane_map`
--
ALTER TABLE `wtyqf_slpa_slot_quay_crane_map`
  MODIFY `slot_quay_crane_map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wtyqf_slpa_user_details`
--
ALTER TABLE `wtyqf_slpa_user_details`
  MODIFY `user_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `wtyqf_slpa_vessel`
--
ALTER TABLE `wtyqf_slpa_vessel`
  MODIFY `vessel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wtyqf_slpa_vessel_arrival`
--
ALTER TABLE `wtyqf_slpa_vessel_arrival`
  MODIFY `vessel_arrival_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `wtyqf_slpa_vessel_arrival_approve`
--
ALTER TABLE `wtyqf_slpa_vessel_arrival_approve`
  MODIFY `vessel_arrival_approve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `wtyqf_slpa_vessel_arrival_confirmation`
--
ALTER TABLE `wtyqf_slpa_vessel_arrival_confirmation`
  MODIFY `vessel_arrival_confirmation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `wtyqf_slpa_vessel_berthing_allocation_reschedule`
--
ALTER TABLE `wtyqf_slpa_vessel_berthing_allocation_reschedule`
  MODIFY `vessel_berthing_reschedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wtyqf_slpa_vessel_berthing_allocation_slot_info`
--
ALTER TABLE `wtyqf_slpa_vessel_berthing_allocation_slot_info`
  MODIFY `vessel_berthing_allocation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `wtyqf_tags`
--
ALTER TABLE `wtyqf_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wtyqf_template_styles`
--
ALTER TABLE `wtyqf_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wtyqf_ucm_content`
--
ALTER TABLE `wtyqf_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_ucm_history`
--
ALTER TABLE `wtyqf_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wtyqf_updates`
--
ALTER TABLE `wtyqf_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wtyqf_update_sites`
--
ALTER TABLE `wtyqf_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wtyqf_usergroups`
--
ALTER TABLE `wtyqf_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wtyqf_users`
--
ALTER TABLE `wtyqf_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=912;

--
-- AUTO_INCREMENT for table `wtyqf_user_keys`
--
ALTER TABLE `wtyqf_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_user_notes`
--
ALTER TABLE `wtyqf_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wtyqf_viewlevels`
--
ALTER TABLE `wtyqf_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
