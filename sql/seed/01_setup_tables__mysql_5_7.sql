CREATE DATABASE IF NOT EXISTS sandbox;

USE sandbox;

CREATE TABLE IF NOT EXISTS `items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'タイトル',
  `slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'スラッグ',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_items_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
