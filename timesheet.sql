-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 27 2019 г., 07:51
-- Версия сервера: 5.7.26
-- Версия PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `timesheet`
--

-- --------------------------------------------------------

--
-- Структура таблицы `days`
--

DROP TABLE IF EXISTS `days`;
CREATE TABLE IF NOT EXISTS `days` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `days_dates` int(11) NOT NULL,
  `hours` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `month_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `days_user_id_foreign` (`user_id`),
  KEY `days_month_id_foreign` (`month_id`),
  KEY `days_part_id_foreign` (`part_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `days`
--

INSERT INTO `days` (`id`, `days_dates`, `hours`, `comment`, `user_id`, `month_id`, `part_id`, `created_at`, `updated_at`) VALUES
(1, 1, 8, '', 1, 7, 5, NULL, NULL),
(2, 2, 8, '', 1, 7, 5, NULL, NULL),
(3, 3, 8, '', 1, 7, 5, NULL, NULL),
(4, 4, 8, '', 1, 7, 5, NULL, NULL),
(5, 5, 8, '', 1, 7, 5, NULL, NULL),
(6, 6, 0, '', 1, 7, 2, NULL, NULL),
(7, 7, 0, '', 1, 7, 2, NULL, NULL),
(8, 8, 8, '', 1, 7, 5, NULL, NULL),
(9, 9, 8, '', 1, 7, 5, NULL, NULL),
(10, 10, 8, '', 1, 7, 5, NULL, NULL),
(11, 11, 8, '', 1, 7, 5, NULL, NULL),
(12, 12, 8, '', 1, 7, 5, NULL, NULL),
(13, 13, 0, '', 1, 7, 2, NULL, NULL),
(14, 14, 0, '', 1, 7, 2, NULL, NULL),
(15, 15, 8, '', 1, 7, 5, NULL, NULL),
(16, 16, 8, '', 1, 7, 5, NULL, NULL),
(17, 17, 8, '', 1, 7, 5, NULL, NULL),
(18, 18, 8, '', 1, 7, 5, NULL, NULL),
(19, 19, 8, '', 1, 7, 5, NULL, NULL),
(20, 20, 0, '', 1, 7, 2, NULL, NULL),
(21, 21, 0, '', 1, 7, 2, NULL, NULL),
(22, 22, 8, '', 1, 7, 5, NULL, NULL),
(23, 23, 8, '', 1, 7, 5, NULL, NULL),
(24, 24, 8, '', 1, 7, 5, NULL, NULL),
(25, 25, 8, '', 1, 7, 5, NULL, NULL),
(26, 26, 8, '', 1, 7, 5, NULL, NULL),
(27, 27, 0, '', 1, 7, 2, NULL, NULL),
(28, 28, 0, '', 1, 7, 2, NULL, NULL),
(29, 29, 8, '', 1, 7, 5, NULL, NULL),
(30, 30, 8, '', 1, 7, 5, NULL, NULL),
(31, 31, 8, '', 1, 7, 5, NULL, NULL),
(32, 1, 8, '', 2, 7, 5, NULL, NULL),
(33, 2, 8, '', 2, 7, 5, NULL, NULL),
(34, 3, 8, '', 2, 7, 5, NULL, NULL),
(35, 4, 8, '', 2, 7, 5, NULL, NULL),
(36, 5, 8, '', 2, 7, 5, NULL, NULL),
(37, 6, 0, '', 2, 7, 2, NULL, NULL),
(38, 7, 0, '', 2, 7, 2, NULL, NULL),
(39, 8, 8, '', 2, 7, 5, NULL, NULL),
(40, 9, 8, '', 2, 7, 5, NULL, NULL),
(41, 10, 8, '', 2, 7, 5, NULL, NULL),
(42, 11, 8, '', 2, 7, 5, NULL, NULL),
(43, 12, 8, '', 2, 7, 5, NULL, NULL),
(44, 13, 0, '', 2, 7, 2, NULL, NULL),
(45, 14, 0, '', 2, 7, 2, NULL, NULL),
(46, 15, 8, '', 2, 7, 5, NULL, NULL),
(47, 16, 8, '', 2, 7, 5, NULL, NULL),
(48, 17, 8, '', 2, 7, 5, NULL, NULL),
(49, 18, 8, '', 2, 7, 5, NULL, NULL),
(50, 19, 8, '', 2, 7, 5, NULL, NULL),
(51, 20, 0, '', 2, 7, 2, NULL, NULL),
(52, 21, 0, '', 2, 7, 2, NULL, NULL),
(53, 22, 8, '', 2, 7, 5, NULL, NULL),
(54, 23, 8, '', 2, 7, 5, NULL, NULL),
(55, 24, 8, '', 2, 7, 5, NULL, NULL),
(56, 25, 8, '', 2, 7, 5, NULL, NULL),
(57, 26, 8, '', 2, 7, 5, NULL, NULL),
(58, 27, 0, '', 2, 7, 2, NULL, NULL),
(59, 28, 0, '', 2, 7, 2, NULL, NULL),
(60, 29, 8, '', 2, 7, 5, NULL, NULL),
(61, 30, 8, '', 2, 7, 5, NULL, NULL),
(62, 31, 8, '', 2, 7, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2014_10_12_100000_create_password_resets_table', 1),
(24, '2019_08_14_055930_create_days_table', 1),
(25, '2019_08_14_060426_create_months_table', 1),
(26, '2019_08_16_084025_create_team_table', 1),
(27, '2019_08_16_084558_create_role_table', 1),
(28, '2019_08_16_085008_create_participation_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `months`
--

DROP TABLE IF EXISTS `months`;
CREATE TABLE IF NOT EXISTS `months` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `days_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `months`
--

INSERT INTO `months` (`id`, `name`, `days_count`, `created_at`, `updated_at`) VALUES
(1, 'January', 31, NULL, NULL),
(2, 'February', 28, NULL, NULL),
(3, 'March', 31, NULL, NULL),
(4, 'April', 30, NULL, NULL),
(5, 'May', 31, NULL, NULL),
(6, 'June', 30, NULL, NULL),
(7, 'July', 31, NULL, NULL),
(8, 'August', 31, NULL, NULL),
(9, 'September', 30, NULL, NULL),
(10, 'October', 31, NULL, NULL),
(11, 'November', 30, NULL, NULL),
(12, 'December', 31, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `participation`
--

DROP TABLE IF EXISTS `participation`;
CREATE TABLE IF NOT EXISTS `participation` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `participation`
--

INSERT INTO `participation` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Holiday', NULL, NULL),
(2, 'Weekend', NULL, NULL),
(3, 'Sick Leave', NULL, NULL),
(4, 'Vacation', NULL, NULL),
(5, 'Regular day', NULL, NULL),
(6, 'Short day', NULL, NULL),
(7, 'Overtime', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'team leader', NULL, NULL),
(2, 'developer', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE IF NOT EXISTS `team` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `team`
--

INSERT INTO `team` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'team A', NULL, NULL),
(2, 'team B', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  KEY `users_team_id_foreign` (`team_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `team_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Etibar', 'nadirov@mail.ru', NULL, '$2y$10$QyT3csk9126g3wK.KggSPeuHir1V9bVizETgy1/TS1WjlQ7sfHaZm', 1, 1, NULL, NULL, NULL),
(2, 'Murad', 'murad@mail.ru', NULL, '$2y$10$WHIDIdIjV1GnwQXgqkrgkukSg./bCljFAleA/c.WbSVqGtDyVnOxe', 2, 1, NULL, NULL, NULL),
(3, 'Elnur', 'elnur@mail.ru', NULL, '$2y$10$ilrwvo1v3jI7tL.KMSvkz.zrJeftPLMF0lJIuqMelBpqF7M4l5hiS', 2, 1, NULL, NULL, NULL),
(4, 'Arif', 'arif@mail.ru', NULL, '$2y$10$lhMYCFfVOCWURYMthfK65OPgRl2hrGnWOIsFK.nSi3PqSQDkQkJui', 1, 2, NULL, NULL, NULL),
(5, 'Hikmet', 'hikmet@mail.ru', NULL, '$2y$10$cUbstJNsY8K0v2vfebZlt.8fH3X0ZflPecTAs/LaH1jWwo1jkuYG.', 2, 2, NULL, NULL, NULL),
(6, 'Cavid', 'cavid@mail.ru', NULL, '$2y$10$CJpvH8eupbRSV4qU3326xu5GLyVedYEZ5cdboyRQV95Ac73U0KXca', 2, 2, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
