-- phpMyAdmin SQL Dump
-- version 3.2.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2009 at 10:57 AM
-- Server version: 5.0.84
-- PHP Version: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `snailize`
--
CREATE DATABASE `snailize` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `snailize`;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(11) NOT NULL auto_increment,
  `filename` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `project_id` int(11) default NULL,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `filename`, `created_at`, `updated_at`, `project_id`, `title`) VALUES
(1, 'rubyonrails.pdf', '2009-08-21 09:17:09', '2009-08-21 09:17:09', 2, 'rrrrrrrrrrrrr'),
(2, 'The+iPhone+Developer''s+Cookbook.pdf', '2009-08-21 09:19:43', '2009-08-21 09:19:43', 2, 'ghghjgf'),
(3, 'theisland.zip', '2009-08-21 09:37:45', '2009-08-21 09:37:45', 2, 'well well well'),
(4, 'vds.zip', '2009-08-21 09:39:09', '2009-08-21 09:39:09', 1, 'cvx'),
(5, 'ZZZZZZZZZavior.rtf', '2009-08-22 00:16:46', '2009-08-22 00:16:46', 5, ''),
(6, 'TODOs.rtf', '2009-08-22 00:32:17', '2009-08-22 00:32:17', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL auto_increment,
  `project_id` int(11) default NULL,
  `change` decimal(10,2) default '0.00',
  `body` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `ltype` int(11) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `project_id`, `change`, `body`, `created_at`, `updated_at`, `ltype`, `user_id`) VALUES
(1, 1, '0.00', '很好～！！', '2009-08-21 03:23:47', '2009-08-21 03:23:47', 3, 2),
(2, 2, '0.30', '说到底发健康劳动法', '2009-08-21 03:26:16', '2009-08-21 03:26:16', 1, 2),
(3, 2, '0.00', '阿但是发发打发', '2009-08-21 03:26:29', '2009-08-21 03:26:29', 2, 2),
(4, 2, '0.00', '阿道夫撒旦飞洒但是发疯的', '2009-08-21 03:26:34', '2009-08-21 03:26:34', 3, 2),
(5, 2, '-0.10', '萨斯蒂芬斯蒂芬所得税地方萨法斯蒂芬', '2009-08-21 03:27:13', '2009-08-21 03:27:13', 1, 2),
(6, 2, '0.00', '啊啊啊发奋斗到底高低杠大股东古典风格', '2009-08-21 03:35:52', '2009-08-21 03:35:52', 2, 2),
(7, 2, '0.01', 'adf', '2009-08-21 09:37:26', '2009-08-21 09:37:26', 1, 2),
(8, 5, '0.90', 'dsaf', '2009-08-22 00:17:31', '2009-08-22 00:17:31', 1, 2),
(9, 2, '-0.40', 'dsa', '2009-08-22 00:19:42', '2009-08-22 00:19:42', 1, 2),
(10, 2, '0.03', 'ewsd', '2009-08-22 00:19:51', '2009-08-22 00:19:51', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `body` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 2, '是么', '2009-08-20 23:45:44', '2009-08-20 23:45:44'),
(2, 2, '不是么', '2009-08-20 23:46:30', '2009-08-20 23:46:30'),
(3, 2, '非法所得发实得分数', '2009-08-21 01:30:12', '2009-08-21 01:30:12'),
(4, 2, '发送到发是非得失', '2009-08-21 01:30:18', '2009-08-21 01:30:18'),
(5, 2, '发射导弹发', '2009-08-21 01:30:21', '2009-08-21 01:30:21'),
(6, 2, '发达的发', '2009-08-21 01:30:24', '2009-08-21 01:30:24'),
(7, 2, '发大大是非得失', '2009-08-21 01:30:27', '2009-08-21 01:30:27'),
(8, 2, '阿道夫发电视大赛', '2009-08-21 01:30:33', '2009-08-21 01:30:33'),
(9, 2, '~~~~~~~~~~~~~~', '2009-08-21 23:18:46', '2009-08-21 23:18:46');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `desc` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `incharge` int(11) default NULL,
  `codename` varchar(255) collate utf8_unicode_ci default NULL,
  `finished` decimal(10,2) default '0.00',
  `longaim` varchar(255) collate utf8_unicode_ci default NULL,
  `todo` text collate utf8_unicode_ci,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `desc`, `created_at`, `updated_at`, `incharge`, `codename`, `finished`, `longaim`, `todo`) VALUES
(1, 'Robot', 'fdadsdsads', '2009-08-19 14:07:56', '2009-08-21 02:49:03', 1, 'R', '0.89', '智能化机器人', NULL),
(2, 'Floor', 'fsd', '2009-08-19 14:09:56', '2009-08-22 00:49:37', 2, 'F', '0.05', '地板', '1、的发放滴答声发达\r\n2、斯蒂芬恶维权网额前日期威尔\r\n'),
(5, 'adfs', NULL, '2009-08-22 00:16:28', '2009-08-22 00:17:48', 2, 'a', '0.90', NULL, ''),
(6, '全息摄像', NULL, '2009-08-22 02:50:59', '2009-08-22 02:50:59', 3, 'H', '0.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects_users`
--

CREATE TABLE IF NOT EXISTS `projects_users` (
  `user_id` int(11) default NULL,
  `project_id` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects_users`
--

INSERT INTO `projects_users` (`user_id`, `project_id`) VALUES
(1, 1),
(2, 2),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE IF NOT EXISTS `replies` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `body` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `topic_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `body`, `created_at`, `updated_at`, `topic_id`) VALUES
(1, 1, 'fsdaafadffadsaf', '2009-08-21 08:47:03', '2009-08-21 08:47:03', 1),
(2, 1, 'fdjklfdsjfklds', '2009-08-21 01:16:56', '2009-08-21 01:16:56', 2),
(3, 1, 'fdjklfdsjfklds', '2009-08-21 01:17:13', '2009-08-21 01:17:13', 2),
(4, 1, '111', '2009-08-21 01:17:18', '2009-08-21 01:17:18', 2),
(5, 1, '21321', '2009-08-21 01:17:20', '2009-08-21 01:17:20', 2),
(6, 2, 'jdskljfaklfjlkdasjfl', '2009-08-21 01:17:42', '2009-08-21 01:17:42', 2),
(7, 2, 'hi', '2009-08-21 09:20:17', '2009-08-21 09:20:17', 2),
(8, 2, 'gggggggggggggggggggggkkkkkkkkkkkkkkkkk', '2009-08-21 09:20:25', '2009-08-21 09:20:25', 2),
(9, 2, '111', '2009-08-22 00:35:57', '2009-08-22 00:35:57', 2);

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) collate utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20090818161308'),
('20090818170707'),
('20090818171106'),
('20090818171603'),
('20090818172701'),
('20090818175128'),
('20090818175537'),
('20090819013134'),
('20090819014139'),
('20090819014739'),
('20090819014821'),
('20090819061330'),
('20090819073949'),
('20090819080935'),
('20090819082521'),
('20090821012006'),
('20090821012519'),
('20090821030122'),
('20090821032035'),
('20090821071608'),
('20090821075533'),
('20090821080909'),
('20090821090447');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `body` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, '用来测试的', '的确是测试的～', '2009-08-19 09:52:03', '2009-08-19 09:52:03'),
(2, 1, '某话题的标题', '某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。某话题的内容。', '2009-08-20 22:24:53', '2009-08-20 22:24:53'),
(3, 2, '阿辅导书', '1', '2009-08-22 00:39:06', '2009-08-22 00:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(40) collate utf8_unicode_ci default NULL,
  `name` varchar(100) collate utf8_unicode_ci default '',
  `email` varchar(100) collate utf8_unicode_ci default NULL,
  `crypted_password` varchar(40) collate utf8_unicode_ci default NULL,
  `salt` varchar(40) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `remember_token` varchar(40) collate utf8_unicode_ci default NULL,
  `remember_token_expires_at` datetime default NULL,
  `school` varchar(255) collate utf8_unicode_ci default NULL,
  `department` varchar(255) collate utf8_unicode_ci default NULL,
  `major` varchar(255) collate utf8_unicode_ci default NULL,
  `mobile` varchar(255) collate utf8_unicode_ci default NULL,
  `home` varchar(255) collate utf8_unicode_ci default NULL,
  `dorm` varchar(255) collate utf8_unicode_ci default NULL,
  `QQ` varchar(255) collate utf8_unicode_ci default NULL,
  `homeaddr` varchar(255) collate utf8_unicode_ci default NULL,
  `schaddr` varchar(255) collate utf8_unicode_ci default NULL,
  `homepostcode` varchar(255) collate utf8_unicode_ci default NULL,
  `schpostcode` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_users_on_login` (`login`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `name`, `email`, `crypted_password`, `salt`, `created_at`, `updated_at`, `remember_token`, `remember_token_expires_at`, `school`, `department`, `major`, `mobile`, `home`, `dorm`, `QQ`, `homeaddr`, `schaddr`, `homepostcode`, `schpostcode`) VALUES
(1, 'llb0536', '刘理博', 'llb0536@yahoo.com.cn', '3e14a6d7fa2935d6d64f971bc6d9a4b0dbbf31db', 'a3d8880457c75a04e81852947101d56cf540c72c', '2009-08-19 05:17:09', '2009-08-19 05:17:09', NULL, NULL, '北京科技大学', '土木与环境工程', '安全学', '152 64438107', '053 64391178', NULL, '150994007', '山东省安丘市实验中学集翠园', NULL, '262100', NULL),
(2, 'psvr', '潘旻琦', 'pmq2001@gmail.com', 'd42a38e5ca4e3e682f2cf48697ca3934327f5d8d', '3e3de394e2427d0396f40fbaff4cc641ba02c8bb', '2009-08-19 05:17:28', '2009-08-19 09:20:41', NULL, NULL, '首都师范大学', '数学学院', '数理实验班', '15965084698', '05364999636', '', '744535114', '山东省安丘市卫生防疫站 安丘市 山东省 中国', '', '262100', ''),
(3, 'snail.hui', '高辉', 'snail.hui@163.com', '7c9eeed74c4bed8bb673abae06cb4dc1968eec6e', 'af08d9ab9335956fa2e596e6e332ac49a30df629', '2009-08-19 06:51:01', '2009-08-19 09:20:55', NULL, NULL, '', '', '', '', '', '', '', 'fsdsdffsd', 'dsf', 'fdsdfs', 'fds'),
(4, '99zhouxiaopeng', '周小鹏 ', 'sth@sth.com', '77f442e717697386f757e454f6a5f2f9da080701', 'a49d01bdb5c17d65c5a91fc6f71baab4e2f1db33', '2009-08-22 01:41:27', '2009-08-22 01:45:42', 'c0ffc43cb13787f768b96e7a32149fb5fbc52138', '2009-09-05 01:42:22', '', '', '', '', '', '', '', '', '', '', '');
