-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2023 at 07:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `dbo.authors`
--

CREATE TABLE `dbo.authors` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dbo.author_to_user_id`
--

CREATE TABLE `dbo.author_to_user_id` (
  `id` int(11) NOT NULL,
  `dbo_topics_author_id` int(11) NOT NULL,
  `dbo.users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbo.boards`
--

CREATE TABLE `dbo.boards` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dbo_topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbo.entities_type_lookup`
--

CREATE TABLE `dbo.entities_type_lookup` (
  `id` int(11) NOT NULL,
  `entities_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dbo.posts`
--

CREATE TABLE `dbo.posts` (
  `id` int(11) NOT NULL,
  `dbo.topics_id` int(11) NOT NULL,
  `dbo.author_id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dbo.salts`
--

CREATE TABLE `dbo.salts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `salt` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbo.topics`
--

CREATE TABLE `dbo.topics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbo.users`
--

CREATE TABLE `dbo.users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbo.user_reports`
--

CREATE TABLE `dbo.user_reports` (
  `id` int(11) NOT NULL,
  `dbo.user_id` int(11) NOT NULL,
  `report` text NOT NULL,
  `reported_entity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dbo.user_reports_reported_entities`
--

CREATE TABLE `dbo.user_reports_reported_entities` (
  `id` int(11) NOT NULL,
  `entity_type_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dbo.user_sessions`
--

CREATE TABLE `dbo.user_sessions` (
  `id` int(11) NOT NULL,
  `dbo.users_id` int(11) NOT NULL,
  `session_id` varchar(500) NOT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_expired` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dbo.wiki`
--

CREATE TABLE `dbo.wiki` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbo.wiki_author_versioning`
--

CREATE TABLE `dbo.wiki_author_versioning` (
  `id` int(11) NOT NULL,
  `dbo.wiki_id` int(11) NOT NULL,
  `dbo_author_id` int(11) NOT NULL,
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbo.wiki_content_versioning`
--

CREATE TABLE `dbo.wiki_content_versioning` (
  `id` int(11) NOT NULL,
  `dbo_wiki_id` int(11) NOT NULL,
  `dbo_wiki_version` int(11) NOT NULL,
  `content` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbo.wiki_current_version`
--

CREATE TABLE `dbo.wiki_current_version` (
  `id` int(11) NOT NULL,
  `dbo_wiki_id` int(11) NOT NULL,
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dbo.wiki_main_image_versioning`
--

CREATE TABLE `dbo.wiki_main_image_versioning` (
  `id` int(11) NOT NULL,
  `dbo_wiki_id` int(11) NOT NULL,
  `image_name` varchar(500) NOT NULL,
  `image_binary` longblob NOT NULL,
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dbo.authors`
--
ALTER TABLE `dbo.authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbo.author_to_user_id`
--
ALTER TABLE `dbo.author_to_user_id`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dbo_topics_author_id_index` (`dbo_topics_author_id`),
  ADD KEY `dbo_users_id_index` (`dbo.users_id`);

--
-- Indexes for table `dbo.boards`
--
ALTER TABLE `dbo.boards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dbo_topic_id_index` (`dbo_topic_id`);

--
-- Indexes for table `dbo.entities_type_lookup`
--
ALTER TABLE `dbo.entities_type_lookup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbo.posts`
--
ALTER TABLE `dbo.posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dbo.posts_dbo.topics_id_index` (`dbo.topics_id`),
  ADD KEY `dbo_posts_dbo_author_id_index` (`dbo.author_id`);
ALTER TABLE `dbo.posts` ADD FULLTEXT KEY `content_fulltext` (`content`);

--
-- Indexes for table `dbo.salts`
--
ALTER TABLE `dbo.salts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_index` (`user_id`);

--
-- Indexes for table `dbo.topics`
--
ALTER TABLE `dbo.topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id_index` (`author_id`);

--
-- Indexes for table `dbo.users`
--
ALTER TABLE `dbo.users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbo.user_reports`
--
ALTER TABLE `dbo.user_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dbo.user_reports_dbo._user_id_index` (`dbo.user_id`);
ALTER TABLE `dbo.user_reports` ADD FULLTEXT KEY `report_full_text` (`report`);

--
-- Indexes for table `dbo.user_reports_reported_entities`
--
ALTER TABLE `dbo.user_reports_reported_entities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dbo.entity_lookup_dbo.user_reports_reported_entities_index` (`entity_id`),
  ADD KEY `dbo.entity_lookup_dbo.user_reports_reported_entities_type_index` (`entity_type_id`);

--
-- Indexes for table `dbo.user_sessions`
--
ALTER TABLE `dbo.user_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dbo_users_id_index` (`dbo.users_id`);

--
-- Indexes for table `dbo.wiki`
--
ALTER TABLE `dbo.wiki`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbo.wiki_author_versioning`
--
ALTER TABLE `dbo.wiki_author_versioning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dbo_wiki_id_index` (`dbo.wiki_id`),
  ADD KEY `dbo_author_id_index` (`dbo_author_id`);

--
-- Indexes for table `dbo.wiki_content_versioning`
--
ALTER TABLE `dbo.wiki_content_versioning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dbo_wiki_id_index` (`dbo_wiki_id`);

--
-- Indexes for table `dbo.wiki_current_version`
--
ALTER TABLE `dbo.wiki_current_version`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dbo_wiki_id_index` (`dbo_wiki_id`);

--
-- Indexes for table `dbo.wiki_main_image_versioning`
--
ALTER TABLE `dbo.wiki_main_image_versioning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dbo_wiki_id_index` (`dbo_wiki_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dbo.authors`
--
ALTER TABLE `dbo.authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbo.author_to_user_id`
--
ALTER TABLE `dbo.author_to_user_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbo.boards`
--
ALTER TABLE `dbo.boards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbo.entities_type_lookup`
--
ALTER TABLE `dbo.entities_type_lookup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbo.posts`
--
ALTER TABLE `dbo.posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbo.salts`
--
ALTER TABLE `dbo.salts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbo.topics`
--
ALTER TABLE `dbo.topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbo.users`
--
ALTER TABLE `dbo.users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbo.user_reports`
--
ALTER TABLE `dbo.user_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbo.user_reports_reported_entities`
--
ALTER TABLE `dbo.user_reports_reported_entities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbo.user_sessions`
--
ALTER TABLE `dbo.user_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbo.wiki`
--
ALTER TABLE `dbo.wiki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbo.wiki_author_versioning`
--
ALTER TABLE `dbo.wiki_author_versioning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbo.wiki_content_versioning`
--
ALTER TABLE `dbo.wiki_content_versioning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbo.wiki_current_version`
--
ALTER TABLE `dbo.wiki_current_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbo.wiki_main_image_versioning`
--
ALTER TABLE `dbo.wiki_main_image_versioning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
