-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 25 فبراير 2025 الساعة 12:08
-- إصدار الخادم: 10.6.21-MariaDB-cll-lve-log
-- PHP Version: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `compuworxllc_site`
--

-- --------------------------------------------------------

--
-- بنية الجدول `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `description_ar` longtext NOT NULL,
  `description_en` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `blogs`
--

INSERT INTO `blogs` (`id`, `title_ar`, `title_en`, `description_ar`, `description_en`, `image`, `created_at`, `updated_at`) VALUES
(7, 'مقتنيات عصريه', 'Non ut saepe numquam', '<p>ما هو \"لوريم إيبسوم\" ؟<br />لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>', '<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>', '7dOvHMedJq619jUtT2UbxeDdyfc7UZQLoqd8e9Y3.png', '2023-07-24 14:50:42', '2024-04-07 11:31:03');

-- --------------------------------------------------------

--
-- بنية الجدول `carts`
--

CREATE TABLE `carts` (
  `id` char(36) NOT NULL,
  `cookie_id` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `options` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `carts`
--

INSERT INTO `carts` (`id`, `cookie_id`, `user_id`, `product_id`, `quantity`, `price`, `total`, `options`, `image`, `created_at`, `updated_at`) VALUES
('194e74ba-4ae2-41cc-a1b8-bd9d3172ab86', 'ba4e0258-0edd-4aa4-a06d-94a61e90a981', NULL, 50, 1, 500.00, 0.00, '', NULL, '2023-06-20 13:48:52', '2023-06-20 13:48:52'),
('960d69f2-50b5-4551-ab5c-81691112ec4e', 'ba4e0258-0edd-4aa4-a06d-94a61e90a981', NULL, 49, 1, 86.00, 0.00, '', NULL, '2023-06-20 13:48:58', '2023-06-20 13:48:58'),
('78657871-b0bf-4b75-a30b-84e373953d74', '1d60d3b4-8082-4d68-92de-c76de1cf2c49', NULL, 59, 2, 470.00, 0.00, '', NULL, '2023-07-25 09:55:40', '2023-07-25 09:55:45'),
('b30d22b8-87b3-4b82-8595-fbb7afd38f83', 'ff1aa333-e504-4dc7-bf3c-21931f4062e5', NULL, 60, 4, 209.00, 0.00, '', NULL, '2023-08-10 18:47:41', '2023-08-10 19:26:59'),
('6e681121-c9b5-4265-aede-8a4a175cdbd9', 'ff1aa333-e504-4dc7-bf3c-21931f4062e5', NULL, 59, 2, 470.00, 0.00, '', NULL, '2023-08-10 18:47:26', '2023-08-10 19:24:24'),
('3f77acbd-1ad2-4956-a135-6d801179727c', 'ff1aa333-e504-4dc7-bf3c-21931f4062e5', NULL, 58, 4, 73.00, 0.00, '', NULL, '2023-08-10 18:49:15', '2023-08-10 19:25:33'),
('a4b3f0f7-39d4-480a-92b3-e23c9a6c6060', 'bc704c3d-962e-4a54-83c9-34f0bf6bcde0', NULL, 58, 3, 73.00, 0.00, '', NULL, '2023-08-10 19:27:23', '2023-08-10 19:28:56'),
('66e10060-95b8-4707-b532-a9b5498abf0d', 'bc704c3d-962e-4a54-83c9-34f0bf6bcde0', NULL, 59, 2, 470.00, 0.00, '', NULL, '2023-08-10 19:27:30', '2023-08-10 19:28:20');

-- --------------------------------------------------------

--
-- بنية الجدول `cash_backs`
--

CREATE TABLE `cash_backs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `in` varchar(255) DEFAULT NULL,
  `out` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `cash_backs`
--

INSERT INTO `cash_backs` (`id`, `user_id`, `order_id`, `in`, `out`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1000', '0', NULL, NULL),
(15, '1', '76', '0', '75', '2024-03-05 16:49:43', '2024-03-05 16:49:43'),
(16, '1', '76', '8', '0', '2024-03-05 16:49:54', '2024-03-05 16:49:54'),
(17, '1', '77', '0', '138', '2024-03-05 17:01:28', '2024-03-05 17:01:28'),
(18, '1', '77', '14', '0', '2024-03-05 17:01:36', '2024-03-05 17:01:36'),
(19, '1', '78', '0', '222', '2024-04-04 11:49:06', '2024-04-04 11:49:06'),
(20, '1', '78', '17', '0', '2024-04-04 11:49:57', '2024-04-04 11:49:57'),
(21, '1', '80', '0', '361', '2024-04-14 12:26:25', '2024-04-14 12:26:25'),
(30, '1', '80', '0', '29', '2024-04-16 12:44:41', '2024-04-16 12:44:41'),
(31, '1', '80', '3', '0', '2024-04-16 12:50:08', '2024-04-16 12:50:08'),
(32, '1', '80', '3', '0', '2024-04-16 12:52:22', '2024-04-16 12:52:22'),
(33, '1', '80', '3', '0', '2024-04-16 12:53:06', '2024-04-16 12:53:06'),
(34, '1', '80', '3', '0', '2024-04-16 12:53:45', '2024-04-16 12:53:45'),
(35, '1', '80', '3', '0', '2024-04-16 12:53:51', '2024-04-16 12:53:51'),
(36, '1', '80', '3', '0', '2024-04-16 12:56:03', '2024-04-16 12:56:03'),
(37, '1', '80', '3', '0', '2024-04-16 12:56:24', '2024-04-16 12:56:24'),
(38, '1', '80', '3', '0', '2024-04-16 12:57:13', '2024-04-16 12:57:13'),
(39, '1', '80', '3', '0', '2024-04-16 12:58:45', '2024-04-16 12:58:45'),
(40, '1', '80', '3', '0', '2024-04-16 12:59:14', '2024-04-16 12:59:14'),
(41, '1', '80', '3', '0', '2024-04-16 12:59:36', '2024-04-16 12:59:36'),
(42, '1', '81', '8', '0', '2024-04-16 13:02:49', '2024-04-16 13:02:49'),
(43, '1', '82', '14', '0', '2024-04-16 13:11:19', '2024-04-16 13:11:19'),
(44, '1', '83', '8', '0', '2024-04-16 15:09:46', '2024-04-16 15:09:46'),
(45, '1', '83', '8', '0', '2024-04-16 15:10:53', '2024-04-16 15:10:53'),
(46, '1', '83', '8', '0', '2024-04-16 15:15:04', '2024-04-16 15:15:04'),
(47, '1', '83', '8', '0', '2024-04-16 15:15:19', '2024-04-16 15:15:19'),
(48, '1', '83', '8', '0', '2024-04-16 15:15:31', '2024-04-16 15:15:31'),
(49, '1', '84', '17', '0', '2024-04-16 15:27:11', '2024-04-16 15:27:11'),
(50, '1', '84', '17', '0', '2024-04-16 15:27:45', '2024-04-16 15:27:45'),
(51, '1', '85', '0', '45', '2024-04-16 16:10:50', '2024-04-16 16:10:50'),
(52, '1', '85', '5', '0', '2024-04-16 16:10:59', '2024-04-16 16:10:59'),
(53, '1', '85', '5', '0', '2024-04-16 16:11:42', '2024-04-16 16:11:42'),
(54, '1', '86', '0', '138', '2024-04-16 16:12:28', '2024-04-16 16:12:28'),
(55, '1', '86', '14', '0', '2024-04-16 16:12:33', '2024-04-16 16:12:33'),
(56, '1', '86', '14', '0', '2024-04-16 16:14:40', '2024-04-16 16:14:40'),
(57, '1', '86', '14', '0', '2024-04-16 16:14:55', '2024-04-16 16:14:55'),
(58, '1', '86', '14', '0', '2024-04-16 16:17:00', '2024-04-16 16:17:00'),
(59, '1', '86', '14', '0', '2024-04-16 16:17:18', '2024-04-16 16:17:18'),
(60, '1', '86', '14', '0', '2024-04-16 16:18:26', '2024-04-16 16:18:26'),
(61, '1', '87', '3', '0', '2024-04-17 09:01:36', '2024-04-17 09:01:36'),
(62, '1', '87', '3', '0', '2024-04-17 09:02:02', '2024-04-17 09:02:02'),
(63, '1', '88', '0', '64', '2024-04-17 09:03:14', '2024-04-17 09:03:14'),
(64, '1', '88', '3', '0', '2024-04-17 09:03:25', '2024-04-17 09:03:25'),
(65, '1', '88', '3', '0', '2024-04-17 09:03:46', '2024-04-17 09:03:46'),
(66, '1', '89', '18', '0', '2024-04-17 10:28:25', '2024-04-17 10:28:25'),
(67, '1', '90', '12', '0', '2024-04-17 14:35:02', '2024-04-17 14:35:02'),
(68, '1', '91', '0', '32', '2024-04-17 14:37:58', '2024-04-17 14:37:58'),
(69, '1', '91', '3', '0', '2024-04-17 14:38:21', '2024-04-17 14:38:21'),
(70, '1', '92', '5', '0', '2024-04-17 14:51:10', '2024-04-17 14:51:10'),
(71, '1', '93', '0', '32', '2024-04-22 12:07:53', '2024-04-22 12:07:53'),
(72, '1', '93', '3', '0', '2024-04-22 12:08:18', '2024-04-22 12:08:18'),
(73, '1', '93', '3', '0', '2024-04-22 12:08:33', '2024-04-22 12:08:33'),
(74, '1', '93', '3', '0', '2024-04-22 12:09:20', '2024-04-22 12:09:20'),
(75, '1', '93', '3', '0', '2024-04-22 12:10:54', '2024-04-22 12:10:54'),
(76, '1', '93', '3', '0', '2024-04-22 12:15:04', '2024-04-22 12:15:04'),
(77, '1', '93', '3', '0', '2024-04-22 12:15:20', '2024-04-22 12:15:20'),
(78, '1', '93', '3', '0', '2024-04-22 12:18:57', '2024-04-22 12:18:57'),
(79, '1', '93', '3', '0', '2024-04-22 12:19:21', '2024-04-22 12:19:21'),
(80, '1', '93', '3', '0', '2024-04-22 12:19:49', '2024-04-22 12:19:49'),
(81, '1', '93', '3', '0', '2024-04-22 12:20:24', '2024-04-22 12:20:24'),
(82, '1', '93', '3', '0', '2024-04-22 12:20:36', '2024-04-22 12:20:36'),
(83, '1', '93', '3', '0', '2024-04-22 12:21:28', '2024-04-22 12:21:28'),
(84, '1', '93', '3', '0', '2024-04-22 12:21:36', '2024-04-22 12:21:36'),
(85, '1', '93', '3', '0', '2024-04-22 12:22:33', '2024-04-22 12:22:33'),
(86, '1', '93', '3', '0', '2024-04-22 12:23:27', '2024-04-22 12:23:27'),
(87, '1', '93', '3', '0', '2024-04-22 12:24:46', '2024-04-22 12:24:46'),
(88, '1', '93', '3', '0', '2024-04-22 12:25:00', '2024-04-22 12:25:00'),
(89, '1', '93', '3', '0', '2024-04-22 12:25:14', '2024-04-22 12:25:14'),
(90, '1', '93', '3', '0', '2024-04-22 12:25:34', '2024-04-22 12:25:34'),
(91, '1', '93', '3', '0', '2024-04-22 12:25:55', '2024-04-22 12:25:55'),
(92, '1', '93', '3', '0', '2024-04-22 12:27:23', '2024-04-22 12:27:23'),
(93, '1', '93', '3', '0', '2024-04-22 12:27:54', '2024-04-22 12:27:54'),
(94, '1', '93', '3', '0', '2024-04-22 12:28:04', '2024-04-22 12:28:04'),
(95, '1', '93', '3', '0', '2024-04-22 12:28:26', '2024-04-22 12:28:26'),
(96, '1', '93', '3', '0', '2024-04-22 12:28:50', '2024-04-22 12:28:50'),
(97, '1', '93', '3', '0', '2024-04-22 12:32:07', '2024-04-22 12:32:07'),
(98, '1', '95', '0', '138', '2024-05-08 12:34:26', '2024-05-08 12:34:26');

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `description_ar` varchar(255) NOT NULL,
  `description_en` varchar(255) NOT NULL,
  `metadata_ar` varchar(255) NOT NULL,
  `metadata_en` varchar(255) NOT NULL,
  `keywords_ar` varchar(255) NOT NULL,
  `keywords_en` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `categories`
--

INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `description_ar`, `description_en`, `metadata_ar`, `metadata_en`, `keywords_ar`, `keywords_en`, `image`, `parent_id`, `ordering`, `status`, `created_at`, `updated_at`) VALUES
(14, 'دمى وشخصيات', 'Dolls and characters', 'دمى وشخصيات', 'Dolls and characters', 'دمى وشخصيات', 'Dolls and characters', 'دمى وشخصيات', 'Dolls and characters', 'Y2ej1qItbe6eLHwKDE19Dli7lK0vfdiGDBzwpoRz.png', '15', 11, 'active', '2023-09-07 10:50:14', '2024-04-04 09:32:14'),
(13, 'سيارات', 'Cars', 'Voluptatibus assumen', 'Incidunt animi sed', 'Et eligendi assumend', 'Sit eos officiis qu', 'Adipisicing deserunt', 'Qui tempora ut conse', 'p3xqSBURkOvtRYYhNuPwIWVUI2hLwh6wiwBHGSxs.png', '12', 6, 'active', '2023-09-07 10:21:07', '2024-04-04 09:32:37'),
(18, 'العاب خشبية', 'wood games', 'العاب خشبية للاطفال', 'العاب خشبية للاطفال', 'العاب خشبية للاطفال', 'العاب خشبية للاطفال', 'العاب خشبية للاطفال', 'العاب خشبية للاطفال', 'Cm0Ial429iyE8zSk7ogs8OtJTeEtstiBE03Oz13S.png', '17', 5, 'active', '2024-02-13 11:57:23', '2024-04-04 09:32:55');

-- --------------------------------------------------------

--
-- بنية الجدول `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `country_id` varchar(255) NOT NULL,
  `governorate_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `cities`
--

INSERT INTO `cities` (`id`, `name_ar`, `name_en`, `country_id`, `governorate_id`, `created_at`, `updated_at`) VALUES
(1, 'المنصورة', 'El Mansoura', '3', '3', '2023-03-05 13:17:08', '2023-03-05 13:17:53'),
(2, 'المنصورة', NULL, '6', '5', '2024-01-23 16:10:48', '2024-01-23 16:10:48');

-- --------------------------------------------------------

--
-- بنية الجدول `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `keywords_ar` varchar(255) NOT NULL,
  `keywords_en` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `companies`
--

INSERT INTO `companies` (`id`, `name_ar`, `name_en`, `image`, `ordering`, `keywords_ar`, `keywords_en`, `created_at`, `updated_at`) VALUES
(1, 'ابل', 'apple', 'hwY1rDsg6JLNzPkl7pnn2EwF37weghSE4c3oTt0r.jpg', 1, 'ابل', 'apple', '2023-02-22 22:15:48', '2023-02-22 22:16:14'),
(2, 'hp', 'hp', 'QfzStTyYsZPWXg6O4vAuFiSYknPujstg0Z7HNYf5.jpg', 1, 'hp', 'hp', '2023-03-09 11:09:20', '2023-03-09 11:09:34');

-- --------------------------------------------------------

--
-- بنية الجدول `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `content` longtext NOT NULL,
  `status` varchar(191) DEFAULT '0',
  `user_id` varchar(20) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `company`, `title`, `country`, `address`, `phone`, `email`, `subject`, `content`, `status`, `user_id`, `user_type`, `created_at`, `updated_at`) VALUES
(12, 'test', 'ilaw', 'test', '3', NULL, '0558218579', 'abuobaidailaw@gmail.com', 'question', 'test', '1', NULL, NULL, '2022-08-04 16:48:03', '2022-08-04 20:48:36'),
(9, NULL, NULL, 'test', NULL, NULL, NULL, NULL, 'request', 'test', '1', '2', 'publisher', '2022-07-05 09:38:15', '2022-07-05 09:38:30'),
(6, 'hossam', 'babak', 'قانون الشركات', '224', NULL, '545412304', 'hossamdeeb46@gmail.com', 'question', 'السللام عليكم', '1', NULL, NULL, '2022-07-04 09:33:06', '2022-08-04 20:48:54'),
(7, 'test', 'test', 'test', '63', NULL, '1023452059', 'publisher1@ilawfair.com', 'question', 'test', '1', NULL, NULL, '2022-07-04 09:35:54', '2022-08-07 23:50:45'),
(47, 'omar', 'okmm', 'fsff', 'AW', NULL, '020200', 'omar@omar.dfv', 'question', 'fsfs', '1', NULL, NULL, '2022-10-03 20:21:47', '2022-10-04 13:41:47'),
(13, NULL, NULL, 'test', NULL, NULL, NULL, NULL, 'question', 'test', '1', '2', 'publisher', '2022-08-07 23:53:10', '2022-08-08 01:03:46'),
(14, 'Abuobaida', 'iLAW', 'TEST', '201', NULL, '0508750613', 'abuobaidailaw@gmail.com', 'request', 'TEST', '1', NULL, NULL, '2022-08-08 14:05:08', '2022-08-10 14:08:17'),
(15, NULL, NULL, 'test', NULL, NULL, NULL, NULL, 'suggest', 'السلام عليكم', '1', '13', 'publisher', '2022-09-27 15:29:03', '2022-09-27 15:58:15'),
(16, NULL, NULL, 'hi', NULL, NULL, NULL, NULL, 'question', 'hello', '1', '13', 'publisher', '2022-09-27 16:31:14', '2022-09-29 14:36:48'),
(17, NULL, NULL, 'test', NULL, NULL, NULL, NULL, 'suggest', 'test 1', '1', '2', 'publisher', '2022-09-27 18:25:46', '2022-09-29 14:36:39'),
(18, NULL, NULL, 'هلو', NULL, NULL, NULL, NULL, 'question', 'هلو', '1', '13', 'publisher', '2022-09-27 20:48:07', '2022-09-29 14:36:51'),
(48, 'manar', '...', '...', 'EG', NULL, '01026033826', 'manar.m.elhefnawy@gmail.com', 'complaint', '....', '1', NULL, NULL, '2022-10-03 20:56:05', '2022-10-04 13:43:34'),
(20, 'ezat', 'gdfg', 'ghfvhufg', '63', NULL, '1023123121', 'ezatellozy1@gmail.com', 'suggest', 'hftydf', '1', NULL, NULL, '2022-09-28 19:29:50', '2022-10-04 13:44:06'),
(21, 'ezat', 'gdfg', NULL, '3', NULL, '1023123121', 'ezatellozy1@gmail.com', 'suggest', 'dddd', '1', NULL, NULL, '2022-09-28 19:30:29', '2022-10-04 18:32:18'),
(22, 'dsad', 'gdfg', 'ghfvhufg', '2', NULL, '1023123121', 'ezatellozy1@gmail.com', 'suggest', 'dsadasd', '1', NULL, NULL, '2022-09-29 12:42:50', '2022-10-04 22:03:13'),
(23, 'ezat', 'gdfg', 'ghfvhufg', '2', NULL, '1023123121', 'ezatellozy1@gmail.com', 'question', 'asdd', '1', NULL, NULL, '2022-09-29 12:43:44', '2022-10-05 16:05:44'),
(24, 'ezat', 'fdsfsdf', 'ghfvhufg', '69', NULL, '1023123121', 'ezatell@gmail.com', 'question', 'fsdfsdfsd', '1', NULL, NULL, '2022-09-29 12:44:31', '2022-10-05 20:44:22'),
(25, 'ezat', 'gdfg', 'ghfvhufg', '1', NULL, '1023123121', 'ezatellozy1@gmail.com', 'suggest', 'fdgdfg', '1', NULL, NULL, '2022-09-29 12:48:32', '2022-10-07 01:26:41'),
(26, 'dsad', 'gdfg', 'ghfvhufg', '2', NULL, '1023123121', 'ezatellozy1@gmail.com', 'question', 'fsdfdsf', '1', NULL, NULL, '2022-09-29 12:49:39', '2022-10-11 13:45:03'),
(27, 'ezat', 'gdfg', 'ghfvhufg', '2', NULL, '1023123121', 'ezatellozy1@gmail.com', 'question', 'dasdasd', '1', NULL, NULL, '2022-09-29 12:50:36', '2022-10-11 17:38:55'),
(28, 'dsad', 'gdfg', 'dfskfhn', '2', NULL, '10212121', 'ezatell@gmail.com', 'question', 'vdskfnsd', '1', NULL, NULL, '2022-09-29 12:51:37', '2022-10-14 15:13:44'),
(29, 'ezat', 'fsdfsd', 'ghfvhufg', '18', NULL, '1023123121', 'ezatell@gmail.com', 'suggest', 'fsdfsdf', '1', NULL, NULL, '2022-09-29 13:17:23', '2022-10-11 18:04:56'),
(30, 'ezat', 'fds', 'fsdfsdfsdf', '2', NULL, '1023123121', 'ezatell@gmail.com', 'suggest', 'fsdfsdf', '1', NULL, NULL, '2022-09-29 13:17:52', '2022-10-16 21:20:15'),
(31, 'ezat', 'gdfg', 'fsdfsdf', '16', NULL, '15152111', 'ezatellozy1@gmail.com', 'request', 'fsdfsdfdsf', '1', NULL, NULL, '2022-09-29 13:18:14', '2022-10-16 22:07:37'),
(32, 'ezat', 'gdfg', 'ghfvhufg', '17', NULL, '1023123121', 'ezatellozy1@gmail.com', 'request', 'gfhg', '1', NULL, NULL, '2022-09-29 13:40:23', '2022-10-17 00:47:26'),
(33, 'محمد', NULL, NULL, '63', NULL, '01000000000', 'tester@technomasr.com', NULL, 'this is my message', '1', NULL, NULL, '2022-09-29 18:04:19', '2022-10-19 14:35:19'),
(34, 'محمد', NULL, NULL, '63', NULL, '01000000000', 'tester@technomasr.com', NULL, 'this is my message', '1', NULL, NULL, '2022-09-29 18:20:01', '2022-10-04 18:24:55'),
(35, 'sdegdsgs', 'dsfdf', 'sdfsdf', 'AM', NULL, '02000', 'doj@dskv.divhj', 'request', 'dffd', '1', NULL, NULL, '2022-09-29 18:22:07', '2022-10-19 22:20:35'),
(36, 'dhdhdh', 'dhxhh', 'dhdhdhhd', 'AR', NULL, '0191983', 'dhdhh@dhd.fhfh', 'complaint', 'ggfff', '1', NULL, NULL, '2022-09-29 22:08:43', '2022-10-19 22:20:40'),
(37, 'abuobaida', 'ilaw', 'Sharjah', 'AE', NULL, '0508750613', 'abuobaida@ilaw.ae', 'question', 'Test', '1', NULL, NULL, '2022-09-30 09:56:57', '2022-10-19 22:20:38'),
(38, 'Mustafa', 'iLAW', 'test', 'AE', NULL, '0508750613', 'abobeada@gmail.com', 'request', 'Test', '1', NULL, NULL, '2022-09-30 09:59:17', '2022-10-19 14:38:21'),
(39, 'omer', 'ilaw', 'test', 'SA', NULL, '0508750613', 'omer@ilaw.ae', 'suggest', 'test', '1', NULL, NULL, '2022-09-30 10:01:58', '2022-10-20 16:41:32'),
(42, 'خالد', NULL, NULL, 'AO', NULL, '0545412304', 'hossam@ilaw.ae', 'suggest', 'تعديل على التصنيفات', '1', NULL, NULL, '2022-10-03 12:59:18', '2022-10-20 16:42:19'),
(41, 'Abuobaida', 'ilaw', 'test', 'AE', NULL, '0508750613', 'mr.abuobaidamustafa@gmail.com', 'question', 'Test', '1', NULL, NULL, '2022-10-03 10:38:17', '2022-10-20 16:53:28'),
(43, 'test10', NULL, NULL, 'AQ', NULL, '862866377', 'test@google.ae', 'suggest', 'test10', '1', NULL, NULL, '2022-10-03 13:01:36', '2022-10-24 14:07:33'),
(44, 'تيست', 'test', 'fufj', 'AO', NULL, '584848', 'mr.abuobaidamustafa@gmail.com', 'request', 'Tjrrjj', '1', NULL, NULL, '2022-10-03 13:03:27', '2022-10-11 18:04:30'),
(45, 'ttt', 'hhg', 'jhhh', 'AI', NULL, '8687654', 'tt@t.com', 'complaint', 'hhhhv', '1', NULL, NULL, '2022-10-03 13:04:32', '2022-10-24 14:31:20'),
(46, NULL, NULL, 'النريخ', NULL, NULL, NULL, NULL, 'suggest', 'كيفك', '1', '13', 'publisher', '2022-10-03 17:45:15', '2022-10-03 17:45:34'),
(49, 'hy', 'esgt', 'sefgs', 'AM', NULL, '00140', 'fthdf@trh.ry', 'question', 'fjf', '1', NULL, NULL, '2022-10-03 21:04:19', '2022-10-24 14:31:17'),
(51, 'manar', '......', '..........', '63', NULL, '01026033826', 'manar.m.elhefnawy@gmail.com', 'complaint', '...........', '1', NULL, NULL, '2022-10-03 21:08:11', '2022-10-04 01:11:41'),
(52, 'test', 'test', 'test', 'AE', NULL, '0508750613', 'app@ilaw.ae', 'suggest', 'Test', '1', NULL, NULL, '2022-10-04 09:43:14', '2022-10-04 13:44:14'),
(53, NULL, NULL, 'eddfe', NULL, NULL, NULL, NULL, 'suggest', 'efefe', '1', '13', 'publisher', '2022-10-04 18:33:38', '2022-10-04 18:34:10'),
(54, 'manar', 'manar', '.....', 'EG', NULL, '010268938632', 'rwad.solutions8@gmail.com', 'complaint', 'hi,we test', '1', NULL, NULL, '2022-10-06 18:02:43', '2022-10-06 22:17:06'),
(55, NULL, NULL, 'test', NULL, NULL, NULL, NULL, 'suggest', 'test', '1', '2', 'publisher', '2022-10-24 15:11:42', '2022-10-24 15:11:59'),
(56, 'hossam', 'babak', 'قانون الشركات', '4', NULL, '0545412304', 'hossam@ilaw.ae', 'complaint', 'الاقلام', '1', NULL, NULL, '2022-10-24 13:07:46', '2022-10-24 17:09:16'),
(58, 'manar', '......', 'testing', '63', NULL, '010230130', 'technomasr4@gmail.com', 'suggest', 'we test the site', '1', NULL, NULL, '2022-11-06 19:25:12', '2022-11-06 23:25:38'),
(59, 'manar', '......', 'testing', '247', NULL, '0103230000', 'test@technomasr.com', 'question', 'test', '1', NULL, NULL, '2022-11-07 13:03:52', '2022-11-07 17:04:12'),
(60, 'Cameron Hendricks', NULL, NULL, NULL, 'Incidunt alias culp', '+1 (478) 861-1102', 'tunydoh@mailinator.com', NULL, 'Eveniet autem disti', '1', NULL, NULL, '2023-03-24 01:24:16', '2023-08-27 17:32:37'),
(61, 'Jaime Mcgowan', NULL, NULL, NULL, 'Voluptatum doloribus', '+1 (279) 537-4038', 'wejevape@mailinator.com', NULL, 'Dolore architecto ne', '1', NULL, NULL, '2023-03-25 00:05:38', '2023-08-27 17:32:51'),
(62, 'Brett Hatfield', NULL, NULL, NULL, 'Sint exercitation i', '+1 (882) 297-9174', 'qypel@mailinator.com', NULL, 'Quam ea enim in et t', '1', NULL, NULL, '2023-03-25 00:05:47', '2023-08-27 17:33:04'),
(63, 'Ursa Kerr', NULL, NULL, NULL, 'Accusantium ex molli', '+1 (929) 642-6475', 'xywevinyp@mailinator.com', NULL, 'Aperiam elit occaec', '1', NULL, NULL, '2023-03-25 00:10:38', '2023-08-28 11:03:19'),
(64, 'Theodore Melton', NULL, NULL, NULL, 'Harum vero velit eu', '+1 (874) 728-5371', 'daru@mailinator.com', NULL, 'Voluptas dolores ita', '1', NULL, NULL, '2023-04-03 16:01:20', '2023-08-08 10:50:41'),
(65, 'manar', NULL, NULL, NULL, 'المنصورة', '01064691953', 'admin@ilawfair.com', NULL, 'helllo', '1', NULL, NULL, '2023-08-28 11:03:49', '2023-08-28 11:04:08'),
(66, 'Benny Hedge', NULL, NULL, NULL, 'Ul. Grottgera 81', '53 719 13 27', 'benny.hedge73@gmail.com', NULL, 'You saw this message and I can send your message to millions of sites just like this. It\'s amazing and affordable.For more information, please email me or skype me below.\r\n\r\nP. Stewart\r\nEmail: mgdazg@gomail2.xyz\r\nSkype: live:.cid.2bc4ed65aa40fb3b', '1', NULL, NULL, '2024-02-09 13:09:29', '2024-02-10 09:38:32'),
(67, 'Devon Klinger', NULL, NULL, NULL, '96 Middlewich Road', '070 7683 9939', 'devon.klinger@hotmail.com', NULL, 'You saw this message and I can send your message to millions of sites just like this. It\'s amazing and affordable.For more information, please email me or skype me below.\r\n\r\nP. Stewart\r\nEmail: gm1k5a@gomail2.xyz\r\nSkype: live:.cid.2bc4ed65aa40fb3b', '1', NULL, NULL, '2024-02-19 05:22:43', '2024-03-25 12:58:09'),
(68, 'Kak_nwst', NULL, NULL, NULL, 'https://www.smclinic.ru', '85845115874', 'outakqevost@xruma.store', NULL, 'Простые рецепты от бородавок на лице и теле. \r\nВиды бородавок фото <a href=https://smclinic.ru/>https://smclinic.ru/</a> .', '1', NULL, NULL, '2024-05-30 02:10:23', '2024-05-30 16:34:29'),
(69, 'Kak_gbEa', NULL, NULL, NULL, 'https://plastica.onclinic.ru', '88441692146', 'xmmftshcpEa@xruma.com', NULL, 'Научные факты об удалении бородавок. \r\nВеррукацид от бородавок <a href=http://www.plastica.onclinic.ru>http://www.plastica.onclinic.ru</a> .', '0', NULL, NULL, '2024-05-30 02:10:23', '2024-05-30 02:10:23'),
(70, 'Phil Stewart', NULL, NULL, NULL, 'Ausserpuhret 49', '342-123-4456', 'noreplyhere@aol.com', NULL, 'Hi, I was wondering if you could benefit from me blasting your ad to millions of contact forms just like I blasted my message to yours just now? Check out my site below for details on how it works.\r\n\r\nhttp://wq3sf4.blast-to-forms.xyz', '0', NULL, NULL, '2024-06-27 06:18:47', '2024-06-27 06:18:47'),
(71, 'Asa Michalski', NULL, NULL, NULL, 'Ul. Tatarakowa 43', '789108429', 'asa.michalski90@gmail.com', NULL, 'Hello,\r\n\r\nIt is with sad regret that after 12 years, LeadsMax.biz is shutting down.\r\n\r\nWe have made all our databases available on our website.\r\n\r\n25 Million companies\r\n527 Million People\r\n\r\nLeadsMax.biz', '0', NULL, NULL, '2024-07-16 09:09:58', '2024-07-16 09:09:58'),
(72, 'SpeedyIndexBot', NULL, NULL, NULL, 'https://bit.ly/3OV6orJ', '85172118172', 'speedyindexbot@gmail.com', NULL, 'https://bit.ly/3OV6orJ SpeedyIndexBot - service for indexing of links in Google. First result in 48 hours. 200 links for FREE.', '0', NULL, NULL, '2024-08-08 23:24:21', '2024-08-08 23:24:21'),
(73, 'Phil Stewart', NULL, NULL, NULL, 'Haya Van Somerenstraat 70', '342-123-4456', 'noreplyhere@aol.com', NULL, 'Hey, want your ad to reach millions of contact forms? Just like you\'re reading this message, others can read yours too. Visit my site below for details.\r\n\r\nhttp://kmta9g.contactblasting.xyz', '0', NULL, NULL, '2024-08-19 12:14:16', '2024-08-19 12:14:16'),
(74, 'Nicolette Givens - https://pr-32.de/#853', NULL, NULL, NULL, 'https://pr-32.de/#184', '82671735814', 'alexeyfinogenov1488229@gmail.com', NULL, 'Isabelle Longo - https://pr-32.de/#314', '0', NULL, NULL, '2024-09-04 08:13:55', '2024-09-04 08:13:55'),
(75, '<strong><a href=\"https://pr-site.com\">primer-1</a></strong>', NULL, NULL, NULL, '<strong><a href=\"https://pr-site.com\">primer-3</a></strong>', '88898838795', 'thomaskingial13@gmail.com', NULL, '<strong><a href=\"https://pr-site.com\">primer-8</a></strong>', '0', NULL, NULL, '2024-09-25 15:06:41', '2024-09-25 15:06:41'),
(76, 'YuzоеQuile', NULL, NULL, NULL, 'https://yuzovka.org', '84969228968', 'one22@donetsk365.ru', NULL, 'Hello. . <a href=https://yuzovka.org>yuzovka</a> \r\n<a href=https://yuzovka.org/>zwz4753674</a> \r\nhttps://yuzovka.org   zwz4753674', '0', NULL, NULL, '2024-10-31 23:10:56', '2024-10-31 23:10:56'),
(77, 'Danielhip', NULL, NULL, NULL, 'https://tomyaccount.com', '83978764485', 'bthnegdxrbx2fn5@tempmail.us.com', NULL, 'With tomyAccount.com, you can get verified accounts in just minutes. Our service is fast, secure, and easy to use. Visit tomyAccount.com and secure your accounts now! \r\n \r\nTap here: \r\n \r\nhttps://tomyAccount.com \r\n \r\nMuch appreciated!', '0', NULL, NULL, '2024-11-05 05:39:27', '2024-11-05 05:39:27'),
(78, 'RoDedge', NULL, NULL, NULL, 'https://google.com/?Dedge', '82616686791', 'emilyjonesg89@gmail.com', NULL, 'Can I ask a quick question about your site? https://google.com/?Dedge \r\n \r\n \r\nRoDedge', '0', NULL, NULL, '2024-12-05 19:34:17', '2024-12-05 19:34:17');

-- --------------------------------------------------------

--
-- بنية الجدول `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `nicename` varchar(255) DEFAULT NULL,
  `numcode` varchar(255) DEFAULT NULL,
  `phonecode` varchar(255) DEFAULT NULL,
  `iso` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `countries`
--

INSERT INTO `countries` (`id`, `country_id`, `name_ar`, `name_en`, `nicename`, `numcode`, `phonecode`, `iso`, `created_at`, `updated_at`) VALUES
(9, '1', 'المملكة العربية السعودية', 'Saudi Arabia', NULL, '+966', '+966', 'SA', '2024-04-15 10:57:19', '2025-01-27 11:00:13');

-- --------------------------------------------------------

--
-- بنية الجدول `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon` varchar(255) NOT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `max_date` varchar(255) NOT NULL,
  `max_clients` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`, `percentage`, `amount`, `max_date`, `max_clients`, `created_at`, `updated_at`) VALUES
(1, 'Quod nulla molestiae', '54', '22', '2023-02-25', '19', '2023-02-23 10:57:21', '2023-02-23 10:57:21'),
(2, '123', '50', '800', '2023-03-22', '55', '2023-03-09 11:58:42', '2023-03-09 11:58:42'),
(3, '111', '50', NULL, '2023-03-31', '0', '2023-03-25 22:17:07', '2023-03-25 22:17:07'),
(4, '1234', '40', '200', '2023-04-20', '20', '2023-04-13 02:16:38', '2023-04-13 02:16:38'),
(5, 'esraa', '10', '20', '2024-02-10', '10', '2024-01-29 11:27:17', '2024-01-29 11:27:17'),
(6, 'Manar', '20', NULL, '2024-02-24', '0', '2024-02-21 11:24:11', '2024-02-21 11:24:11');

-- --------------------------------------------------------

--
-- بنية الجدول `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `sympl_ar` varchar(255) DEFAULT NULL,
  `sympl_en` varchar(255) DEFAULT NULL,
  `primary` varchar(255) NOT NULL DEFAULT '0',
  `transfer_rate` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `currencies`
--

INSERT INTO `currencies` (`id`, `name_ar`, `name_en`, `sympl_ar`, `sympl_en`, `primary`, `transfer_rate`, `country`, `created_at`, `updated_at`) VALUES
(1, 'الريال السعودي', 'Saudi Riyal', 'ر.س', 'SAR', '1', '1', '9', '2023-02-27 11:08:55', '2025-01-22 11:04:44');

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- بنية الجدول `f_a_qs`
--

CREATE TABLE `f_a_qs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_ar` varchar(255) NOT NULL,
  `question_en` varchar(255) DEFAULT NULL,
  `question_fr` varchar(255) DEFAULT NULL,
  `answer_ar` varchar(255) NOT NULL,
  `answer_en` varchar(255) DEFAULT NULL,
  `answer_fr` varchar(255) DEFAULT NULL,
  `ranking` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `f_a_qs`
--

INSERT INTO `f_a_qs` (`id`, `question_ar`, `question_en`, `question_fr`, `answer_ar`, `answer_en`, `answer_fr`, `ranking`, `type`, `section`, `status`, `created_at`, `updated_at`) VALUES
(1, 'تجربه', 'test', NULL, '<p>ghjkl;</p>', '<p>fghjk</p>', NULL, '1', NULL, NULL, NULL, '2023-03-09 12:00:25', '2023-03-09 12:00:25'),
(2, 'تجربه 2', 'test 2', NULL, '<p>تجربه 2</p>', '<p>test 2</p>', NULL, '1', NULL, NULL, NULL, '2023-03-23 22:18:17', '2023-03-23 22:18:17');

-- --------------------------------------------------------

--
-- بنية الجدول `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `type` enum('staticPage','category','link') NOT NULL,
  `mainElement` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `items`
--

INSERT INTO `items` (`id`, `title_ar`, `title_en`, `type`, `mainElement`, `link`, `category_id`, `page_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(39, 'سياسه الاسترجاع', 'سياسه الاسترجاع', 'staticPage', '0', NULL, 14, 5, 6, '2024-05-23 14:02:30', '2024-05-23 14:02:30');

-- --------------------------------------------------------

--
-- بنية الجدول `lengths`
--

CREATE TABLE `lengths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `unit_length_ar` varchar(255) NOT NULL,
  `unit_length_en` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `primary` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `lengths`
--

INSERT INTO `lengths` (`id`, `title_ar`, `title_en`, `unit_length_ar`, `unit_length_en`, `value`, `primary`, `created_at`, `updated_at`) VALUES
(1, 'سنتيمتر', 'Centimeter', 'سم', 'cm', '1', 0, '2023-02-19 11:15:07', '2023-03-09 10:57:21'),
(2, 'مللي متر', 'millimeter', 'مم', 'mm', '1000', 0, '2023-02-19 11:15:58', '2023-02-19 11:15:58'),
(3, 'متر', 'meter', 'م', 'm', '1', 1, '2023-03-09 10:57:13', '2023-03-09 10:57:21');

-- --------------------------------------------------------

--
-- بنية الجدول `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `place` enum('header','footer1','footer2') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `menus`
--

INSERT INTO `menus` (`id`, `title_ar`, `title_en`, `place`, `created_at`, `updated_at`) VALUES
(1, 'أهم الأقسام', 'important sections', 'header', '2023-03-15 16:51:01', '2023-03-15 17:15:33'),
(5, 'الاقسام', 'Category', 'footer1', '2023-03-25 23:41:50', '2023-03-25 23:41:50'),
(6, 'الصفحات', 'pages', 'footer2', '2023-03-25 23:43:55', '2023-03-25 23:43:55');

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(52, '2019_12_14_000001_create_personal_access_tokens_table', 13),
(5, '2022_06_07_165740_create_roles_table', 1),
(6, '2022_06_07_165808_create_permissions_table', 1),
(7, '2022_06_07_165835_create_role_permissions_table', 1),
(8, '2022_06_08_203325_create_countries_table', 1),
(9, '2022_06_09_100938_create_governorates_table', 1),
(10, '2022_06_09_101416_create_cities_table', 1),
(11, '2022_06_10_003429_create_currencies_table', 1),
(12, '2022_06_10_005227_create_writers_table', 1),
(13, '2022_06_10_010359_create_sections_table', 1),
(14, '2022_06_11_003547_create_f_a_qs_table', 1),
(15, '2022_06_11_022745_create_pages_table', 1),
(16, '2022_06_11_031251_create_contact_messages_table', 1),
(17, '2022_06_11_054130_create_settings_table', 1),
(18, '2022_06_11_171653_create_user_addresses_table', 1),
(19, '2022_06_11_203454_create_user_payment_methods_table', 1),
(20, '2022_06_11_233917_create_books_table', 1),
(21, '2022_06_12_002841_create_book_features_table', 1),
(22, '2022_06_15_132358_create_publisher_payment_methods_table', 1),
(23, '2022_06_15_132757_create_publisher_payments_histories_table', 1),
(55, '2022_06_15_161605_create_orders_table', 14),
(26, '2022_06_15_171913_create_book_reviews_table', 1),
(27, '2023_02_08_094420_create_lengths_table', 1),
(28, '2023_02_08_134035_create_weights_table', 1),
(29, '2023_02_09_081025_create_companies_table', 1),
(30, '2023_02_09_113134_create_categories_table', 1),
(31, '2023_02_09_135609_create_specification_types_table', 1),
(32, '2023_02_09_142353_create_product_specifications_table', 1),
(33, '2023_02_12_115244_create_option_categories_table', 1),
(34, '2023_02_12_115827_create_option_types_table', 1),
(51, '2023_02_25_182313_create_product_option_table', 12),
(50, '2023_02_24_141016_create_option_values_table', 11),
(37, '2023_02_16_080141_create_tax_rates_table', 1),
(38, '2023_02_16_090910_create_tax_types_table', 1),
(39, '2023_02_16_115817_create_tax_costs_table', 1),
(41, '2023_02_19_075010_create_products_table', 2),
(42, '2023_02_19_203408_create_product_discounts_table', 3),
(43, '2023_02_19_213946_create_product_special_offers_table', 4),
(44, '2023_02_19_221120_create_product_images_table', 5),
(45, '2023_02_20_081401_create_specifications_table', 6),
(46, '2023_02_20_083552_create_product_specifications_table', 7),
(49, '2023_02_24_134624_create_options_table', 10),
(48, '2023_02_23_085401_create_coupons_table', 9),
(56, '2022_06_15_161841_create_order_items_table', 14),
(58, '2023_03_29_131552_create_wishlists_table', 15),
(59, '2023_04_11_112634_create_product_reviews_table', 16);

-- --------------------------------------------------------

--
-- بنية الجدول `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('9bca4f1b-15a9-4119-882f-7bcd7691317f', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisher\",\"linked_id\":20,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 Mohamed Sultan \\u0628\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0646\\u0635\\u0629 \\u0643\\u0646\\u0627\\u0634\\u0631 \\u0648\\u0628\\u062d\\u0627\\u062c\\u0629 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0648\\u0627\\u0644\\u0645\\u0648\\u0627\\u0641\\u0642\\u0629.\",\"date\":\"2022-07-01\",\"time\":\"21:18\"}', '2022-07-01 20:58:08', '2022-07-01 20:18:36', '2022-07-01 20:58:08'),
('cef8bb50-7c02-4f91-8f9c-00fc5fde2db3', 'App\\Notifications\\PublisherNotifications', 'App\\User', 20, '{\"type\":\"activatePublisherAccount\",\"linked_id\":20,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0645\\u062d\\u0645\\u062f \\u0633\\u0644\\u0637\\u0627\\u0646 \\u0648\\u0647\\u0648 \\u0623\\u062d\\u062f \\u0627\\u0644\\u0645\\u062f\\u0631\\u0627\\u0621 \\u0628\\u062a\\u0641\\u0639\\u064a\\u0644 \\u062d\\u0633\\u0627\\u0628\\u0643 \\u0628\\u0646\\u062c\\u0627\\u062d.\",\"date\":\"2022-07-01\",\"time\":\"22:23\"}', '2022-07-01 21:27:40', '2022-07-01 21:23:34', '2022-07-01 21:27:40'),
('717167bc-2840-43e8-b5fb-caa8039558b0', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":2,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-07-02\",\"time\":\"01:27\"}', '2022-07-02 01:05:39', '2022-07-02 00:27:18', '2022-07-02 01:05:39'),
('02828027-ddac-4d36-a601-1819d1ea778d', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":2,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-07-02\",\"time\":\"02:06\"}', '2022-07-02 01:06:38', '2022-07-02 01:06:31', '2022-07-02 01:06:38'),
('4d363945-ec01-4176-8e5a-ddb79d17faee', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":6,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-07-02\",\"time\":\"02:07\"}', '2022-07-02 01:07:18', '2022-07-02 01:07:11', '2022-07-02 01:07:18'),
('a69df79b-642b-46d6-adcb-e2c2bb11db64', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newWriter\",\"linked_id\":3,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0643\\u0627\\u062a\\u0628 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-07-02\",\"time\":\"02:31\"}', '2022-07-02 05:38:32', '2022-07-02 01:31:32', '2022-07-02 05:38:32'),
('9679dcc2-c30c-47b5-b9e4-f58df76064dc', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":4,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-07-03\",\"time\":\"16:44\"}', '2022-07-03 17:52:38', '2022-07-03 17:44:40', '2022-07-03 17:52:38'),
('5805da45-e7c8-412e-9b58-797d95faa747', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newWriter\",\"linked_id\":5,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0643\\u0627\\u062a\\u0628 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-07-03\",\"time\":\"16:45\"}', '2022-07-03 17:52:32', '2022-07-03 17:45:28', '2022-07-03 17:52:32'),
('867bdbd7-b4b9-4175-b369-07e0bd86e089', 'App\\Notifications\\PublisherNotifications', 'App\\User', 2, '{\"type\":\"activatePublisherAccount\",\"linked_id\":2,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0645\\u062d\\u0645\\u062f \\u0633\\u0644\\u0637\\u0627\\u0646 \\u0648\\u0647\\u0648 \\u0623\\u062d\\u062f \\u0627\\u0644\\u0645\\u062f\\u0631\\u0627\\u0621 \\u0628\\u062a\\u0641\\u0639\\u064a\\u0644 \\u062d\\u0633\\u0627\\u0628\\u0643 \\u0628\\u0646\\u062c\\u0627\\u062d.\",\"date\":\"2022-07-04\",\"time\":\"15:05\"}', '2022-07-04 16:09:05', '2022-07-04 16:05:39', '2022-07-04 16:09:05'),
('4b3242bc-b348-466a-8c0f-a8108d1531dc', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":8,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u0645\\u062d\\u0645\\u062f \\u0645\\u062d\\u0645\\u0648\\u062f \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-07-04\",\"time\":\"15:14\"}', '2022-07-04 16:14:16', '2022-07-04 16:14:06', '2022-07-04 16:14:16'),
('431fbcc8-cc27-4ed3-aef2-e0678bbc94c2', 'App\\Notifications\\PublisherNotifications', 'App\\User', 2, '{\"type\":\"activatePublisherAccount\",\"linked_id\":2,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0645\\u062d\\u0645\\u062f \\u0633\\u0644\\u0637\\u0627\\u0646 \\u0648\\u0647\\u0648 \\u0623\\u062d\\u062f \\u0627\\u0644\\u0645\\u062f\\u0631\\u0627\\u0621 \\u0628\\u062a\\u0641\\u0639\\u064a\\u0644 \\u062d\\u0633\\u0627\\u0628\\u0643 \\u0628\\u0646\\u062c\\u0627\\u062d.\",\"date\":\"2022-07-05\",\"time\":\"08:36\"}', '2022-07-05 12:18:58', '2022-07-05 09:36:28', '2022-07-05 12:18:58'),
('8c6ba7f6-46f1-499d-968e-38f7eee4dcd1', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":9,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-07-05\",\"time\":\"08:38\"}', '2022-07-05 09:38:30', '2022-07-05 09:38:15', '2022-07-05 09:38:30'),
('e2e16d19-e8f6-4ffb-a4cc-f2b15d0eda90', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":11,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-07-05\",\"time\":\"08:50\"}', '2022-07-05 09:51:10', '2022-07-05 09:50:44', '2022-07-05 09:51:10'),
('15cc1224-57a0-4f40-b9dd-96ef767e2442', 'App\\Notifications\\PublisherNotifications', 'App\\User', 2, '{\"type\":\"activatePublisherAccount\",\"linked_id\":2,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0645\\u062d\\u0645\\u062f \\u0633\\u0644\\u0637\\u0627\\u0646 \\u0648\\u0647\\u0648 \\u0623\\u062d\\u062f \\u0627\\u0644\\u0645\\u062f\\u0631\\u0627\\u0621 \\u0628\\u062a\\u0641\\u0639\\u064a\\u0644 \\u062d\\u0633\\u0627\\u0628\\u0643 \\u0628\\u0646\\u062c\\u0627\\u062d.\",\"date\":\"2022-07-05\",\"time\":\"12:14\"}', '2022-07-05 13:14:29', '2022-07-05 13:14:18', '2022-07-05 13:14:29'),
('d01dd762-5e69-4245-871b-d8429423865c', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":13,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-08-07\",\"time\":\"18:53\"}', '2022-08-08 01:03:46', '2022-08-07 23:53:10', '2022-08-08 01:03:46'),
('316138c6-8def-42ad-9a5e-8769d6ed7489', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newWriter\",\"linked_id\":6,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0643\\u0627\\u062a\\u0628 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-08-07\",\"time\":\"20:01\"}', '2022-08-08 01:03:39', '2022-08-08 01:01:09', '2022-08-08 01:03:39'),
('b96a62c7-f74f-4434-a51b-89e76de6fbc2', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":15,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u062d\\u0633\\u0627\\u0645 \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-09-27\",\"time\":\"10:29\"}', '2022-09-27 15:58:15', '2022-09-27 15:29:03', '2022-09-27 15:58:15'),
('3419e91e-8777-4f7c-8719-d2c2a6fb5970', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newWriter\",\"linked_id\":10,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u062d\\u0633\\u0627\\u0645 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0643\\u0627\\u062a\\u0628 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-09-27\",\"time\":\"10:42\"}', '2022-09-27 15:57:59', '2022-09-27 15:42:24', '2022-09-27 15:57:59'),
('ec0958f6-21b7-403f-959e-363d6d92b07d', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newWriter\",\"linked_id\":11,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u062d\\u0633\\u0627\\u0645 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0643\\u0627\\u062a\\u0628 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-09-27\",\"time\":\"11:19\"}', '2022-09-29 14:36:42', '2022-09-27 16:19:20', '2022-09-29 14:36:42'),
('85da72cd-6341-4793-a4c1-873e65881721', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":16,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u062d\\u0633\\u0627\\u0645 \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-09-27\",\"time\":\"11:31\"}', '2022-09-29 14:36:47', '2022-09-27 16:31:14', '2022-09-29 14:36:47'),
('6895d39d-5d69-4a15-b86f-1fc1f5fa5afe', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":17,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-09-27\",\"time\":\"13:25\"}', '2022-09-29 14:36:38', '2022-09-27 18:25:46', '2022-09-29 14:36:38'),
('93a3e902-2437-483f-9ad7-6ae7245fc7d3', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":18,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u062d\\u0633\\u0627\\u0645 \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-09-27\",\"time\":\"15:48\"}', '2022-09-29 14:36:51', '2022-09-27 20:48:07', '2022-09-29 14:36:51'),
('11c5de45-c08d-4972-8b3d-2ce7ff081c4f', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":19,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u062d\\u0633\\u0627\\u0645 \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-09-27\",\"time\":\"15:48\"}', '2022-09-29 14:36:34', '2022-09-27 20:48:44', '2022-09-29 14:36:34'),
('4c6c2756-1ba6-4a0a-89b2-7f59a2ce5dc0', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":40,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-09-30\",\"time\":\"11:18\"}', '2022-10-02 22:20:50', '2022-09-30 16:18:33', '2022-10-02 22:20:50'),
('9acb3a57-d850-4b2f-b91a-cf35411b4e32', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newWriter\",\"linked_id\":13,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0643\\u0627\\u062a\\u0628 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-02\",\"time\":\"14:06\"}', '2022-10-02 20:25:01', '2022-10-02 19:06:06', '2022-10-02 20:25:01'),
('56054d36-2d98-4e45-a798-64103a55d7cc', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":46,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u062d\\u0633\\u0627\\u0645 \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-10-03\",\"time\":\"12:45\"}', '2022-10-03 17:45:34', '2022-10-03 17:45:15', '2022-10-03 17:45:34'),
('11003824-61d2-4193-bd59-1f480413cb21', 'App\\Notifications\\AdminNotifications', 'App\\User', 84, '{\"type\":\"resetPasswordCode\",\"linked_id\":84,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-03\",\"time\":\"14:44\"}', NULL, '2022-10-03 19:44:18', '2022-10-03 19:44:18'),
('7fd54d8e-3214-48f5-80c3-0f702bb843ba', 'App\\Notifications\\AdminNotifications', 'App\\User', 86, '{\"type\":\"resetPasswordCode\",\"linked_id\":86,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-03\",\"time\":\"15:40\"}', NULL, '2022-10-03 20:40:46', '2022-10-03 20:40:46'),
('57c6f9fe-e0fd-42b5-bd04-a07d6d688fe9', 'App\\Notifications\\AdminNotifications', 'App\\User', 86, '{\"type\":\"resetPasswordCode\",\"linked_id\":86,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-03\",\"time\":\"15:52\"}', NULL, '2022-10-03 20:52:07', '2022-10-03 20:52:07'),
('53f83b12-c2dc-4167-bb9a-7d0bf4849aea', 'App\\Notifications\\AdminNotifications', 'App\\User', 72, '{\"type\":\"resetPasswordCode\",\"linked_id\":72,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-04\",\"time\":\"06:47\"}', NULL, '2022-10-04 11:47:19', '2022-10-04 11:47:19'),
('6be4c1f6-8b71-496c-b9b9-b69366fd1ebf', 'App\\Notifications\\AdminNotifications', 'App\\User', 89, '{\"type\":\"resetPasswordCode\",\"linked_id\":89,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-04\",\"time\":\"06:47\"}', NULL, '2022-10-04 11:47:34', '2022-10-04 11:47:34'),
('e72b3078-f3a6-428c-b52b-e80d22eb9467', 'App\\Notifications\\AdminNotifications', 'App\\User', 89, '{\"type\":\"ResetPasswordSuccess\",\"linked_id\":89,\"text\":\"\\u062a\\u0645\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"date\":\"2022-10-04\",\"time\":\"06:48\"}', NULL, '2022-10-04 11:48:12', '2022-10-04 11:48:12'),
('9378f144-c933-4c4a-96f3-45dd51a765bd', 'App\\Notifications\\AdminNotifications', 'App\\User', 72, '{\"type\":\"ResetPasswordSuccess\",\"linked_id\":72,\"text\":\"\\u062a\\u0645\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"date\":\"2022-10-04\",\"time\":\"06:48\"}', NULL, '2022-10-04 11:48:31', '2022-10-04 11:48:31'),
('4203008c-8364-4ac3-9da9-fcee7c9651f7', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":53,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u062d\\u0633\\u0627\\u0645 \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-10-04\",\"time\":\"13:33\"}', '2022-10-04 18:34:09', '2022-10-04 18:33:38', '2022-10-04 18:34:09'),
('5d2feeaf-f7d9-449c-bba1-8cbe82dc2c28', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"resetPasswordCode\",\"linked_id\":96,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-06\",\"time\":\"11:32\"}', NULL, '2022-10-06 16:32:18', '2022-10-06 16:32:18'),
('030bb3f7-3335-4e3f-89d9-1c3e9426ba21', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"resetPasswordCode\",\"linked_id\":96,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-06\",\"time\":\"12:39\"}', NULL, '2022-10-06 17:39:53', '2022-10-06 17:39:53'),
('09a23c2d-853f-437d-9bbc-59e1a8ecdb81', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"resetPasswordCode\",\"linked_id\":96,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-06\",\"time\":\"12:42\"}', NULL, '2022-10-06 17:42:04', '2022-10-06 17:42:04'),
('899d88d9-63bb-42d2-940b-8d9274979c2c', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"resetPasswordCode\",\"linked_id\":96,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-06\",\"time\":\"12:43\"}', NULL, '2022-10-06 17:43:44', '2022-10-06 17:43:44'),
('e3784cf3-3432-4a96-9ea0-99443e2c615c', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"resetPasswordCode\",\"linked_id\":96,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-06\",\"time\":\"12:46\"}', NULL, '2022-10-06 17:46:46', '2022-10-06 17:46:46'),
('f75c81c6-6bb0-4068-9219-fd45475955bc', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"resetPasswordCode\",\"linked_id\":96,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-06\",\"time\":\"12:52\"}', NULL, '2022-10-06 17:52:44', '2022-10-06 17:52:44'),
('be5e3721-cf0c-4cfa-98d8-25ff6a8ac41e', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"resetPasswordCode\",\"linked_id\":96,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-06\",\"time\":\"12:57\"}', NULL, '2022-10-06 17:57:44', '2022-10-06 17:57:44'),
('da2d84c8-2f77-4103-a268-f048e3a4da76', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"ResetPasswordSuccess\",\"linked_id\":96,\"text\":\"\\u062a\\u0645\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"date\":\"2022-10-06\",\"time\":\"12:58\"}', NULL, '2022-10-06 17:58:55', '2022-10-06 17:58:55'),
('cd06e668-64a7-42ae-90b8-955713818c41', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"resetPasswordCode\",\"linked_id\":96,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-06\",\"time\":\"13:01\"}', NULL, '2022-10-06 18:01:32', '2022-10-06 18:01:32'),
('f43a1734-4759-47ec-9b5c-a09c367a0699', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newWriter\",\"linked_id\":24,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0643\\u0627\\u062a\\u0628 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-06\",\"time\":\"17:58\"}', '2022-10-07 01:51:59', '2022-10-06 22:58:21', '2022-10-07 01:51:59'),
('ea11e053-c43f-4551-b6ab-31cb426d6c07', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":11,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 Ezat Ellozy \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-06\",\"time\":\"16:49\"}', '2022-10-07 13:46:16', '2022-10-06 21:49:48', '2022-10-07 13:46:16'),
('b1d204ee-4c64-4378-bf73-6f9873df5d3a', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"41\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 Ezat Ellozy \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-06\",\"time\":\"16:51\"}', '2022-10-07 01:52:06', '2022-10-06 21:51:22', '2022-10-07 01:52:06'),
('646bf715-f15c-4346-bd9e-bf1db3f963ca', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"40\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 test 1000 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-07\",\"time\":\"04:39\"}', '2022-10-07 13:40:36', '2022-10-07 09:39:12', '2022-10-07 13:40:36'),
('fdfa237a-97de-412c-b472-bac5191f552c', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"40\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 test 1000 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-07\",\"time\":\"04:39\"}', '2022-10-07 13:46:16', '2022-10-07 09:39:45', '2022-10-07 13:46:16'),
('78341ab1-5029-4d7c-9d87-fd2636818829', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"40\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 test 1000 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-07\",\"time\":\"04:40\"}', '2022-10-07 13:46:16', '2022-10-07 09:40:12', '2022-10-07 13:46:16'),
('138df334-a312-467e-ad60-87007cb0dede', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"40\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 test 1000 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-07\",\"time\":\"04:40\"}', '2022-10-07 13:46:16', '2022-10-07 09:40:43', '2022-10-07 13:46:16'),
('34844265-a270-4831-be2e-5340dc55977d', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"40\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 test 1000 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-07\",\"time\":\"04:41\"}', '2022-10-07 13:46:16', '2022-10-07 09:41:04', '2022-10-07 13:46:16'),
('67f5d11e-6114-4ef1-94f9-19217ebc8470', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"40\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 test 1000 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-07\",\"time\":\"04:43\"}', '2022-10-07 13:46:12', '2022-10-07 09:43:34', '2022-10-07 13:46:12'),
('e1612b4e-0ee8-45d4-aaf6-e2b7ac16049e', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"40\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 Obaida \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-07\",\"time\":\"05:08\"}', '2022-10-11 13:40:56', '2022-10-07 10:08:41', '2022-10-11 13:40:56'),
('6abd5251-c853-482e-8e52-ea3d11928590', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"41\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 test 1000 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-08\",\"time\":\"09:41\"}', '2022-10-10 18:13:41', '2022-10-08 14:41:32', '2022-10-10 18:13:41'),
('1915c4fb-83af-41ef-8916-23de33534190', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"41\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 ObaidaMustafa \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-09\",\"time\":\"10:45\"}', '2022-10-10 15:33:32', '2022-10-09 15:45:50', '2022-10-10 15:33:32'),
('93640570-10e1-41b8-a7ba-ad1008256b96', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"132\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-12\",\"time\":\"07:17\"}', '2022-10-12 17:02:43', '2022-10-12 12:17:02', '2022-10-12 17:02:43'),
('db3b7515-8f1d-464d-9f3f-81e0ea1f71d6', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"132\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 Obaida \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-12\",\"time\":\"08:10\"}', '2022-10-12 17:18:30', '2022-10-12 13:10:42', '2022-10-12 17:18:30'),
('f2daa5d9-e337-4f71-a424-914f45e89e3d', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"132\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-12\",\"time\":\"09:47\"}', '2022-10-12 18:51:04', '2022-10-12 14:47:52', '2022-10-12 18:51:04'),
('5c18525e-d607-47b7-86da-ba016706d4ea', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"132\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-12\",\"time\":\"09:51\"}', '2022-10-12 18:55:04', '2022-10-12 14:51:34', '2022-10-12 18:55:04'),
('421b8d56-a8da-4e74-9470-10c05956caa8', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"132\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 Sara \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-12\",\"time\":\"10:22\"}', '2022-10-12 19:23:49', '2022-10-12 15:22:44', '2022-10-12 19:23:49'),
('1ce0783e-59a3-4fe6-a416-015ccab48e9e', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"132\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 manar \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-16\",\"time\":\"07:44\"}', '2022-10-16 21:12:55', '2022-10-16 12:44:59', '2022-10-16 21:12:55'),
('2f7f9e44-cd97-4865-9a31-cf3c81592871', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"132\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 manar \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-16\",\"time\":\"08:02\"}', '2022-10-16 21:09:19', '2022-10-16 13:02:54', '2022-10-16 21:09:19'),
('b7446110-37cb-4b1a-8130-e0ced55e371f', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"134\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-16\",\"time\":\"12:13\"}', '2022-10-16 21:14:09', '2022-10-16 17:13:48', '2022-10-16 21:14:09'),
('0cc83c1e-6586-44db-a825-e4115dbab1cf', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"134\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-16\",\"time\":\"12:16\"}', '2022-10-16 21:20:31', '2022-10-16 17:16:37', '2022-10-16 21:20:31'),
('24505c3e-d5f5-40d9-81dd-00752a7e1499', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"134\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-16\",\"time\":\"12:17\"}', '2022-10-16 21:20:35', '2022-10-16 17:17:31', '2022-10-16 21:20:35'),
('dc462511-6555-4d11-bc51-1a34ae81fe99', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"130\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-17\",\"time\":\"08:33\"}', '2022-10-17 17:34:01', '2022-10-17 13:33:06', '2022-10-17 17:34:01'),
('3d78dbf9-4d37-4177-b27f-a102378ab87b', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"131\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 test \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-17\",\"time\":\"13:32\"}', '2022-10-18 13:07:16', '2022-10-17 18:32:33', '2022-10-18 13:07:16'),
('7a556e53-ebb5-4dba-b8fa-fa7618053623', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"132\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 manar \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-17\",\"time\":\"14:47\"}', '2022-10-18 13:07:09', '2022-10-17 19:47:32', '2022-10-18 13:07:09'),
('4d61213b-f789-4a88-b77a-efbd35e95a35', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"136\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 manar \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-17\",\"time\":\"15:01\"}', '2022-10-18 13:06:56', '2022-10-17 20:01:38', '2022-10-18 13:06:56'),
('d4fb1478-a239-4490-84a7-6ca57e83bbb3', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"129\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-23\",\"time\":\"12:29\"}', '2022-10-23 21:32:25', '2022-10-23 17:29:57', '2022-10-23 21:32:25'),
('583e397e-43cb-4cb0-9ba0-c4cd1e9b1d34', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"125\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-23\",\"time\":\"12:32\"}', '2022-10-23 21:32:54', '2022-10-23 17:32:11', '2022-10-23 21:32:54'),
('6dc5689e-32b7-4baf-a88e-0ac9fda10528', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"121\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-23\",\"time\":\"12:36\"}', '2022-10-23 21:36:57', '2022-10-23 17:36:42', '2022-10-23 21:36:57'),
('ddd68aec-0148-49d0-aea2-6cf0e94c26bc', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":55,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-10-24\",\"time\":\"10:11\"}', '2022-10-24 15:11:59', '2022-10-24 15:11:42', '2022-10-24 15:11:59'),
('fb762cf5-19a2-4de6-94da-8050089c5af7', 'App\\Notifications\\AdminNotifications', 'App\\User', 128, '{\"type\":\"resetPasswordCode\",\"linked_id\":128,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-03\",\"time\":\"13:52\"}', NULL, '2022-11-03 17:52:41', '2022-11-03 17:52:41'),
('d9758b24-0f2e-4cee-a4ff-cbd49c4ba861', 'App\\Notifications\\AdminNotifications', 'App\\User', 128, '{\"type\":\"ResetPasswordSuccess\",\"linked_id\":128,\"text\":\"\\u062a\\u0645\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"date\":\"2022-11-03\",\"time\":\"13:57\"}', NULL, '2022-11-03 17:57:04', '2022-11-03 17:57:04'),
('1ace98a1-1dad-4a70-8674-9381313316fc', 'App\\Notifications\\AdminNotifications', 'App\\User', 128, '{\"type\":\"resetPasswordCode\",\"linked_id\":128,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-03\",\"time\":\"14:02\"}', NULL, '2022-11-03 18:02:36', '2022-11-03 18:02:36'),
('d10f0352-4fef-4557-ab21-f2d1bb9eb169', 'App\\Notifications\\AdminNotifications', 'App\\User', 128, '{\"type\":\"resetPasswordCode\",\"linked_id\":128,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-03\",\"time\":\"14:09\"}', NULL, '2022-11-03 18:09:28', '2022-11-03 18:09:28'),
('12a488f6-6e5d-4a96-ba3c-4e7fe22c822d', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"139\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 Abuobaida \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-11-04\",\"time\":\"05:43\"}', '2022-11-06 16:38:49', '2022-11-04 09:43:16', '2022-11-06 16:38:49'),
('ef9d10bc-2b1e-44af-b38a-2853ce2e0dca', 'App\\Notifications\\AdminNotifications', 'App\\User', 151, '{\"type\":\"resetPasswordCode\",\"linked_id\":151,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-06\",\"time\":\"08:55\"}', NULL, '2022-11-06 13:55:40', '2022-11-06 13:55:40'),
('99dda71d-ad54-457e-a303-a87594753f90', 'App\\Notifications\\AdminNotifications', 'App\\User', 181, '{\"type\":\"resetPasswordCode\",\"linked_id\":181,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-07\",\"time\":\"05:49\"}', NULL, '2022-11-07 10:49:20', '2022-11-07 10:49:20'),
('a0d93b7c-f2a4-4ee8-b550-abcd9d4ebda5', 'App\\Notifications\\AdminNotifications', 'App\\User', 181, '{\"type\":\"resetPasswordCode\",\"linked_id\":181,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-07\",\"time\":\"05:51\"}', NULL, '2022-11-07 10:51:32', '2022-11-07 10:51:32'),
('79f0141b-d9a6-490f-8a45-73bb430d465d', 'App\\Notifications\\AdminNotifications', 'App\\User', 181, '{\"type\":\"resetPasswordCode\",\"linked_id\":181,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-07\",\"time\":\"05:54\"}', NULL, '2022-11-07 10:54:57', '2022-11-07 10:54:57');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('34aa3fbc-77ae-4796-b4c2-f6078bd98ecb', 'App\\Notifications\\AdminNotifications', 'App\\User', 185, '{\"type\":\"resetPasswordCode\",\"linked_id\":185,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-07\",\"time\":\"07:50\"}', NULL, '2022-11-07 12:50:58', '2022-11-07 12:50:58'),
('8890bb5f-6f7a-4f7d-a517-387812c4f5e6', 'App\\Notifications\\AdminNotifications', 'App\\User', 185, '{\"type\":\"ResetPasswordSuccess\",\"linked_id\":185,\"text\":\"\\u062a\\u0645\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"date\":\"2022-11-07\",\"time\":\"07:52\"}', NULL, '2022-11-07 12:52:10', '2022-11-07 12:52:10'),
('c9c512ed-0ed0-4c5e-86c7-0a887a8cb37a', 'App\\Notifications\\AdminNotifications', 'App\\User', 185, '{\"type\":\"ResetPasswordSuccess\",\"linked_id\":185,\"text\":\"\\u062a\\u0645\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"date\":\"2022-11-07\",\"time\":\"07:52\"}', NULL, '2022-11-07 12:52:11', '2022-11-07 12:52:11'),
('b57e6574-1e15-4084-8ce9-c9d3ddacd1d3', 'App\\Notifications\\AdminNotifications', 'App\\User', 124, '{\"type\":\"resetPasswordCode\",\"linked_id\":124,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-18\",\"time\":\"11:55\"}', NULL, '2022-11-18 16:55:01', '2022-11-18 16:55:01'),
('beb5c237-54fd-48d0-9c89-e23de4236804', 'App\\Notifications\\AdminNotifications', 'App\\User', 124, '{\"type\":\"ResetPasswordSuccess\",\"linked_id\":124,\"text\":\"\\u062a\\u0645\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"date\":\"2022-11-18\",\"time\":\"11:56\"}', NULL, '2022-11-18 16:56:39', '2022-11-18 16:56:39'),
('ead878c0-a952-4a04-9ec7-f06e0b15b9dc', 'App\\Notifications\\AdminNotifications', 'App\\User', 124, '{\"type\":\"ResetPasswordSuccess\",\"linked_id\":124,\"text\":\"\\u062a\\u0645\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"date\":\"2022-11-18\",\"time\":\"11:56\"}', NULL, '2022-11-18 16:56:40', '2022-11-18 16:56:40');

-- --------------------------------------------------------

--
-- بنية الجدول `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `option_type_id` bigint(20) UNSIGNED NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- بنية الجدول `option_categories`
--

CREATE TABLE `option_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `option_categories`
--

INSERT INTO `option_categories` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'اختار', 'choose', NULL, NULL),
(2, 'ادخال', 'input', NULL, NULL),
(3, 'ملف', 'file', NULL, NULL),
(4, 'تاريخ', 'history', NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `option_types`
--

CREATE TABLE `option_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `option_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `option_types`
--

INSERT INTO `option_types` (`id`, `name_ar`, `name_en`, `option_category_id`, `created_at`, `updated_at`) VALUES
(1, 'قائمة منسدلة', 'dropdown ', 1, NULL, NULL),
(2, 'راديو', 'radio', 1, NULL, NULL),
(3, 'تحديد', 'checkbox', 1, NULL, NULL),
(4, 'نص', 'text', 2, NULL, NULL),
(5, 'حقل نصي', 'textarea', 2, NULL, NULL),
(6, 'ملف', 'file', 3, NULL, NULL),
(7, 'تاريخ', 'history', 4, NULL, NULL),
(8, 'وقت', 'time', 4, NULL, NULL),
(9, 'التاريخ والوقت', 'date and time', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `option_values`
--

CREATE TABLE `option_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_type_id` bigint(20) UNSIGNED NOT NULL,
  `ordering` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `option_values`
--

INSERT INTO `option_values` (`id`, `name_ar`, `name_en`, `option_id`, `option_type_id`, `ordering`, `created_at`, `updated_at`) VALUES
(9, 'اصفر', 'Yellow', 2, 1, 3, '2023-03-05 10:34:51', '2023-03-05 10:34:51'),
(8, 'ازرق', 'Blue', 2, 1, 2, '2023-03-05 10:34:51', '2023-03-05 10:34:51'),
(7, 'أحمر', 'Red', 2, 1, 1, '2023-03-05 10:34:51', '2023-03-05 10:34:51'),
(4, 'صغير', 'Small', 4, 2, 1, '2023-02-24 17:10:53', '2023-02-24 17:10:53'),
(5, 'وسط', 'Medium', 4, 2, 2, '2023-02-24 17:10:53', '2023-02-24 17:10:53'),
(6, 'كبير', 'Large', 4, 2, 3, '2023-02-24 17:10:53', '2023-02-24 17:10:53'),
(10, '100', '100', 5, 1, 1, '2023-03-28 15:27:30', '2023-03-28 15:27:30'),
(11, '500', '500', 5, 1, 1, '2023-03-28 15:27:30', '2023-03-28 15:27:30'),
(12, '100', '100', 6, 1, 1, '2023-03-28 15:28:21', '2023-03-28 15:28:21'),
(13, '500', '500', 6, 1, 1, '2023-03-28 15:28:21', '2023-03-28 15:28:21'),
(14, 'احمر', 'red', 8, 1, 1, '2023-08-28 10:54:17', '2023-08-28 10:54:17'),
(15, 'اخضر', 'green', 8, 1, 2, '2023-08-28 10:54:17', '2023-08-28 10:54:17'),
(16, '2', '2', 9, 3, 1, '2023-08-28 19:53:42', '2023-08-28 19:53:42'),
(17, '3', '3', 9, 3, 2, '2023-08-28 19:53:42', '2023-08-28 19:53:42'),
(18, '4', '4', 9, 3, 3, '2023-08-28 19:53:42', '2023-08-28 19:53:42'),
(19, '5', '5', 9, 3, 4, '2023-08-28 19:53:42', '2023-08-28 19:53:42'),
(20, '6', '6', 9, 3, 5, '2023-08-28 19:53:42', '2023-08-28 19:53:42'),
(21, '7', '7', 9, 3, 6, '2023-08-28 19:53:42', '2023-08-28 19:53:42'),
(22, '8', '8', 9, 3, 7, '2023-08-28 19:53:42', '2023-08-28 19:53:42'),
(23, 'احمر', 'red', 10, 1, 1, '2023-08-29 12:38:16', '2023-08-29 12:38:16'),
(24, 'أخضر', 'green', 10, 1, 2, '2023-08-29 12:38:16', '2023-08-29 12:38:16'),
(25, 'أبيض', 'white', 10, 1, 3, '2023-08-29 12:38:16', '2023-08-29 12:38:16'),
(26, 'نعم', 'yes', 11, 2, 1, '2023-08-29 12:39:12', '2023-08-29 12:39:12'),
(27, 'لا', 'No', 11, 2, 2, '2023-08-29 12:39:12', '2023-08-29 12:39:12'),
(28, 'احمر', 'red', 12, 1, 1, '2023-08-29 13:02:27', '2023-08-29 13:02:27'),
(29, 'أخضر', 'green', 12, 1, 2, '2023-08-29 13:02:27', '2023-08-29 13:02:27'),
(30, 'أبيض', 'white', 12, 1, 3, '2023-08-29 13:02:27', '2023-08-29 13:02:27'),
(36, 'نعم', 'yes', 13, 1, 1, '2023-08-29 13:18:00', '2023-08-29 13:18:00'),
(35, 'لا', ' No', 13, 1, 2, '2023-08-29 13:18:00', '2023-08-29 13:18:00'),
(37, 'ابل ووتش', 'apple watch', 14, 1, 1, '2023-12-24 20:25:07', '2023-12-24 20:25:07'),
(38, 'باند', 'band', 14, 1, 2, '2023-12-24 20:25:07', '2023-12-24 20:25:07');

-- --------------------------------------------------------

--
-- بنية الجدول `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `date_time_str` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `coupun_code` varchar(255) DEFAULT NULL,
  `coupun_id` varchar(255) DEFAULT NULL,
  `net_total` varchar(255) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` enum('pending','paid','failed') DEFAULT 'pending',
  `payment_method_id` varchar(255) DEFAULT NULL,
  `shipping_price` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `shipping_address_id` varchar(255) DEFAULT NULL,
  `chooseDeliveryMethod` varchar(30) DEFAULT NULL,
  `checkout_id` varchar(60) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(255) NOT NULL,
  `aws_label` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `date_time`, `date_time_str`, `status`, `total`, `coupun_code`, `coupun_id`, `net_total`, `payment_method`, `payment_status`, `payment_method_id`, `shipping_price`, `shipping_address`, `tax`, `discount`, `shipping_method`, `shipping_address_id`, `chooseDeliveryMethod`, `checkout_id`, `created_at`, `updated_at`, `tracking_id`, `aws_label`) VALUES
(95, '1', '2024-04-24 14:50:46', '1713955846', 'cart', '45', NULL, NULL, '0', NULL, 'pending', NULL, '24', NULL, NULL, 138, NULL, '119', NULL, NULL, '2024-04-24 12:50:46', '2024-05-14 08:07:11', '', ''),
(94, '322', '2024-04-23 18:11:52', '1713881512', 'cart', '0', NULL, NULL, '0', NULL, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-23 16:11:52', '2024-04-23 16:12:14', '', ''),
(93, '1', '2024-04-18 11:59:10', '1713427150', 'new', '32', NULL, NULL, '0', NULL, 'paid', NULL, '21.6', NULL, NULL, 32, NULL, '116', NULL, 'ab37f598-9c86-417f-bf62-b843c8cc6569', '2024-04-18 09:59:10', '2024-04-22 12:08:18', '', ''),
(92, '1', '2024-04-17 16:44:09', '1713357849', 'new', '45', NULL, NULL, '0', NULL, 'paid', NULL, '19.6', NULL, NULL, 0, NULL, '115', NULL, '38d253c2-f7d9-4846-a7f7-d92d9a35677a', '2024-04-17 14:44:09', '2024-04-17 14:51:22', '689579211394', 'https://demo.stage.torod.co/en/downloadLabel/29672'),
(91, '1', '2024-04-17 16:37:15', '1713357435', 'new', '32', NULL, NULL, '0', NULL, 'paid', NULL, '19.6', NULL, NULL, 32, NULL, '114', NULL, '35fb5e79-af23-46ec-82c4-12b3d0b372a8', '2024-04-17 14:37:15', '2024-04-17 14:38:26', 'ANW1420978053', 'https://demo.stage.torod.co/en/downloadLabel/29669'),
(90, '1', '2024-04-17 13:14:43', '1713345283', 'new', '122', NULL, NULL, '0', NULL, 'paid', NULL, '24', NULL, NULL, 0, NULL, '113', NULL, '20b2acbd-43d9-4f09-890b-1c6b26bde002', '2024-04-17 11:14:43', '2024-04-17 14:34:34', '', ''),
(89, '1', '2024-04-17 11:04:24', '1713337464', 'new', '183', NULL, NULL, '0', NULL, 'paid', NULL, '27.5', NULL, NULL, 0, NULL, '112', NULL, '7aff493c2b0a46318226e4186739fdcd', '2024-04-17 09:04:24', '2024-04-17 10:28:31', '140417062274', 'https://demo.stage.torod.co/en/downloadLabel/29650'),
(88, '1', '2024-04-17 11:02:16', '1713337336', 'new', '32', NULL, NULL, '0', NULL, 'paid', NULL, '52.33', NULL, NULL, 64, NULL, '111', NULL, '088a7edbc65149e8b476d0b0d1ce0065', '2024-04-17 09:02:16', '2024-04-17 09:03:39', '43926401794', 'https://demo.stage.torod.co/en/downloadLabel/29595'),
(87, '1', '2024-04-17 11:00:40', '1713337240', 'new', '32', NULL, NULL, '0', NULL, 'paid', NULL, '23.8', NULL, NULL, 0, NULL, '110', NULL, '68cd2e973777496e98caec4620e18487', '2024-04-17 09:00:40', '2024-04-17 09:01:36', '', ''),
(86, '1', '2024-04-16 18:11:59', '1713276719', 'new', '138', NULL, NULL, '0', NULL, 'paid', NULL, '23.8', NULL, NULL, 138, NULL, '109', NULL, '688fc561b6f940fab9fcccf0384a7187', '2024-04-16 16:11:59', '2024-04-16 16:12:37', 'OS42825471KS', ''),
(85, '1', '2024-04-16 18:02:50', '1713276170', 'new', '45', NULL, NULL, '0', NULL, 'paid', NULL, '24.3', NULL, NULL, 45, NULL, '108', NULL, 'cdd39b046a1b4df69eb9b6a4ca55df32', '2024-04-16 16:02:50', '2024-04-16 16:10:59', '', ''),
(84, '1', '2024-04-16 17:17:08', '1713273428', 'new', '170', NULL, NULL, '0', NULL, 'paid', NULL, '17.5', NULL, NULL, 0, NULL, '107', NULL, 'dcc621d76346407a9337d6c8da22f02c', '2024-04-16 15:17:08', '2024-04-16 15:27:11', '', ''),
(83, '1', '2024-04-16 15:53:13', '1713268393', 'new', '77', NULL, NULL, '0', NULL, 'paid', NULL, '19.6', NULL, NULL, 0, NULL, '106', NULL, 'c317b85a7f84489eb7956fc6dc90a17f', '2024-04-16 13:53:13', '2024-04-16 15:09:45', '', ''),
(96, '354', '2024-05-08 13:20:54', '1715160054', 'cart', '138', NULL, NULL, '0', NULL, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-08 10:20:54', '2024-05-08 10:20:54', '', ''),
(97, '357', '2024-05-09 17:27:08', '1715261228', 'cart', '42', NULL, NULL, '0', NULL, 'pending', NULL, '23.8', NULL, NULL, 0, NULL, '118', NULL, NULL, '2024-05-09 14:27:08', '2024-05-12 09:25:35', '', ''),
(98, '358', '2024-05-12 12:56:53', '1715504213', 'new', '32', NULL, NULL, '0', NULL, 'paid', NULL, '21.6', NULL, NULL, 0, NULL, '120', NULL, '57936b28-fcc2-4a62-9698-75959afb64ce', '2024-05-12 09:56:53', '2024-05-12 10:02:03', '', ''),
(99, '358', '2024-05-12 13:05:03', '1715504703', 'new', '32', NULL, NULL, '0', NULL, 'paid', NULL, '21.6', NULL, NULL, 0, NULL, '121', NULL, '29f85289-e178-4cb6-92d9-09ccafcf01ed', '2024-05-12 10:05:03', '2024-05-12 10:06:59', '', ''),
(100, '358', '2024-05-12 13:31:44', '1715506304', 'new', '32', NULL, NULL, '0', NULL, 'paid', NULL, '21.6', NULL, NULL, 0, NULL, '122', NULL, 'b4b43cc2-7101-459d-bbc3-af7640d6d453', '2024-05-12 10:31:44', '2024-05-12 10:33:19', '', ''),
(101, '358', '2024-05-12 13:40:58', '1715506858', 'new', '32', NULL, NULL, '0', NULL, 'paid', NULL, '21.6', NULL, NULL, 0, NULL, '123', NULL, '774906f2-35a0-4dd9-812f-8a588d0f764d', '2024-05-12 10:40:58', '2024-05-12 10:42:26', '', ''),
(102, '358', '2024-05-12 15:38:21', '1715513901', 'new', '138', NULL, NULL, '0', NULL, 'paid', NULL, '21.6', NULL, NULL, 0, NULL, '124', NULL, '6a6a4007-d576-4fef-8721-a7cd56ac4741', '2024-05-12 12:38:21', '2024-05-12 12:39:17', '', ''),
(103, '358', '2024-05-12 15:54:26', '1715514866', 'new', '138', NULL, NULL, '0', NULL, 'paid', NULL, '21.6', NULL, NULL, 0, NULL, '125', NULL, '51d18773-8a99-4920-96a9-bd79bb74bca3', '2024-05-12 12:54:26', '2024-05-12 12:55:15', '', ''),
(104, '358', '2024-05-12 17:24:20', '1715520260', 'new', '138', NULL, NULL, '0', NULL, 'paid', NULL, '21.6', NULL, NULL, 0, NULL, '126', NULL, '6d89df72-18fa-43a2-80cd-3ce8191f3331', '2024-05-12 14:24:20', '2024-05-12 14:25:12', '', ''),
(105, '358', '2024-05-12 17:29:16', '1715520556', 'new', '45', NULL, NULL, '0', NULL, 'paid', NULL, '21.6', NULL, NULL, 0, NULL, '128', NULL, '645414b0-3005-4fdf-82e1-03b00f5e19f5', '2024-05-12 14:29:16', '2024-05-12 14:35:04', '', ''),
(106, '358', '2024-05-13 10:20:39', '1715581239', 'new', '138', NULL, NULL, '0', NULL, 'paid', NULL, '21.6', NULL, NULL, 0, NULL, '129', NULL, '8ed61a59-0158-4c76-a75c-aaecbd3f3734', '2024-05-13 07:20:39', '2024-05-13 07:24:45', '', ''),
(107, '360', '2024-05-13 11:21:39', '1715584899', 'new', '138', NULL, NULL, '0', NULL, 'paid', NULL, '21.6', NULL, NULL, 0, NULL, '131', NULL, '9ed4d832-3a1e-420f-a7f5-a6763f472098', '2024-05-13 08:21:39', '2024-05-13 08:26:35', '', ''),
(108, '358', '2024-05-14 11:07:19', '1715670439', 'cart', '215', NULL, NULL, '0', NULL, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 08:07:19', '2024-05-14 08:07:23', '', ''),
(109, '366', '2024-05-30 16:51:15', '1717073475', 'cart', '124', NULL, NULL, '0', NULL, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-30 16:51:15', '2024-05-30 16:51:42', '', '');

-- --------------------------------------------------------

--
-- بنية الجدول `order_addresses`
--

CREATE TABLE `order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('billing','shipping') NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` char(2) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postalCode` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- بنية الجدول `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `shipping_price` varchar(255) DEFAULT NULL,
  `net_total` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_name`, `user_id`, `price`, `quantity`, `total`, `shipping_price`, `net_total`, `created_at`, `updated_at`) VALUES
(289, 108, 80, 'شجرة التوازن المغناطيسي (16 قطعة)', 358, '32', '1', '32', NULL, NULL, '2024-05-14 08:07:19', '2024-05-14 08:07:19'),
(210, 93, 80, 'شجرة التوازن المغناطيسي (16 قطعة)', 1, '32', '1', '32', NULL, NULL, '2024-04-18 09:59:10', '2024-04-18 09:59:10'),
(209, 92, 82, 'طاولة تركيبات ليقو (61 قطعة)', 1, '45', '1', '45', NULL, NULL, '2024-04-17 14:44:09', '2024-04-17 14:44:09'),
(208, 91, 80, 'شجرة التوازن المغناطيسي (16 قطعة)', 1, '32', '1', '32', NULL, NULL, '2024-04-17 14:37:15', '2024-04-17 14:37:15'),
(207, 90, 80, 'شجرة التوازن المغناطيسي (16 قطعة)', 1, '32', '1', '32', NULL, NULL, '2024-04-17 11:14:44', '2024-04-17 11:14:44'),
(206, 90, 81, 'شجرة التوازن المغناطيسي (31 قطعة)', 1, '45', '1', '45', NULL, NULL, '2024-04-17 11:14:44', '2024-04-17 11:14:44'),
(205, 90, 82, 'طاولة تركيبات ليقو (61 قطعة)', 1, '45', '1', '45', NULL, NULL, '2024-04-17 11:14:43', '2024-04-17 11:14:43'),
(204, 89, 82, 'طاولة تركيبات ليقو (61 قطعة)', 1, '45', '1', '45', NULL, NULL, '2024-04-17 10:26:14', '2024-04-17 10:26:14'),
(203, 89, 83, 'طاولة تركيبات ليقو (200 قطعة)', 1, '138', '1', '138', NULL, NULL, '2024-04-17 09:04:24', '2024-04-17 09:04:24'),
(202, 88, 80, 'شجرة التوازن المغناطيسي (16 قطعة)', 1, '32', '2', '32', NULL, NULL, '2024-04-17 09:02:16', '2024-04-17 09:02:16'),
(201, 87, 80, 'شجرة التوازن المغناطيسي (16 قطعة)', 1, '32', '1', '32', NULL, NULL, '2024-04-17 09:00:40', '2024-04-17 09:00:40'),
(200, 86, 83, 'طاولة تركيبات ليقو (200 قطعة)', 1, '138', '1', '138', NULL, NULL, '2024-04-16 16:11:59', '2024-04-16 16:11:59'),
(199, 85, 81, 'شجرة التوازن المغناطيسي (31 قطعة)', 1, '45', '1', '45', NULL, NULL, '2024-04-16 16:02:50', '2024-04-16 16:02:50'),
(198, 84, 83, 'طاولة تركيبات ليقو (200 قطعة)', 1, '138', '1', '138', NULL, NULL, '2024-04-16 15:17:09', '2024-04-16 15:17:09'),
(197, 84, 80, 'شجرة التوازن المغناطيسي (16 قطعة)', 1, '32', '1', '32', NULL, NULL, '2024-04-16 15:17:08', '2024-04-16 15:17:08'),
(196, 83, 80, 'شجرة التوازن المغناطيسي (16 قطعة)', 1, '32', '1', '32', NULL, NULL, '2024-04-16 15:04:51', '2024-04-16 15:04:51'),
(195, 83, 81, 'شجرة التوازن المغناطيسي (31 قطعة)', 1, '45', '2', '45', NULL, NULL, '2024-04-16 14:50:33', '2024-04-16 15:04:50'),
(271, 96, 83, 'طاولة تركيبات ليقو (200 قطعة)', 354, '138', '1', '138', NULL, NULL, '2024-05-08 10:20:54', '2024-05-08 10:20:54'),
(272, 97, 80, 'شجرة التوازن المغناطيسي (16 قطعة)', 357, '32', '1', '32', NULL, NULL, '2024-05-09 14:27:08', '2024-05-09 14:27:08'),
(273, 97, 91, 'اختبار', 357, '10', '1', '10', NULL, NULL, '2024-05-09 14:27:09', '2024-05-09 14:27:09'),
(288, 95, 82, 'طاولة تركيبات ليقو (61 قطعة)', 1, '45', '1', '45', NULL, NULL, '2024-05-14 08:07:11', '2024-05-14 08:07:11'),
(275, 98, 80, 'شجرة التوازن المغناطيسي (16 قطعة)', 358, '32', '1', '32', NULL, NULL, '2024-05-12 09:56:53', '2024-05-12 09:56:53'),
(276, 99, 80, 'شجرة التوازن المغناطيسي (16 قطعة)', 358, '32', '1', '32', NULL, NULL, '2024-05-12 10:05:03', '2024-05-12 10:05:03'),
(277, 100, 80, 'شجرة التوازن المغناطيسي (16 قطعة)', 358, '32', '1', '32', NULL, NULL, '2024-05-12 10:31:44', '2024-05-12 10:31:44'),
(278, 101, 80, 'شجرة التوازن المغناطيسي (16 قطعة)', 358, '32', '1', '32', NULL, NULL, '2024-05-12 10:40:58', '2024-05-12 10:40:58'),
(279, 102, 83, 'طاولة تركيبات ليقو (200 قطعة)', 358, '138', '1', '138', NULL, NULL, '2024-05-12 12:38:22', '2024-05-12 12:38:22'),
(280, 103, 83, 'طاولة تركيبات ليقو (200 قطعة)', 358, '138', '1', '138', NULL, NULL, '2024-05-12 12:54:26', '2024-05-12 12:54:26'),
(281, 104, 83, 'طاولة تركيبات ليقو (200 قطعة)', 358, '138', '1', '138', NULL, NULL, '2024-05-12 14:24:20', '2024-05-12 14:24:20'),
(282, 105, 82, 'طاولة تركيبات ليقو (61 قطعة)', 358, '45', '1', '45', NULL, NULL, '2024-05-12 14:29:16', '2024-05-12 14:29:16'),
(283, 106, 83, 'طاولة تركيبات ليقو (200 قطعة)', 358, '138', '1', '138', NULL, NULL, '2024-05-13 07:20:39', '2024-05-13 07:20:39'),
(284, 107, 83, 'طاولة تركيبات ليقو (200 قطعة)', 360, '138', '1', '138', NULL, NULL, '2024-05-13 08:21:39', '2024-05-13 08:21:39'),
(290, 108, 83, 'طاولة تركيبات ليقو (200 قطعة)', 358, '138', '1', '138', NULL, NULL, '2024-05-14 08:07:21', '2024-05-14 08:07:21'),
(291, 108, 82, 'طاولة تركيبات ليقو (61 قطعة)', 358, '45', '1', '45', NULL, NULL, '2024-05-14 08:07:23', '2024-05-14 08:07:23'),
(292, 109, 93, 'حامل خشبي', 366, '100', '1', '100', NULL, NULL, '2024-05-30 16:51:15', '2024-05-30 16:51:15'),
(293, 109, 94, 'ضصصثضصث', 366, '24', '1', '24', NULL, NULL, '2024-05-30 16:51:42', '2024-05-30 16:51:42');

-- --------------------------------------------------------

--
-- بنية الجدول `order_item_options`
--

CREATE TABLE `order_item_options` (
  `id` bigint(20) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `price` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- بنية الجدول `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `content_ar` longtext NOT NULL,
  `content_en` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `pages`
--

INSERT INTO `pages` (`id`, `title_ar`, `title_en`, `content_ar`, `content_en`, `created_at`, `updated_at`) VALUES
(1, 'سياسة الخصوصية', 'privacy policy', '<h1><strong>سياسه خصوصيه متجر مورال&nbsp;</strong></h1>\r\n<p><br />يواصل متجر مورال جهوده من أجل تقديم المزيد من الخدمات عالية الجودة إلرضاء عمالئه، ومن أجل تسهيل التواصل،<br />سوف نستخدم جميع المعلومات الشخصية التي نقوم بجمعها على هذا الموقع اإللكتروني، ومن خالل القنوات األخرى<br />الموضحة أدناه بطريقة سرية ومهنية.<br />يحترم متجر مورال مخاوفك بشأن الخصوصية، ويدرك أنك تهتم بكيفية استخدام ومشاركة المعلومات الخاصة بك، ونحن<br />نقدر ثقتكم في أننا سنقوم بذلك بحرص وحكمة.<br />توضح سياسة الخصوصية أنواع المعلومات الشخصية التي نقوم بجمعها على هذا الموقع، وفي معارضنا، وبطرق أخرى<br />مشار إليها أدناه، وكيف يمكن أن نستخدم تلك المعلومات ومع من يمكن أن نقوم بمشاركتها. كما يوضح اإلشعار اإلجراءات<br />التي نتخذها لحماية أمن المعلومات الشخصية. كما إننا نخبرك أي ًضا بكيفية الوصول إلينا للسؤال عن )أ( إمكانية الوصول<br />ا، )ج( إخبارنا</p>\r\n<p>إلى، أو تغيير أو استخدام المعلومات الشخصية التي قدمتها لنا، )ب( سحب أي موافقة قدمتها لنا سابقً<br />بالتوقف عن التواصل معك بشأن منتجاتنا وخدماتنا، و)د( اإلجابة على أي أسئلة لديك بشأن ممارسات الخصوصية لدينا.<br />يوضح هذا اإلشعار سياسة الخصوصية الخاصة بنا. إن زيارتك لموقع store.murale تعني موافقتك على الممارسات<br />الموضحة في سياسة الخصوصية هذه.<br />معلومات عن سياسة الخصوصية<br />يلتزم متجر مورال بحماية واحترام خصوصيتك. برجاء قراءة سياسة الخصوصية بعناية حتى تتعرف على كيفية جمعنا<br />للبيانات من طرفك والسبب وراء جمعها، فضًال عن كيفية استخدامنا لها.<br />متى نقوم بجمع معلوماتك الشخصية؟<br />نحن نرغب في أن نرسل لك معلومات عن المنتجات، والخدمات، والعروض، والعروض الترويجية الخاصة بنا، لكننا لن<br />نقوم بذلك إال بموافقتك على الحصول على مثل هذه المعلومات. يمكنك إخبارنا برغبتك في استالم هذه المعلومات سواء في<br />المعرض أو عبر الموقع اإللكتروني.<br />سوف نستخدم معلوماتك الشخصية أي ًضا عندما تقوم بشراء الخدمات أو المنتجات. الغرض من ذلك هو أن نتمكن من إتمام<br />طلب الشراء الخاص بك.<br />جميع المعلومات التي تقوم بتزويدنا بها سرية. سوف نستخدم معلوماتك فقط بالطريقة التي نحيطك بها عل ًما في سياسة<br />الخصوصية.<br />ما المعلومات الشخصية التي تقدمها لنا؟<br />قد تقوم بتزويدنا بما يلي:<br />االسم، العنوان، عنوان الشحن، أو في مراسالتك معنا عبر الهاتف أو البريد اإللكتروني، تاريخ مشترياتك لمنتجات<br />وخدمات مورال، وأي معلومات تقرر مشاركتها معنا.<br />ما المعلومات الشخصية التي نقدمها إلى أطراف أخرى؟<br />خصوصيتك أمر هام بالنسبة لنا ولذلك فلن نقوم أبدًا ببيع أو اإلفصاح عن معلوماتك الشخصية ألي طرف ثالث الستخدام<br />المعلومات ألي أغراض سوى تلك الموضحة في سياسة الخصوصية هذه.<br />قد نقوم بتقديم معلوماتك الشخصية إلى شركاء الخدمة الموثوقين من أجل تقديم الخدمات لك. على سبيل المثال، من أجل<br />أغراض التسويق، والتمويل، وإتمام عمليات السداد، والتوصيل، والخدمات األخرى داخل المعرض أو خارجه.<br />لمكافحة االحتيال أو أي نشاط إجرامي آخر وللتأكد من دقة المعلومات الخاصة بك، قد نقوم بتقديم المعلومات المتاحة لدينا<br />عنك إلى شركات أخرى، أو تجار التجزئة، أو المؤسسات المالية أو غيرها من المنظمات المتخصصة في مكافحة االحتيال<br />والجريمة. نحن ملزمون في بعض األحيان بالكشف عن المعلومات المتاحة لدينا عن العمالء إلى وكاالت إنفاذ القانون حيث<br />يوجد ادعاء بنشاط إجرامي مشتبه به.<br />سوف نحرص على التأكد من حماية معلوماتك الشخصية عندما يتم إرسالها خارج نطاق متجر مورال.</p>\r\n<p>نحن نحرص على التأكد من مراعاة شركاء الخدمة ألمان معلوماتك الشخصية.<br />ما الذي نفعله بالمعلومات الشخصية التي تقدمها لنا؟<br />نحن نستخدم المعلومات التي تقدمها لنا بعدة طرق مختلفة:</p>\r\n<p>تنفيذ طلبات الشراء والتوصيل<br />لتنفيذ طلبك مع ضمان دقة المعلومات الشخصية والمالية التي تقدمها. من أجل هذا، نقوم باستخدام أنظمة سداد خاصة<br />بأطراف أخرى موثوقة لضمان أمان عمليات السداد الخاصة بك ولضمان عدم استخدام بياناتك بطرق احتيالية. نحن<br />نستخدم أنظمة تحليل االحتيال التي تضمن تقديم بيانات سداد حقيقية ودقيقة لمورال في أي عمليات شراء. قد نقوم أي ًضا<br />باستخدام وكاالت االئتمان للقيام بهذه المهمة لنا.<br />من أجل ضمان توصيل المنتجات والخدمات التي تقوم بشرائها للعنوان الصحيح. يتضمن ذلك العمل مع أطراف أخرى<br />موثوقة خارج نطاق مورال ومشاركة معلوماتك الشخصية التي قدمتها مع هذه األطراف. على سبيل المثال، اسمك،<br />وعنوان التوصيل الخاص بك، وأفضليات التوصيل التي قمت بتقديمها لنا مثل الموعد الذي ترغب في توصيل مشترياتك<br />فيه خالل اليوم.<br />قد نقوم بتخزين أو معالجة المعلومات التي تقدمها لفترة من الوقت للتأكد من أن أي ادعاء باالستخدام االحتيالي للهوية يمكن<br />أن يتم التحقيق فيه بشكل صحيح في المستقبل.<br />من أجل التعامل مع مرتجعات المنتجات أو اإلدعاءات المحتملة للمنتجات أو الخدمات المعيبة، نحن بحاجة إلى جمع<br />ومعالجة معلوماتك الشخصية. من أجل مكافحة االحتيال فيما يتعلق باالدعاءات والمرتجعات، قد نحتاج إلى طلب معلومات<br />شخصية محددة منك إلتمام طلبك .<br />من أجل القيام بنشاطات تسويقية وتحسين تجربة التصفح للعميل<br />نحن نقوم بجمع بياناتك الشخصية لدعم عدد من النشاطات التسويقية، واإلحصائية والتحليلية التي تهدف جميعًا إلى تحسين<br />الخدمات، والمنتجات والموقع اإللكتروني. على سبيل المثال: قد نستخدم المعلومات التي نقوم بجمعها منك لتحليل كيفية<br />قيامك بالتسوق وما تتسوق لشرائه. يتيح لنا ذلك توفير تجربة تصفح مالئمة لك وتضمن تزويدك بالمواد التسويقية المالئمة<br />الحتياجاتك وذوقك. كما تتيح لنا هذه المعلومات عرض المنتجات والخدمات عليك خالل التصفح والتي تكون مالئمة وفق<br />المعلومات المتوفرة لدينا عنك.<br />كما يمكنك مشاركة بياناتك معنا من خالل إنشاء ملف شخصي على الموقع اإللكتروني حتى يمكنك، على سبيل المثال،<br />توفير الوقت في التسوق عبر اإلنترنت.<br />حتى ال نحتفظ بالمعلومات الشخصية لفترات أطول مما هو ضروري، فإننا نحتفظ بالحق في إيقاف حسابك إذا ظل حسابك<br />الشخصي أو حساب أصحاب ايكيا غير فعال لفترة طويلة من الزمن.<br />أين يتم تخزين معلوماتك الشخصية؟<br />نحن نحتفظ بالمعلومات الشخصية التي نقوم بجمعها عنك في أماكن آمنة. معلوماتك الشخصية محمية من الدخول غير<br />المرخص، أو اإلفصاح، أو االستخدام، أو التعديل، أو اإلتالف من قبل أي مؤسسة أو فرد.<br />هل تقومون بالربط إلى مواقع إلكترونية أخرى؟<br />قد يتضمن موقعنا اإللكتروني روابط من وإلى أطراف أخرى. لهذه المواقع اإللكترونية سياسات الخصوصية الخاصة بها.<br />إذا قمت بتتبع أحد الروابط إلى هذه المواقع اإللكترونية، يرجى التأكد من قراءة سياسات الخصوصية الخاصة بها قبل<br />إرسال أي معلومات إلى هذه المواقع اإللكترونية. نحن ال نتحمل أي مسؤولية أو تبعات قانونية عن سياسات هذه المواقع.<br />لم تعد ترغب في االتصال بك لألغراض التسويقية؟<br />إن لم تكن ترغب في االتصال بك بشأن منتجاتنا وخدماتنا، يمكنك إلغاء االشتراك من خالل الكتابة لنا على<br />store.murale@info وإذا كان لديك حساب شخصي على موقع مورال، يمكنك في المقابل إلغاء االشتراك من خالل<br />تسجيل الدخول على حسابك.</p>\r\n<p>هل ترغب في تحديث سجالتك؟<br />إذا رأيت أن المعلومات الشخصية المتوفرة لدينا عنك غير دقيقة أو تحتاج إلى تحديث )على سبيل المثال، ربما تكون قد<br />قمت بتغيير عنوانك أو ما إلى ذلك( يرجى االتصال بنا حتى نقوم بتصحيحها. يخضع متجر مورال اللتزام قانوني للتأكد<br />من أن جميع المعلومات المتوفرة لدينا عن عمالئنا صحيحة في الواقع، ومحدثة. للقيام بذلك، يرجى الكتابة لنا على<br />store.murale@info إذا كنت قد قمت بحفظ حساب شخصي على متجر، يمكنك تغيير البيانات المحفوظة عنك من<br />خالل تسجيل الدخول على حسابك.</p>', '<h1>Moral store privacy policy</h1>\r\n<p><br />Moral Store continues its efforts to provide more high-quality services to satisfy its customers, and in order to facilitate communication,<br />We will use all personal information that we collect on this website and through other channels<br />described below in a confidential and professional manner.<br />Moral Store respects your concerns about privacy, and recognizes that you care about how your information is used and shared, and we<br />We appreciate your confidence that we will do this carefully and wisely.<br />This Privacy Policy explains the types of personal information we collect on this site, in our stores, and in other ways<br />Below, how we may use that information and with whom we may share it. The notice also explains the procedures<br />We take steps to protect the security of personal information. We also tell you how to reach us to ask about (a) accessibility<br />A, (c) Tell us</p>\r\n<p>to, change or use the personal information you have provided to us, (b) withdraw any consent you have previously provided to us<br />to stop communicating with you about our products and services, and (d) answer any questions you have about our privacy practices.<br />This notice explains our privacy policy. By visiting store.murale, you agree to the practices<br />described in this Privacy Policy.<br />Information about the privacy policy<br />Mural Store is committed to protecting and respecting your privacy. Please read our Privacy Policy carefully to understand how we collect<br />What data you collect and why we collect it, as well as how we use it.<br />When do we collect your personal information?<br />We would like to send you information about our products, services, offers and promotions, but we will not<br />We do this only with your consent to receive such information. You can tell us that you want to receive this information either at:<br />At the exhibition or via the website.<br />We will also use your personal information when you purchase services or products. The purpose is so that we can complete<br />Your purchase order.<br />All information you provide to us is confidential. We will only use your information in the way we inform you about it in this policy<br />Privacy.<br />What personal information do you provide to us?<br />You may provide us with the following:<br />Name, address, shipping address, or in your correspondence with us by phone or email, the history of your purchases of products<br />Moral Services, and any information you decide to share with us.<br />What personal information do we provide to third parties?<br />Your privacy is important to us and therefore we will never sell or disclose your personal information to any third party for use.<br />Information for any purposes other than those described in this Privacy Policy.<br />We may provide your personal information to trusted service partners in order to provide services to you. For example, for<br />For marketing purposes, financing, payment processing, delivery, and other services inside or outside the exhibition.<br />To combat fraud or other criminal activity and to ensure the accuracy of your information, we may provide information available to us<br />About you to other companies, retailers, financial institutions or other organizations specializing in anti-fraud<br />And crime. We are sometimes required to disclose information we have about customers to law enforcement agencies where<br />There is an allegation of suspected criminal activity.<br />We will take care to ensure that your personal information is protected when it is sent outside the Mural store.</p>\r\n<p>We take care to ensure that our service partners respect the security of your personal information.<br />What do we do with the personal information you provide to us?<br />We use the information you provide to us in several different ways:</p>\r\n<p>Executing purchase and delivery orders<br />To process your request while ensuring the accuracy of the personal and financial information you provide. For this, we use special payment systems<br />We use trusted third parties to ensure the security of your payments and to ensure that your data is not used in fraudulent ways. we<br />We use fraud analysis systems that ensure true and accurate payment information is provided to Moral for any purchases. We might too<br />Using credit agencies to do this job for us.<br />In order to ensure that the products and services you purchase are delivered to the correct address. This includes working with other parties<br />Trusted outside of Moral and sharing your personal information provided by you with these parties. For example, your name,<br />Your delivery address, and the delivery preferences you have provided to us, such as when you would like your purchases to be delivered<br />In it during the day.<br />We may store or process the information you provide for a period of time to ensure that any allegation of fraudulent use of identity can<br />To be properly investigated in the future.<br />In order to handle product returns or potential claims of defective products or services, we need to collect...<br />and process your personal information. In order to combat fraud regarding claims and returns, we may need to request information<br />A specific person from you to complete your request.<br />In order to carry out marketing activities and improve the customer\'s browsing experience<br />We collect your personal data to support a number of marketing, statistical and analytical activities, all aimed at improving<br />Services, products and website. For example: We may use the information we collect from you to analyze how<br />How you shop and what you shop for. This allows us to provide you with a relevant browsing experience and ensures that you are provided with relevant marketing materials<br />Your needs and taste. This information also allows us to show you products and services during browsing that are relevant to you<br />Information we have about you.<br />You may also share your data with us by creating a profile on the website so that you can, for example,<br />Save time shopping online.<br />So that we do not retain personal information for longer periods than is necessary, we reserve the right to suspend your account if your account remains</p>\r\n<p>So that we do not retain personal information for longer periods than is necessary, we reserve the right to suspend your account if your account remains<br />Your personal or IKEA Friends account is inactive for a long period of time.<br />Where is your personal information stored?<br />We keep the personal information we collect about you in secure places. Your personal information is protected from unauthorized access<br />Licensed, disclosed, used, modified or destroyed by any organization or individual.<br />Do you link to other websites?<br />Our website may contain links to and from third parties. These websites have their own privacy policies.<br />If you follow a link to these websites, please ensure you read their privacy policies before<br />Submit any information to these websites. We do not accept any responsibility or liability for the policies of these sites.<br />No longer wish to be contacted for marketing purposes?<br />If you do not wish to be contacted about our products and services, you can unsubscribe by writing to us at<br />store.murale@info If you have a personal account on the Murale website, you can, in return, cancel the subscription through<br />Log in to your account.</p>\r\n<p>Would you like to update your records?<br />If you believe that the personal information we have about you is inaccurate or needs to be updated (for example, you may...<br />If you have changed your address, etc.) please contact us so that we can correct it. Mural Store is subject to a legal obligation to ensure<br />Ensure that all information we have about our customers is factually correct and up to date. To do this, please write to us at<br />store.murale@info If you have saved a personal account on a store, you can change the data saved about you from<br />By logging in to your account.</p>', '2023-02-27 14:38:58', '2024-03-31 14:30:40'),
(2, 'نبذه عنا', 'who we are', '<p>تم إنشاء متجر الكمبيوتر عبر الإنترنت هذا لتزويد العملاء بطريقة مريحة وموثوقة لشراء العاب اطفال&nbsp;عالية الجودة. يقدم متجرنا مجموعة واسعة من المنتجات ، بما في ذلك العاب الذكاء والالعاب التعليمية والعاب مونتسورى، من العلامات التجارية الرائدة في هذا المجال. نحن نفخر بأنفسنا لتقديم أسعار تنافسية وخدمة عملاء استثنائية لضمان حصول عملائنا على تجربة تسوق إيجابية. لقد ساعدنا التزامنا بتقديم منتجات وخدمات عالية الجودة على إنشاء قاعدة عملاء مخلصين على مر السنين ، ونواصل العمل الجاد لتلبية توقعاتهم وتجاوزها. سواء كنت محترفًا أو مستخدمًا منزليًا ، فنحن على ثقة من أنك ستجد&nbsp;العاب الاطفال التي تحتاجها في متجرنا عبر الإنترنت.</p>', '<p>This online computer store was created to provide customers with a convenient and reliable way to purchase high-quality kids toys. Our store offers a wide range of products, including intelligence toys, educational toys and Montessori toys, from leading brands in the field. We pride ourselves on offering competitive pricing and exceptional customer service to ensure our customers have a positive shopping experience. Our commitment to providing quality products and services has helped us create a loyal customer base over the years, and we continue to work hard to meet and exceed their expectations. Whether you are a professional or a home user, we are confident that you will find the kids games you need in our online store.</p>', '2023-03-23 22:05:27', '2024-02-10 09:43:19'),
(3, 'سياسات الدفع', 'Payment policies', '<p>نحن نسعى لتوفير خيارات دفع متنوعة وآمنة لعملائنا الكرام. ولذلك، فإننا نقدم سياسة دفع واضحة ومفصلة للتأكد من تسهيل عملية الدفع وجعلها مريحة للعملاء</p>\r\n<p>1- خيارات الدفع: نحن نوفر خيارات دفع متنوعة بما في ذلك الدفع عن طريق البطاقة الائتمانية، الدفع عن طريق الباي بال، والدفع عند الاستلام (COD). يمكن للعملاء اختيار الخيار الذي يناسبهم.</p>\r\n<p>&nbsp;</p>\r\n<p>2- أمان الدفع: نحن نستخدم أحدث التقنيات والبرامج الأمنية للتأكد من أن جميع عمليات الدفع تتم بطريقة آمنة ومشفرة. كما أننا نعمل مع مزودي خدمات الدفع الموثوقة لتحقيق ذلك.</p>\r\n<p>&nbsp;</p>\r\n<p>3- تأكيد الدفع: يتم إرسال تأكيد الدفع عبر البريد الإلكتروني بمجرد تأكيد العملية ويحتوي على تفاصيل الطلب ورقم الفاتورة.</p>\r\n<p>&nbsp;</p>\r\n<p>4- الرسوم الإضافية: قد يتم فرض رسوم إضافية على بعض خيارات الدفع، مثل الدفع عند الاستلام. يتم عرض جميع الرسوم الإضافية في عربة التسوق قبل الدفع.</p>\r\n<p>&nbsp;</p>\r\n<p>5- الاسترداد والاسترجاع: في حالة وجود أي مشكلة مع الطلب أو الدفع، يرجى التواصل مع فريق الدعم الفني لدينا. نحن نقدم خدمة الاسترجاع والاسترداد بموجب سياسة الاسترجاع المعتادة. ولكن يجب ملاحظة أن بعض العمليات قد تتطلب وقتًا إضافيًا للتحقق والمعالجة.</p>', '<p>We strive to provide diverse and secure payment options to our valued customers. Therefore, we provide a clear and detailed payment policy to make sure that the payment process is easy and convenient for customers</p>\r\n<p>1- Payment options: We provide various payment options including payment by credit card, payment by PayPal, and cash on delivery (COD). Customers can choose the option that suits them best.</p>\r\n<p>&nbsp;</p>\r\n<p>2- Payment security: We use the latest technology and security software to ensure that all payment transactions are made in a secure and encrypted manner. We also work with trusted payment service providers to make this happen.</p>\r\n<p>&nbsp;</p>\r\n<p>3- Payment Confirmation: Payment confirmation is sent via email once the transaction is confirmed and contains order details and invoice number.</p>\r\n<p>&nbsp;</p>\r\n<p>4- Additional fees: Additional fees may apply for some payment options, such as cash on delivery. All additional fees are shown in the shopping cart before checkout.</p>\r\n<p>&nbsp;</p>\r\n<p>5- Refund and Return: In case of any problem with the order or payment, please contact our technical support team. We provide return and refund service under the usual return policy. However, you should note that some operations may require additional verification and processing time.</p>', '2023-03-23 22:05:53', '2023-05-10 00:18:10'),
(4, 'سياسات الشحن', 'shipping policies', '<p>نسعى جاهدين لتوفير خدمة شحن سريعة وفعالة لعملائنا الكرام. ولذلك، فإننا نقدم سياسة شحن واضحة ومفصلة للتأكد من توصيل الطلبات بأسرع وقت ممكن.</p>\r\n<p>&nbsp;</p>\r\n<p>1- خيارات الشحن: نحن نوفر خيارات متعددة للشحن، بما في ذلك الشحن القياسي والشحن السريع. يتم اختيار طريقة الشحن وفقًا للموقع والبضائع المطلوبة.</p>\r\n<p>&nbsp;</p>\r\n<p>2- المدة المقدرة للتسليم: تعتمد المدة المقدرة للتسليم على الوجهة والخيارات المختارة للشحن. نحن نسعى جاهدين لتوصيل الطلبات في أسرع وقت ممكن ولكن يمكن أن تتأثر المدة المقدرة للتسليم بعوامل خارجة عن السيطرة مثل ظروف الطقس أو الأعياد الوطنية.</p>\r\n<p>3- رسوم الشحن: تختلف رسوم الشحن وفقًا للخيارات المختارة للشحن والمنطقة التي تتم الشحن إليها. يتم عرض رسوم الشحن في سلة التسوق قبل إتمام الشراء.</p>\r\n<p>&nbsp;</p>\r\n<p>4- تتبع الطلبات: يمكن للعملاء تتبع حالة طلباتهم ومعرفة المدة المتبقية للتسليم من خلال رقم التتبع الذي يتم إرساله عبر البريد الإلكتروني بمجرد شحن الطلب.</p>\r\n<p>&nbsp;</p>\r\n<p>5- التأمين والضمان: نحن نحرص على توفير خدمة شحن آمنة وموثوقة لعملائنا، ونحن نقوم بتأمين جميع الطرود المرسلة لحماية العملاء من الخسائر أو التلف. إذا كان هناك أي خطأ في الشحن أو تلف البضائع.</p>', '<p>We strive to provide fast and efficient shipping service to our valued customers. Therefore, we offer a clear and detailed shipping policy to ensure that orders are delivered as quickly as possible.</p>\r\n<p>&nbsp;</p>\r\n<p>1- Shipping options: We offer multiple shipping options, including Standard Shipping and Expedited Shipping. The shipping method is selected according to the location and the goods ordered.</p>\r\n<p>&nbsp;</p>\r\n<p>2- Estimated time for delivery: The estimated time for delivery depends on the destination and the options chosen for shipping. We strive to deliver orders as quickly as possible but the estimated lead time for delivery can be affected by factors beyond our control such as weather conditions or national holidays.</p>\r\n<p>3- Shipping Fee: Shipping fee varies according to the shipping options chosen and the region being shipped to. The shipping fee is shown in the cart before checkout.</p>\r\n<p>&nbsp;</p>\r\n<p>4- Track orders: Customers can track the status of their orders and know the remaining time for delivery through the tracking number that is sent via email once the order has been shipped.</p>\r\n<p>&nbsp;</p>\r\n<p>5- Insurance and guarantee: We are keen to provide a safe and reliable shipping service to our customers, and we insure all packages sent to protect customers from loss or damage. If there is any error in the shipment or damage to the goods.</p>', '2023-03-23 22:07:22', '2023-05-10 00:17:08'),
(5, 'سياسات الاسترجاع', 'Return policies', '<p>سياسة الأسترجاع و الاستبدال<br />- للإستفادة من خدمات الإرجاع والإستبدال والضمان يجب إحضار الفاتورة الأصلية.<br />- يحق للعميل استرجاع أو استبدال المنتجات خلال 14يوم من تاريخ الشراء، بشرط<br />أن يكون المنتج بحالته الأصلية بنفس حالتة عند الشراء مع كامل ملحقاته.<br />- يشمل الإرجاع والاستبدال جميع الأصناف باستثناء ( .......... ) إلا إذا وجد عيب<br />مصنعي في الصنف.<br />- يحق لمتجر مورال إلغاء طلب أي عميل في حال وجود خلل في الموقع أو بسبب<br />وجود خطأ بالسعر المذكور أو انتهاء مخزون المنتج وإرجاع المبلغ للعميل على<br />حسابه البنكي أو على بطاقته ولا يحق للعميل المطالبة بتوفير المنتج.<br />- في حال عدم توفر المنتج المراد استبداله علي المتجر، سيتم التواصل مع العميل في<br />حال رغبته بمنتج آخر.<br />- لا يتم استبدال المنتجات التي تم فتحها إذا لم يثبت وجود عيب مصنعي فيها مع<br />ملاحظة أن المنتجات الغير قابلة للاستبدال هي كل ما يخل أو يخرج عن شروط<br />الضمان مثل (سوء الاستخدام &ndash; الكسر &ndash; المنتج المفتوح في غير حالته الطبيعية &ndash;<br />عدم اتباع إرشادات التشغيل &ndash; تعرض المنتج للماء في حال أنه لم يكن ضد الماء.)<br />- إذا تم فحص المنتج واتضح أنه تحت الضمان وتبين العطل يتم تعويض العميل بمنتج<br />جديد ويتحمل المتجر تكلفة الشحن، ويتم الاتفاق مع العميل على طريقة التسليم<br />لشركات الشحن مع فريق خدمة العملاء حسب سياسة كل مدينة ومن أين تم شراء<br />المنتج.<br />- يتحمل العميل قيمة الشحن في حال الاستبدال أو الاسترجاع.<br />- إستلام الشحنة من شركة الشحن يعتبر إقرارا من العميل أن الشحنة (الكرتون) سليم<br />وبحالة جيدة ولم يتم فتحه&nbsp;قبل&nbsp;الإستلام</p>', '<p>سياسة الأسترجاع و الاستبدال<br />- للإستفادة من خدمات الإرجاع والإستبدال والضمان يجب إحضار الفاتورة الأصلية.<br />- يحق للعميل استرجاع أو استبدال المنتجات خلال 14يوم من تاريخ الشراء، بشرط<br />أن يكون المنتج بحالته الأصلية بنفس حالتة عند الشراء مع كامل ملحقاته.<br />- يشمل الإرجاع والاستبدال جميع الأصناف باستثناء ( .......... ) إلا إذا وجد عيب<br />مصنعي في الصنف.<br />- يحق لمتجر مورال إلغاء طلب أي عميل في حال وجود خلل في الموقع أو بسبب<br />وجود خطأ بالسعر المذكور أو انتهاء مخزون المنتج وإرجاع المبلغ للعميل على<br />حسابه البنكي أو على بطاقته ولا يحق للعميل المطالبة بتوفير المنتج.<br />- في حال عدم توفر المنتج المراد استبداله علي المتجر، سيتم التواصل مع العميل في<br />حال رغبته بمنتج آخر.<br />- لا يتم استبدال المنتجات التي تم فتحها إذا لم يثبت وجود عيب مصنعي فيها مع<br />ملاحظة أن المنتجات الغير قابلة للاستبدال هي كل ما يخل أو يخرج عن شروط<br />الضمان مثل (سوء الاستخدام &ndash; الكسر &ndash; المنتج المفتوح في غير حالته الطبيعية &ndash;<br />عدم اتباع إرشادات التشغيل &ndash; تعرض المنتج للماء في حال أنه لم يكن ضد الماء.)<br />- إذا تم فحص المنتج واتضح أنه تحت الضمان وتبين العطل يتم تعويض العميل بمنتج<br />جديد ويتحمل المتجر تكلفة الشحن، ويتم الاتفاق مع العميل على طريقة التسليم<br />لشركات الشحن مع فريق خدمة العملاء حسب سياسة كل مدينة ومن أين تم شراء<br />المنتج.<br />- يتحمل العميل قيمة الشحن في حال الاستبدال أو الاسترجاع.<br />- إستلام الشحنة من شركة الشحن يعتبر إقرارا من العميل أن الشحنة (الكرتون) سليم<br />وبحالة جيدة ولم يتم فتحه&nbsp;قبل&nbsp;الإستلام</p>', '2023-03-23 22:07:46', '2024-05-23 14:01:30'),
(7, 'الأحكام والشروط', 'Terms and Conditions', '<p>شروط وأحكام compuworx<br />مقدمة<br />يجب أن تدير شروط وأحكام موقع الويب القياسية هذه المكتوبة على صفحة الويب هذه استخدامك لموقعنا على الويب ، ويمكن الوصول إلى compuworx على https://compuworxllc.com/.</p>\r\n<p>سيتم تطبيق هذه الشروط بالكامل وستؤثر على استخدامك لهذا الموقع. باستخدام هذا الموقع ، فإنك توافق على قبول جميع الشروط والأحكام المكتوبة هنا. يجب ألا تستخدم هذا الموقع إذا كنت لا توافق على أي من شروط وأحكام موقع الويب القياسية هذه.</p>\r\n<p>لا يُسمح للقصر أو الأشخاص الذين تقل أعمارهم عن 18 عامًا باستخدام هذا الموقع.</p>\r\n<p>حقوق الملكية الفكرية<br />بخلاف المحتوى الذي تمتلكه ، بموجب هذه الشروط ، تمتلك compuworx و / أو المرخصون التابعون لها جميع حقوق الملكية الفكرية والمواد الواردة في هذا الموقع. تم إنشاء الشروط والأحكام الخاصة بنا في نموذج الشروط والأحكام.</p>\r\n<p>يتم منحك ترخيصًا محدودًا فقط لأغراض عرض المواد الموجودة على هذا الموقع.</p>\r\n<p>قيود<br />أنت مقيد على وجه التحديد من كل ما يلي:</p>\r\n<p>نشر أي مواد من مواقع الويب في أي وسائط أخرى ؛<br />بيع و / أو ترخيص و / أو تسويق أي من مواد الموقع ؛<br />الأداء العلني و / أو إظهار أي من مواد الموقع ؛<br />استخدام هذا الموقع بأي طريقة تضر أو قد تكون ضارة بهذا الموقع ؛<br />استخدام هذا الموقع بأي طريقة تؤثر على وصول المستخدم إلى هذا الموقع ؛<br />استخدام هذا الموقع بشكل مخالف للقوانين واللوائح المعمول بها ، أو بأي شكل من الأشكال قد يتسبب في ضرر للموقع ، أو لأي شخص أو كيان تجاري ؛<br />الانخراط في أي تنقيب عن البيانات أو جمع البيانات أو استخراج البيانات أو أي نشاط مشابه آخر فيما يتعلق بهذا الموقع ؛<br />استخدام هذا الموقع للدخول في أي إعلان أو تسويق.<br />يُحظر وصولك إلى مناطق معينة من هذا الموقع ، ويجوز لـ compuworx تقييد وصولك إلى أي مناطق في هذا الموقع ، في أي وقت ، وفقًا لتقديرها المطلق. أي معرف مستخدم وكلمة مرور قد يكون لديك لهذا الموقع يكون سريًا ويجب عليك الحفاظ على السرية أيضًا.</p>\r\n<p>المحتوى الخاص بك<br />في شروط وأحكام موقع الويب القياسية هذه ، يعني \"المحتوى الخاص بك\" أي صوت أو نص فيديو أو صور أو أي مادة أخرى تختار عرضها على هذا الموقع. من خلال عرض المحتوى الخاص بك ، فإنك تمنح compuworx ترخيصًا فرعيًا غير حصري وغير قابل للإلغاء في جميع أنحاء العالم لاستخدامه وإعادة إنتاجه وتكييفه ونشره وترجمته وتوزيعه في أي وجميع الوسائط.</p>\r\n<p>يجب أن يكون المحتوى الخاص بك ملكًا لك ويجب ألا ينتهك حقوق أي طرف ثالث. تحتفظ compuworx بالحق في إزالة أي من المحتوى الخاص بك من هذا الموقع في أي وقت دون إشعار.</p>\r\n<p>لا توجد ضمانات<br />يتم توفير هذا الموقع \"كما هو\" مع جميع العيوب ، ولا تعبر compuworx عن أي تعهدات أو ضمانات من أي نوع يتعلق بهذا الموقع أو المواد الموجودة على هذا الموقع. أيضًا ، لن يتم تفسير أي شيء وارد في هذا الموقع على أنه نصح لك.</p>\r\n<p>تحديد المسؤولية<br />لن تتحمل كومبووركس بأي حال من الأحوال ، ولا أي من مسؤوليها ومديريها وموظفيها ، المسؤولية عن أي شيء ينشأ عن أو يرتبط بأي شكل من الأشكال باستخدامك لهذا الموقع سواء كانت هذه المسؤولية بموجب عقد. لا تتحمل compuworx ، بما في ذلك مسؤوليها ومديريها وموظفيها ، المسؤولية عن أي مسؤولية غير مباشرة أو تبعية أو خاصة تنشأ عن أو تتعلق بأي شكل من الأشكال باستخدامك لهذا الموقع.</p>\r\n<p>التعويض<br />أنت بموجب هذا تعوض compuworx إلى أقصى حد من وضد أي و / أو جميع الالتزامات والتكاليف والمطالب وأسباب الدعوى والأضرار والنفقات الناشئة بأي شكل من الأشكال المتعلقة بخرقك لأي من أحكام هذه الشروط.</p>\r\n<p>الاستقلالية<br />إذا تبين أن أي بند من هذه الشروط غير صالح بموجب أي قانون معمول به ، فسيتم حذف هذه الأحكام دون التأثير على الأحكام المتبقية هنا.</p>\r\n<p>اختلاف الشروط<br />يُسمح لـ compuworx بمراجعة هذه الشروط في أي وقت تراه مناسبًا ، وباستخدام هذا الموقع ، يُتوقع منك مراجعة هذه الشروط على أساس منتظم.</p>\r\n<p>تكليف<br />يُسمح لـ compuworx بتعيين ونقل والتعاقد من الباطن على حقوقها و / أو التزاماتها بموجب هذه الشروط دون أي إخطار. ومع ذلك ، لا يُسمح لك بتعيين أو نقل أو التعاقد من الباطن على أي من حقوقك و / أو التزاماتك بموجب هذه الشروط.</p>\r\n<p>اتفاق كامل<br />تشكل هذه الشروط الاتفاقية الكاملة بين compuworx وبينك فيما يتعلق باستخدامك لهذا الموقع ، وتحل محل جميع الاتفاقات والتفاهمات السابقة.</p>\r\n<p>القانون الحاكم والاختصاص القضائي<br />تخضع هذه الشروط وتُفسر وفقًا لقوانين ولايتنا ، وأنت تخضع للاختصاص القضائي غير الحصري لمحاكم الولاية والمحاكم الفيدرالية الموجودة لدينا لحل أي نزاعات.</p>\r\n<p>تم إنشاؤها باستخدام نموذج الشروط والأحكام</p>', '<p>Terms and Conditions for compuworx<br />Introduction<br />These Website Standard Terms and Conditions written on this webpage shall manage your use of our website, compuworx accessible at https://compuworxllc.com/.</p>\r\n<p>These Terms will be applied fully and affect to your use of this Website. By using this Website, you agreed to accept all terms and conditions written in here. You must not use this Website if you disagree with any of these Website Standard Terms and Conditions.</p>\r\n<p>Minors or people below 18 years old are not allowed to use this Website.</p>\r\n<p>Intellectual Property Rights<br />Other than the content you own, under these Terms, compuworx and/or its licensors own all the intellectual property rights and materials contained in this Website. Our Terms and Conditions have been generated at&nbsp;Terms And Conditions Template.</p>\r\n<p>You are granted limited license only for purposes of viewing the material contained on this Website.</p>\r\n<p>Restrictions<br />You are specifically restricted from all of the following:</p>\r\n<p>publishing any Website material in any other media;<br />selling, sublicensing and/or otherwise commercializing any Website material;<br />publicly performing and/or showing any Website material;<br />using this Website in any way that is or may be damaging to this Website;<br />using this Website in any way that impacts user access to this Website;<br />using this Website contrary to applicable laws and regulations, or in any way may cause harm to the Website, or to any person or business entity;<br />engaging in any data mining, data harvesting, data extracting or any other similar activity in relation to this Website;<br />using this Website to engage in any advertising or marketing.<br />Certain areas of this Website are restricted from being access by you and compuworx may further restrict access by you to any areas of this Website, at any time, in absolute discretion. Any user ID and password you may have for this Website are confidential and you must maintain confidentiality as well.</p>\r\n<p>Your Content<br />In these Website Standard Terms and Conditions, \"Your Content\" shall mean any audio, video text, images or other material you choose to display on this Website. By displaying Your Content, you grant compuworx a non-exclusive, worldwide irrevocable, sub licensable license to use, reproduce, adapt, publish, translate and distribute it in any and all media.</p>\r\n<p>Your Content must be your own and must not be invading any third-party\'s rights. compuworx reserves the right to remove any of Your Content from this Website at any time without notice.</p>\r\n<p>No warranties<br />This Website is provided \"as is,\" with all faults, and compuworx express no representations or warranties, of any kind related to this Website or the materials contained on this Website. Also, nothing contained on this Website shall be interpreted as advising you.</p>\r\n<p>Limitation of liability<br />In no event shall compuworx, nor any of its officers, directors and employees, shall be held liable for anything arising out of or in any way connected with your use of this Website whether such liability is under contract. &nbsp;compuworx, including its officers, directors and employees shall not be held liable for any indirect, consequential or special liability arising out of or in any way related to your use of this Website.</p>\r\n<p>Indemnification<br />You hereby indemnify to the fullest extent compuworx from and against any and/or all liabilities, costs, demands, causes of action, damages and expenses arising in any way related to your breach of any of the provisions of these Terms.</p>\r\n<p>Severability<br />If any provision of these Terms is found to be invalid under any applicable law, such provisions shall be deleted without affecting the remaining provisions herein.</p>\r\n<p>Variation of Terms<br />compuworx is permitted to revise these Terms at any time as it sees fit, and by using this Website you are expected to review these Terms on a regular basis.</p>\r\n<p>Assignment<br />The compuworx is allowed to assign, transfer, and subcontract its rights and/or obligations under these Terms without any notification. However, you are not allowed to assign, transfer, or subcontract any of your rights and/or obligations under these Terms.</p>\r\n<p>Entire Agreement<br />These Terms constitute the entire agreement between compuworx and you in relation to your use of this Website, and supersede all prior agreements and understandings.</p>\r\n<p>Governing Law &amp; Jurisdiction<br />These Terms will be governed by and interpreted in accordance with the laws of the State of us, and you submit to the non-exclusive jurisdiction of the state and federal courts located in us for the resolution of any disputes.</p>\r\n<p><br />Generated using&nbsp;Terms and Conditions Template</p>', '2023-05-04 02:28:05', '2023-05-04 02:28:05'),
(8, 'تواصل معنا', 'Connect with us', '<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; رقم هاتف جوال: +966-5703-86176</p>\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; رقم فاكس (إن وجد): +9661</p>\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; البريد اإللكتروني المخصص للدعم الفنى : Support@najwantoys.com</p>\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; البريد اإللكتروني المخصص للاستفسارات: Info@najwantoys.com</p>\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; البريد اإللكتروني الشخصى:&nbsp; marketing@najwantoys.com</p>\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; خريطة المكان على خرائط جوجل:&nbsp;</p>\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; العنوان التفصيلي للمكان:&nbsp;</p>', '<p>Mobile phone number: +1 (609) 635-3520<br />&bull; Fax number (if available): +1 (856) 361-7375<br />&bull; Technical support e-mail: Support@compuworxllc.com<br />&bull; Email for inquiries: Info@compuworxllc.com<br />&bull; Personal email: elashri@compuworxllc.com<br />&bull; Map location on Google Maps&nbsp;&nbsp;<br />The detailed address for the place:&nbsp;</p>', '2023-05-10 00:19:57', '2024-02-10 10:23:13');

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- بنية الجدول `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_fr` varchar(255) DEFAULT NULL,
  `middleware` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `expires_at`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 220, 'API TOKEN', '30d60622803db0df0af2c8486b857838ca9bb42adaed57268a7076d0ba2fd6ee', '[\"*\"]', NULL, NULL, '2023-03-01 11:05:00', '2023-03-01 11:05:00'),
(2, 'App\\Models\\User', 221, 'API TOKEN', '30bdb7667b781c7bf9ac5616c4c38aea99ad7c06c24e0cecf314a1ad81aca038', '[\"*\"]', NULL, NULL, '2023-03-01 11:05:21', '2023-03-01 11:05:21'),
(3, 'App\\Models\\User', 222, 'API TOKEN', 'ce288f4345a0612a92982ee2e9a92c845a13be0af99f37aed826fb92d19fc93e', '[\"*\"]', NULL, NULL, '2023-03-01 11:05:37', '2023-03-01 11:05:37'),
(4, 'App\\Models\\User', 223, 'API TOKEN', '40401c785e9e6768599c6231416f6a283ae0643995ba5bfe1eb70f49890f79f0', '[\"*\"]', NULL, NULL, '2023-03-01 11:08:21', '2023-03-01 11:08:21'),
(5, 'App\\Models\\User', 222, 'API TOKEN', '008b25be317ff759c16e14c14a7acb103de757e7baf26bc536497647ccfb3289', '[\"*\"]', NULL, NULL, '2023-03-01 11:10:49', '2023-03-01 11:10:49'),
(8, 'App\\Models\\User', 219, 'API TOKEN', 'c28b0d9bde7fb2ca5fdecc7f27a5213a769fa9d6834dafaa0120a1770bf31db2', '[\"*\"]', NULL, '2023-03-01 07:24:24', '2023-03-01 11:20:40', '2023-03-01 07:24:24'),
(9, 'App\\Models\\User', 219, 'API TOKEN', '581e817a0dcf86dbfadf44192bcaf48d1fd8d80dce4c323e0ea2ca636a470bef', '[\"*\"]', NULL, '2023-03-01 07:33:39', '2023-03-01 11:24:32', '2023-03-01 07:33:39'),
(10, 'App\\Models\\User', 219, 'API TOKEN', '5e3d36d05bbe7e979fca00d3ce32355e910ecd07f24f5af7a4d1b6250fa031c3', '[\"*\"]', NULL, '2023-03-02 11:15:59', '2023-03-01 15:00:19', '2023-03-02 11:15:59'),
(11, 'App\\Models\\User', 219, 'API TOKEN', 'a59fa4bf7a9a27bfa8e08a8a4e1b4e9f0e59903f62a6083162beb22c1a3683fe', '[\"*\"]', NULL, '2023-03-02 11:26:59', '2023-03-02 15:18:22', '2023-03-02 11:26:59'),
(12, 'App\\Models\\User', 237, 'API TOKEN', '9b0c1b15eb309187af27069fb160a8be6633b1c2c59d1357ef26760da4ac5e2f', '[\"*\"]', NULL, NULL, '2023-08-20 07:26:33', '2023-08-20 07:26:33'),
(13, 'App\\Models\\User', 237, 'API TOKEN', 'a964d183d51bfe7f403e9a21a440948d9a654a5d04de853e1fe229f5935a9e08', '[\"*\"]', NULL, NULL, '2023-08-20 07:34:23', '2023-08-20 07:34:23'),
(14, 'App\\Models\\User', 237, 'API TOKEN', 'aecc39a7d1724c1f52e53db3c555af8583a9546fda50ba3e68875d44a8301cce', '[\"*\"]', NULL, NULL, '2023-08-20 07:46:32', '2023-08-20 07:46:32'),
(15, 'App\\Models\\User', 237, 'API TOKEN', '6f4ade4cdd5ea2fd6be8f95ec2845ebf9e7730a2f4a1e1dc9161332cc345be36', '[\"*\"]', NULL, NULL, '2023-08-20 07:46:55', '2023-08-20 07:46:55'),
(16, 'App\\Models\\User', 237, 'API TOKEN', 'feaf823ef1ff693cd3a52a04f77796e1d8dd844cb2800183786fd847b2757724', '[\"*\"]', NULL, NULL, '2023-08-20 07:47:02', '2023-08-20 07:47:02'),
(17, 'App\\Models\\User', 237, 'API TOKEN', 'ab6fcbd39e1190c51791afa1cf24deca8821220164a83eb7dcaa0dc2edfa91b7', '[\"*\"]', NULL, NULL, '2023-08-20 07:48:02', '2023-08-20 07:48:02'),
(18, 'App\\Models\\User', 237, 'API TOKEN', '2619fb5db504a8b751611b9fea28749e53cb2abcbd482b3ca221d5241136f14a', '[\"*\"]', NULL, NULL, '2023-08-20 07:48:44', '2023-08-20 07:48:44'),
(19, 'App\\Models\\User', 237, 'API TOKEN', 'fe6d8dbc5779eb2e182d48f0fae67c552788bcc3d8ee62f1583fda54511f8c6f', '[\"*\"]', NULL, NULL, '2023-08-20 07:49:09', '2023-08-20 07:49:09'),
(20, 'App\\Models\\User', 237, 'API TOKEN', '9d2eeeb6db590d469c24c8c5edc183b89055a33bf619e189f3ae05e1fc9caed0', '[\"*\"]', NULL, NULL, '2023-08-20 07:49:30', '2023-08-20 07:49:30'),
(21, 'App\\Models\\User', 237, 'API TOKEN', 'cffc54e7ef8f08f794102b7aafd05c278376ad77f3aeefa730ff14baf2f7ed80', '[\"*\"]', NULL, NULL, '2023-08-20 07:49:49', '2023-08-20 07:49:49'),
(22, 'App\\Models\\User', 237, 'API TOKEN', '32e7908ca9c23f3c26a8a8680bb8b51789ca1f53a283735d79ab0f6f7baaf276', '[\"*\"]', NULL, NULL, '2023-08-20 07:50:12', '2023-08-20 07:50:12'),
(23, 'App\\Models\\User', 237, 'API TOKEN', '8aa22dba3aeb4f4e0a9f1331815e991c3abc9942607daaf58fed7867a715e90c', '[\"*\"]', NULL, NULL, '2023-08-20 07:50:53', '2023-08-20 07:50:53'),
(24, 'App\\Models\\User', 237, 'API TOKEN', '5b59896eac86a5ffa1ea9043c4e445781b673a8e77a8147732896f85e2c0ee16', '[\"*\"]', NULL, NULL, '2023-08-20 07:51:03', '2023-08-20 07:51:03'),
(25, 'App\\Models\\User', 237, 'API TOKEN', '5a1ef103a2cf3f5552bbc84628eed2c59ffc314ce86ac41a9746af46f076bfe8', '[\"*\"]', NULL, NULL, '2023-08-20 07:54:23', '2023-08-20 07:54:23'),
(26, 'App\\Models\\User', 237, 'API TOKEN', '14b7f9134f47e43f9d8dc6d1c91c84414611cc35c52801c25b66103dd0389c73', '[\"*\"]', NULL, NULL, '2023-08-20 07:55:00', '2023-08-20 07:55:00'),
(27, 'App\\Models\\User', 237, 'API TOKEN', 'ffa360ec5470be5e3397eb8ab7dd39a60f58aa3324c6b55d2728d85e29528bf4', '[\"*\"]', NULL, NULL, '2023-08-20 07:55:22', '2023-08-20 07:55:22'),
(28, 'App\\Models\\User', 237, 'API TOKEN', '3d6ac2fb770ee0bb442f9501c6431a624d4c94f2434fd274a6b6d978047be533', '[\"*\"]', NULL, NULL, '2023-08-20 07:55:42', '2023-08-20 07:55:42'),
(29, 'App\\Models\\User', 237, 'API TOKEN', '6b8e1478114ea3c99f478bc848b7d96cbdb5c72fa2b3c2bedfd3769ef2fe3a8f', '[\"*\"]', NULL, NULL, '2023-08-20 07:56:00', '2023-08-20 07:56:00'),
(30, 'App\\Models\\User', 237, 'API TOKEN', 'afd7db6f13596ee513746b89929e4f30b40ea86f2c70a43cd8288a325c5b8136', '[\"*\"]', NULL, NULL, '2023-08-20 07:56:44', '2023-08-20 07:56:44'),
(31, 'App\\Models\\User', 237, 'API TOKEN', '7d1526de7de4404c9a61c3ada97cceb2091055277a06b90cdb4c8749fccdfe85', '[\"*\"]', NULL, NULL, '2023-08-20 07:57:02', '2023-08-20 07:57:02'),
(32, 'App\\Models\\User', 238, 'API TOKEN', '31a3dd21c86f80ee1525942f5df16564467de3dbe0dd8cce1a390c8ce5cc916f', '[\"*\"]', NULL, NULL, '2023-08-20 07:58:56', '2023-08-20 07:58:56'),
(33, 'App\\Models\\User', 239, 'API TOKEN', '8e68b06701ecafa1ddd06e9ca13e766d400f139166b6a5533639becb15bb6624', '[\"*\"]', NULL, NULL, '2023-08-20 08:05:17', '2023-08-20 08:05:17'),
(34, 'App\\Models\\User', 240, 'API TOKEN', 'e6fa1c2387bb59dd1b82ec8b4793d21852bab12575d846e3f9eb524fde5bdc0b', '[\"*\"]', NULL, NULL, '2023-08-20 08:06:10', '2023-08-20 08:06:10'),
(35, 'App\\Models\\User', 241, 'API TOKEN', '635a23551e900e527020ecaa288981bb704b4fc6f817b05c89a56d62b0ed7762', '[\"*\"]', NULL, NULL, '2023-08-20 08:18:02', '2023-08-20 08:18:02'),
(36, 'App\\Models\\User', 242, 'API TOKEN', '1fc143a96503c2b40b6fc54ef470b8e33f9dff0c1845043d9c3284280f24311a', '[\"*\"]', NULL, NULL, '2023-08-20 08:18:26', '2023-08-20 08:18:26'),
(37, 'App\\Models\\User', 243, 'API TOKEN', 'b244ef709c407684a8f215f9876460e85c380eb7b7f0bcb64a6e5863b04598ba', '[\"*\"]', NULL, NULL, '2023-08-20 08:19:16', '2023-08-20 08:19:16'),
(38, 'App\\Models\\User', 244, 'API TOKEN', '1a6cd765eda9b8e4b7049f54dc64c3cb7e80d4d4707a407be35727393f45b0c5', '[\"*\"]', NULL, NULL, '2023-08-20 08:19:42', '2023-08-20 08:19:42'),
(39, 'App\\Models\\User', 245, 'API TOKEN', '044f0ae1e82648110521f2f327b43919154703a9f9f2e0053e931b41e72ce84d', '[\"*\"]', NULL, NULL, '2023-08-20 08:22:16', '2023-08-20 08:22:16'),
(40, 'App\\Models\\User', 246, 'API TOKEN', '895255eb3f5f15c665ed4ad954b3786018b567dc4c9b76c0b50656ed13e81d38', '[\"*\"]', NULL, NULL, '2023-08-20 08:28:28', '2023-08-20 08:28:28'),
(41, 'App\\Models\\User', 247, 'API TOKEN', 'b29e20817b32df6eb1e2392a91436acd805011a235b504c499888ec3910ee0b2', '[\"*\"]', NULL, NULL, '2023-08-20 08:47:38', '2023-08-20 08:47:38'),
(42, 'App\\Models\\User', 248, 'API TOKEN', '1e74d8526242b906a2d0ffcb2a0481668b10f93020bd0af10e21cc248e47b8af', '[\"*\"]', NULL, NULL, '2023-08-20 08:50:18', '2023-08-20 08:50:18'),
(43, 'App\\Models\\User', 249, 'API TOKEN', 'df83d086e7cb9c3a7f45161b6a62e5d773d39245ff3a0ee95a986d52dceaa97f', '[\"*\"]', NULL, NULL, '2023-08-20 08:51:04', '2023-08-20 08:51:04'),
(44, 'App\\Models\\User', 250, 'API TOKEN', '3042f36044e5ced3f3cdd2dedd00700599d0dc9e61b46d07d2d96d717a0229e5', '[\"*\"]', NULL, NULL, '2023-08-20 08:53:49', '2023-08-20 08:53:49'),
(45, 'App\\Models\\User', 251, 'API TOKEN', 'defcc053b692f6530be054530bb329a78c4edd815bff9c6c2b4880c91e77e515', '[\"*\"]', NULL, NULL, '2023-08-20 09:15:19', '2023-08-20 09:15:19'),
(46, 'App\\Models\\User', 251, 'API TOKEN', '8d7488722c4fd4a1a833e02fc6acd8cc278d274d25d41d0b8d15c367cf9bbd43', '[\"*\"]', NULL, NULL, '2023-08-20 09:16:56', '2023-08-20 09:16:56'),
(47, 'App\\Models\\User', 252, 'API TOKEN', 'c412523d4b761886a7c4574ca09674412bf7c0dadfb63d0b486f8b806ac43ded', '[\"*\"]', NULL, NULL, '2023-08-20 09:17:56', '2023-08-20 09:17:56'),
(48, 'App\\Models\\User', 253, 'API TOKEN', '093bd10ecdc1956763daca7f6a190ea5ea053221df542bf8812806dc5aae39ef', '[\"*\"]', NULL, NULL, '2023-08-20 09:19:55', '2023-08-20 09:19:55'),
(49, 'App\\Models\\User', 254, 'API TOKEN', '15df53843f4ebafde45bd750c9c554dc8584ccc080910e6448727de2f3369df7', '[\"*\"]', NULL, NULL, '2023-08-20 10:52:24', '2023-08-20 10:52:24'),
(50, 'App\\Models\\User', 255, 'API TOKEN', '8a72b36feca6673e7e45396290a79363743b911dd9ff7dcfd65ca208cd8cd68b', '[\"*\"]', NULL, NULL, '2023-08-20 12:42:11', '2023-08-20 12:42:11'),
(51, 'App\\Models\\User', 255, 'API TOKEN', 'f839acbfad4d7cf9d6a3627d94175f9c23e79bf5d246330c0f800431cf8749e0', '[\"*\"]', NULL, NULL, '2023-08-20 12:47:43', '2023-08-20 12:47:43'),
(52, 'App\\Models\\User', 255, 'API TOKEN', 'e4bd75323bd903ce3053f5e6aaf6e85e500552b6ae63c4e07026d6623849e9a4', '[\"*\"]', NULL, NULL, '2023-08-20 12:55:21', '2023-08-20 12:55:21'),
(53, 'App\\Models\\User', 256, 'API TOKEN', 'c2feb768b97700e026397a69c56e15de4533f3fc610d7886ac1a3e436439e46d', '[\"*\"]', NULL, NULL, '2023-08-21 12:12:29', '2023-08-21 12:12:29'),
(54, 'App\\Models\\User', 257, 'API TOKEN', '4d1c164ab308ab331fab00a47a8b1b81d94bd3183aa5e96443378bc8f6081b75', '[\"*\"]', NULL, NULL, '2023-08-21 12:13:26', '2023-08-21 12:13:26'),
(55, 'App\\Models\\User', 257, 'API TOKEN', 'cfe0228d2397085b2cf773185f3271088eb4c6c9c904c9a2fb6a13cb775439a9', '[\"*\"]', NULL, NULL, '2023-08-21 12:32:22', '2023-08-21 12:32:22'),
(56, 'App\\Models\\User', 258, 'API TOKEN', '34e8bd20deed09fa6f488bbf0b35c5238e17e4a3c7c424b1154d7edf3bddaca9', '[\"*\"]', NULL, NULL, '2023-08-21 12:36:32', '2023-08-21 12:36:32'),
(57, 'App\\Models\\User', 255, 'API TOKEN', 'bf1edea1dd3db17d461552eca0ae14b9dd52d88d4d909728cf992c1bc2e7db43', '[\"*\"]', NULL, NULL, '2023-08-21 12:37:28', '2023-08-21 12:37:28'),
(58, 'App\\Models\\User', 255, 'API TOKEN', '601c1525666a7365ecfb158d35f35ab00f2da92b1453571be3a23db0a1877d94', '[\"*\"]', NULL, NULL, '2023-08-21 12:41:21', '2023-08-21 12:41:21'),
(59, 'App\\Models\\User', 259, 'API TOKEN', '8043526fdc8282fa92fe3ee627f384c9bc77f94aaea310872e4220089f56ad87', '[\"*\"]', NULL, NULL, '2023-08-21 12:43:07', '2023-08-21 12:43:07'),
(60, 'App\\Models\\User', 260, 'API TOKEN', '95fd2803818191e7bb4173018b3d8cdb04ba67232383e4a4592f864c7e433cc4', '[\"*\"]', NULL, NULL, '2023-08-21 12:43:49', '2023-08-21 12:43:49'),
(61, 'App\\Models\\User', 255, 'API TOKEN', '1ac305b4cc80204619ab44aaf2d178d0c0b6a5a4c6781f931033c85c7dfb1e72', '[\"*\"]', NULL, NULL, '2023-08-21 12:44:11', '2023-08-21 12:44:11'),
(62, 'App\\Models\\User', 255, 'API TOKEN', '9c71cdbb6c3ec414337b1823e113e4c65181ac249be71781733df25e3e3e24f2', '[\"*\"]', NULL, NULL, '2023-08-22 12:29:35', '2023-08-22 12:29:35'),
(63, 'App\\Models\\User', 255, 'API TOKEN', '30aea47d9de7cc1267166c8693a3cc444a5910618010555e1ee36fa30774f07c', '[\"*\"]', NULL, NULL, '2023-08-22 13:22:58', '2023-08-22 13:22:58'),
(64, 'App\\Models\\User', 261, 'API TOKEN', '3a78ae446a4f833d645046e4ba5b16de8b320ccd143d21b2de6a4e0571ba3d37', '[\"*\"]', NULL, NULL, '2023-08-22 13:45:25', '2023-08-22 13:45:25'),
(65, 'App\\Models\\User', 261, 'API TOKEN', '94444a252f8de3c6618aaebbb5ae515fb8f8973d0f0274f4fafdb31bbabf262f', '[\"*\"]', NULL, NULL, '2023-08-22 13:46:45', '2023-08-22 13:46:45'),
(66, 'App\\Models\\User', 255, 'API TOKEN', 'bfe4d57850f262d075f0b85a0161af1354cca5752acc3101eb18859bd0e509a3', '[\"*\"]', NULL, NULL, '2023-08-22 13:49:09', '2023-08-22 13:49:09'),
(67, 'App\\Models\\User', 262, 'API TOKEN', '72efb50b47054460d4bc3467bffb1b453df1be948f37b7a2caad2f5c7ffe1ebc', '[\"*\"]', NULL, NULL, '2023-08-22 13:51:45', '2023-08-22 13:51:45'),
(68, 'App\\Models\\User', 263, 'API TOKEN', '20574b3c7dd04e33154b043cf7581d065a37d39fe8393434870261c975a7e187', '[\"*\"]', NULL, NULL, '2023-08-22 14:02:57', '2023-08-22 14:02:57'),
(69, 'App\\Models\\User', 264, 'API TOKEN', 'cdedcc52726000515b826c866dec2e3b2622a9157a7d582b8581fde6b37916e5', '[\"*\"]', NULL, NULL, '2023-08-22 14:06:20', '2023-08-22 14:06:20'),
(70, 'App\\Models\\User', 265, 'API TOKEN', '80e823beff30d46e0e196189a41e352a14b071b7a9ec24fc39b4c70425ca3527', '[\"*\"]', NULL, NULL, '2023-08-22 14:07:10', '2023-08-22 14:07:10'),
(71, 'App\\Models\\User', 263, 'API TOKEN', 'd0673469a8d8678308a2cc85c69d148aa3ff7259b40b3e9aaed57a0aaf32f41c', '[\"*\"]', NULL, NULL, '2023-08-22 14:09:33', '2023-08-22 14:09:33'),
(72, 'App\\Models\\User', 266, 'API TOKEN', '3764e938f8d191629d692df9da9d804560a85e14b603ef66ee43679710ca0db4', '[\"*\"]', NULL, NULL, '2023-08-22 14:10:34', '2023-08-22 14:10:34'),
(73, 'App\\Models\\User', 263, 'API TOKEN', '94b1aa9c1430a43a0a946f2616fdc36028323b8f03f4bd35ab93cc7f0c189289', '[\"*\"]', NULL, NULL, '2023-08-22 14:18:25', '2023-08-22 14:18:25'),
(74, 'App\\Models\\User', 263, 'API TOKEN', '51db90b1d78e02410e1e4f9f261ad7b95e066c2cb593e382af8a9c3b16dce679', '[\"*\"]', NULL, NULL, '2023-08-22 14:25:31', '2023-08-22 14:25:31'),
(75, 'App\\Models\\User', 267, 'API TOKEN', '9ffbb28f8eaf3fd8bbe3f9cefb9b43fbb301097fd7ad69c12debc92fa7efc004', '[\"*\"]', NULL, NULL, '2023-08-22 14:27:07', '2023-08-22 14:27:07'),
(76, 'App\\Models\\User', 268, 'API TOKEN', '73661311719db3f4b63b0645a560fb8fb8937aa75b111ee3df4b6d7fc328c9fa', '[\"*\"]', NULL, NULL, '2023-08-22 14:28:47', '2023-08-22 14:28:47'),
(77, 'App\\Models\\User', 269, 'API TOKEN', 'c2de32871e847f2b95b109f369bdd21ef271175bf933af1b6f8b87ba3cb0c007', '[\"*\"]', NULL, NULL, '2023-08-23 07:55:34', '2023-08-23 07:55:34'),
(78, 'App\\Models\\User', 270, 'API TOKEN', '0312934613b2c89f40b7a0cd754d578ae4ae8f20c9fbeb50f765a8bf7f4d65fd', '[\"*\"]', NULL, NULL, '2023-08-23 08:35:13', '2023-08-23 08:35:13'),
(79, 'App\\Models\\User', 271, 'API TOKEN', '502615077129923b55282f8b0d5b02df604ce21246e9ec9d5ce1fed6f00ad0bf', '[\"*\"]', NULL, NULL, '2023-08-23 08:36:10', '2023-08-23 08:36:10'),
(80, 'App\\Models\\User', 272, 'API TOKEN', 'd6f2cddcc0016412dcbcbfc013bdc91f0fe922845e196c1938200cc4aca49086', '[\"*\"]', NULL, NULL, '2023-08-23 08:39:44', '2023-08-23 08:39:44'),
(81, 'App\\Models\\User', 273, 'API TOKEN', '19880a3bbc4321c64b38c2443ca168828f8772b61483f3d513f925865d29bff0', '[\"*\"]', NULL, NULL, '2023-08-23 08:49:39', '2023-08-23 08:49:39'),
(82, 'App\\Models\\User', 274, 'API TOKEN', '0abc9122f71b4818487647e0fc22614a7293dfa7b87d0048821453995a650d94', '[\"*\"]', NULL, NULL, '2023-08-23 08:49:59', '2023-08-23 08:49:59'),
(83, 'App\\Models\\User', 263, 'API TOKEN', 'f5cd9e7bfa28efade408b1fed3c21ae9948493fcc345a95ece9097fd263de16f', '[\"*\"]', NULL, NULL, '2023-08-23 08:51:45', '2023-08-23 08:51:45'),
(84, 'App\\Models\\User', 263, 'API TOKEN', '4c36031c8e712659e4a0731eb926f59c9a7c7b8906cef94330311e2945a8a8c5', '[\"*\"]', NULL, NULL, '2023-08-23 12:25:23', '2023-08-23 12:25:23'),
(85, 'App\\Models\\User', 263, 'API TOKEN', '4bc2d15999b30aee1ed85d6aaa19ecf8e42bbb54dd0d7c2660a1141068d54327', '[\"*\"]', NULL, NULL, '2023-08-23 15:20:23', '2023-08-23 15:20:23'),
(86, 'App\\Models\\User', 263, 'API TOKEN', '8e0d168acc3f9f0641a30174daeb5058fc65784aea1a20db2ad0bb6c4b3fc72e', '[\"*\"]', NULL, NULL, '2023-08-23 15:23:48', '2023-08-23 15:23:48'),
(87, 'App\\Models\\User', 275, 'API TOKEN', '406f7924af4249a8d64392d97f6ee81dd6882a350b2a06a7023b1b9cb595a8e5', '[\"*\"]', NULL, NULL, '2023-08-23 15:26:27', '2023-08-23 15:26:27'),
(88, 'App\\Models\\User', 263, 'API TOKEN', '7830fe26d6924d3dfa9a1a8d48a5f452a1d64398cb156fccef0d8a7f86c98681', '[\"*\"]', NULL, NULL, '2023-08-23 15:31:46', '2023-08-23 15:31:46'),
(89, 'App\\Models\\User', 263, 'API TOKEN', 'dcd03e49995bf922837c4b7b91cee12555b2ca5b3fe91452a0470f546b2800a6', '[\"*\"]', NULL, NULL, '2023-08-24 07:39:27', '2023-08-24 07:39:27'),
(90, 'App\\Models\\User', 276, 'API TOKEN', 'bd27d64d0dc0aebf8bb178c2cf67aa857442af8f125153a6e0952cc39e36e529', '[\"*\"]', NULL, NULL, '2023-08-24 07:47:24', '2023-08-24 07:47:24'),
(91, 'App\\Models\\User', 263, 'API TOKEN', '624733f290ad415664b83b1510455f233cd56f35573a36733540fdcbb60605fe', '[\"*\"]', NULL, NULL, '2023-08-24 07:49:46', '2023-08-24 07:49:46'),
(92, 'App\\Models\\User', 263, 'API TOKEN', '6355653c5bcf0fde007f2bf9b68b57042e77230a2615ac1c67c0d42244f9a288', '[\"*\"]', NULL, NULL, '2023-08-24 09:17:13', '2023-08-24 09:17:13'),
(93, 'App\\Models\\User', 263, 'API TOKEN', 'b16f8a40ca3b56c6dcdeec6ac4fb8261003732760cdf93d39806b28efb06903e', '[\"*\"]', NULL, NULL, '2023-08-27 13:56:16', '2023-08-27 13:56:16'),
(94, 'App\\Models\\User', 263, 'API TOKEN', 'a18088ef15ec29e12e2338ee4b9110db8218600140823b36f3d543292713da34', '[\"*\"]', NULL, NULL, '2023-09-04 07:25:00', '2023-09-04 07:25:00'),
(95, 'App\\Models\\User', 263, 'API TOKEN', 'efe7690c6aec4029e1ba06a20709ff50d8f6bd96aaa3a8f7dfc15d6a04ce39d6', '[\"*\"]', NULL, NULL, '2023-09-09 16:03:20', '2023-09-09 16:03:20'),
(96, 'App\\Models\\User', 263, 'API TOKEN', '8f8828f2349336f1487883648c63ad606542533250a7385ae7c293eaedab135d', '[\"*\"]', NULL, NULL, '2023-09-26 09:01:40', '2023-09-26 09:01:40'),
(97, 'App\\Models\\User', 263, 'API TOKEN', 'cf86a98a02119e395e162487c1e4a3c0812eb364b60e4af8d10f5153e3de622e', '[\"*\"]', NULL, NULL, '2023-09-26 10:37:15', '2023-09-26 10:37:15'),
(98, 'App\\Models\\User', 263, 'API TOKEN', '9d3ba528bb6f7cd4e40c8d2e5c4f85b7349d58cb46cf7a86dc312779f5dc02bd', '[\"*\"]', NULL, NULL, '2023-09-26 13:06:12', '2023-09-26 13:06:12'),
(99, 'App\\Models\\User', 280, 'API TOKEN', 'bd41d086efa9ceac5ea8fe53ac339c74b852482921ccce1543a137190b401fef', '[\"*\"]', NULL, NULL, '2023-11-22 23:00:11', '2023-11-22 23:00:11'),
(100, 'App\\Models\\User', 280, 'API TOKEN', '428a6459cf637fd1eff67a45be1c4e634235a0f6f81e422b3a8971927c78d5e1', '[\"*\"]', NULL, NULL, '2023-11-22 23:18:23', '2023-11-22 23:18:23'),
(101, 'App\\Models\\User', 281, 'API TOKEN', '8b98bf4e2d58a04eb8228943a17551a0ad9f6da7c3db72daaf49e59774d0681e', '[\"*\"]', NULL, NULL, '2023-11-23 09:58:00', '2023-11-23 09:58:00'),
(102, 'App\\Models\\User', 282, 'API TOKEN', '2cdf712fe8aafa25284b9dcc0baa11bfa851cb5061646c2607cbe3d05b59896a', '[\"*\"]', NULL, NULL, '2023-11-23 10:01:22', '2023-11-23 10:01:22'),
(103, 'App\\Models\\User', 283, 'API TOKEN', '1288cc1d8feb3b333fac92889ef292bc4814c9de7f729d1695976d68e7abe050', '[\"*\"]', NULL, NULL, '2023-11-23 10:43:13', '2023-11-23 10:43:13'),
(104, 'App\\Models\\User', 284, 'API TOKEN', '108ae80d2b9e0c46b87daba0ff6edf78363a28ccd6df4f39a28a74e60b458397', '[\"*\"]', NULL, NULL, '2023-11-23 11:57:21', '2023-11-23 11:57:21'),
(105, 'App\\Models\\User', 285, 'API TOKEN', '0a05033395a8a2a609add0b0b897abe241cc4357b122a940c817fd56ea445965', '[\"*\"]', NULL, NULL, '2023-11-23 12:10:59', '2023-11-23 12:10:59'),
(106, 'App\\Models\\User', 286, 'API TOKEN', 'a3db7cb49837065bd260c44349d8217baa507f9f11cb1a12b72ff266d903e514', '[\"*\"]', NULL, NULL, '2023-11-23 12:48:09', '2023-11-23 12:48:09'),
(107, 'App\\Models\\User', 287, 'API TOKEN', '074045319ed05e5a5cdb39c833e1a2d36b6f26cfb580ea5e45280c9a1c332c2e', '[\"*\"]', NULL, NULL, '2023-11-23 12:56:36', '2023-11-23 12:56:36'),
(108, 'App\\Models\\User', 288, 'API TOKEN', 'a8acfaa25a25e90198894792d2dd24759d0ff9b8e5d67f6ed4097908c9a2583b', '[\"*\"]', NULL, NULL, '2023-11-23 13:39:28', '2023-11-23 13:39:28'),
(109, 'App\\Models\\User', 289, 'API TOKEN', 'a0da5e2b2bbfddc2635f6c59428b70512906a1bb2af7cb60b830760e39ca8c8b', '[\"*\"]', NULL, NULL, '2023-11-23 14:52:31', '2023-11-23 14:52:31'),
(110, 'App\\Models\\User', 290, 'API TOKEN', 'bb93720fe542deddfc0c81aad5964ed7d71a9c545dc69bf2e83ff51c7241e67c', '[\"*\"]', NULL, NULL, '2023-11-23 16:20:16', '2023-11-23 16:20:16'),
(111, 'App\\Models\\User', 291, 'API TOKEN', 'b9f93deaf153e041d7caf094f24ed13505abc3a733ffb0baefbedb987d37f7c9', '[\"*\"]', NULL, NULL, '2023-11-23 17:15:26', '2023-11-23 17:15:26'),
(112, 'App\\Models\\User', 292, 'API TOKEN', '8c6e5c17f58eeafd896e03caf4bea788d347f6c3e8ef019a48c8b8b7211a40d0', '[\"*\"]', NULL, NULL, '2023-11-23 17:28:51', '2023-11-23 17:28:51'),
(113, 'App\\Models\\User', 1, 'API TOKEN', '30c33b71af00081eda6d23f369e1aa258e7095b1c19f5dc61e383c27a70fdb09', '[\"*\"]', NULL, NULL, '2023-12-05 20:20:05', '2023-12-05 20:20:05'),
(114, 'App\\Models\\User', 1, 'API TOKEN', '6e11bca7fffa4ec129f8f00cbee8f27d11baed883667a3d408ea13092c8a036b', '[\"*\"]', NULL, NULL, '2023-12-23 12:27:41', '2023-12-23 12:27:41'),
(115, 'App\\Models\\User', 298, 'API TOKEN', '76fb44423fc745ba64fb217b37cf15309a138afec61d2b3850b9dfe8dcf5b014', '[\"*\"]', NULL, NULL, '2023-12-25 03:25:48', '2023-12-25 03:25:48'),
(116, 'App\\Models\\User', 299, 'API TOKEN', 'cbc9edf91b8d18d4a21d3512e8c58f31ad77751bdf02307605290fd3a2fc3a82', '[\"*\"]', NULL, NULL, '2024-01-07 11:45:57', '2024-01-07 11:45:57'),
(117, 'App\\Models\\User', 300, 'API TOKEN', '5e898a1bbcbdcc4d50365a18ef58302fded902b6a49b2cefc0ca59644e31e562', '[\"*\"]', NULL, NULL, '2024-01-07 18:21:07', '2024-01-07 18:21:07'),
(118, 'App\\Models\\User', 300, 'API TOKEN', '5c737d489abb467233afd4f39ffd11f4f5567f2276ff407b9ed7ccecde047cec', '[\"*\"]', NULL, NULL, '2024-01-25 10:19:11', '2024-01-25 10:19:11'),
(119, 'App\\Models\\User', 300, 'API TOKEN', 'e9e756d3a54ce996db1d2f13fd298b5fe1f084c590589f0df2d13b97964fae4a', '[\"*\"]', NULL, NULL, '2024-01-25 11:40:24', '2024-01-25 11:40:24'),
(120, 'App\\Models\\User', 306, 'API TOKEN', 'e9e49f1b3cc88656a29e161a08cffc3b422d338d8ce8f9e02b7660e202a7318b', '[\"*\"]', NULL, NULL, '2024-01-25 11:42:43', '2024-01-25 11:42:43'),
(121, 'App\\Models\\User', 299, 'API TOKEN', 'a93f90c8106622c786ff8d989dedf9dcbf0f737375f80c0c9d97bcbb22f34e6f', '[\"*\"]', NULL, NULL, '2024-01-25 19:37:39', '2024-01-25 19:37:39'),
(122, 'App\\Models\\User', 299, 'API TOKEN', '71e049ebb45b8b8105c8348ec5bc01f9638840c05287946421da1975b5c58b62', '[\"*\"]', NULL, NULL, '2024-01-25 21:24:29', '2024-01-25 21:24:29'),
(123, 'App\\Models\\User', 300, 'API TOKEN', 'b5df707f464f1de44100a0c6c26a46c11f87f1da6f8179ea250353af5468e9e7', '[\"*\"]', NULL, NULL, '2024-01-27 20:42:11', '2024-01-27 20:42:11'),
(124, 'App\\Models\\User', 308, 'API TOKEN', '065e2f0dcbd971fb88b4a48f5ae12831c15733623d73ccb81796f24de6fdc514', '[\"*\"]', NULL, NULL, '2024-01-28 09:24:33', '2024-01-28 09:24:33'),
(125, 'App\\Models\\User', 308, 'API TOKEN', '4bfaf9fb529b3a7c4f2f8875de6342aa9318549a0bdf8f5982fb0437b953d37f', '[\"*\"]', NULL, NULL, '2024-01-28 11:25:46', '2024-01-28 11:25:46'),
(126, 'App\\Models\\User', 313, 'API TOKEN', '242f3d0c54011b597b1885182794e3a34252ae1fc8364dd8e30b676923ac334f', '[\"*\"]', NULL, NULL, '2024-02-10 10:58:56', '2024-02-10 10:58:56'),
(127, 'App\\Models\\User', 317, 'API TOKEN', '9b1f7083b4a05c857f7c0577446aa752c7200f1d13dbe648f6e623c39915b10e', '[\"*\"]', NULL, NULL, '2024-02-18 13:39:01', '2024-02-18 13:39:01'),
(128, 'App\\Models\\User', 308, 'API TOKEN', 'f089930a4bd162d4dc9dcb22558dbe067cab32cc920240394a140aeaa95c5443', '[\"*\"]', NULL, NULL, '2024-02-21 10:36:34', '2024-02-21 10:36:34'),
(129, 'App\\Models\\User', 367, 'API TOKEN', '6846c8c5c88d67226dbab113911f59d8682cfb436811d3c1ceed9817e4b1e289', '[\"*\"]', NULL, NULL, '2025-01-22 11:06:15', '2025-01-22 11:06:15'),
(130, 'App\\Models\\User', 367, 'API TOKEN', 'a23b11c2fda7b1eff7b594d790344a7bc4868dd2fc1831a2dc678434dd9fb6ea', '[\"*\"]', NULL, NULL, '2025-01-22 11:06:41', '2025-01-22 11:06:41'),
(131, 'App\\Models\\User', 367, 'API TOKEN', '48351955d36dd2e50c7c14806ff92dff954a850e5a0e8e44d9bba9c063ef1649', '[\"*\"]', NULL, NULL, '2025-01-22 11:09:59', '2025-01-22 11:09:59'),
(132, 'App\\Models\\User', 367, 'API TOKEN', '013c1a08454945c3b781ab08eeaf6b1d7b463326ccb74a1f2d377d14237c2d80', '[\"*\"]', NULL, NULL, '2025-01-22 11:46:02', '2025-01-22 11:46:02');

-- --------------------------------------------------------

--
-- بنية الجدول `polices`
--

CREATE TABLE `polices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description_ar` longtext NOT NULL,
  `description_en` longtext NOT NULL,
  `ranking` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `polices`
--

INSERT INTO `polices` (`id`, `description_ar`, `description_en`, `ranking`, `created_at`, `updated_at`) VALUES
(5, '<p>سياسات الخصوصية</p>', '<p>Privacy Policy</p>', '55', '2023-03-23 13:16:05', '2023-05-04 02:17:15');

-- --------------------------------------------------------

--
-- بنية الجدول `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `description_ar` varchar(255) DEFAULT NULL,
  `description_en` varchar(255) DEFAULT NULL,
  `metadata_ar` varchar(255) DEFAULT NULL,
  `metadata_en` varchar(255) DEFAULT NULL,
  `keywords_ar` varchar(255) DEFAULT NULL,
  `keywords_en` varchar(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `ordering` int(11) DEFAULT 0,
  `quantity` int(11) DEFAULT NULL,
  `min_quantity` int(11) DEFAULT NULL,
  `discountFromAvailableProducts` tinyint(1) NOT NULL DEFAULT 0,
  `unavailableProductStatus` enum('available','unavailable','Pre-booking','availableAfterTwoDays') NOT NULL DEFAULT 'available',
  `mainImage` text DEFAULT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `length` varchar(255) DEFAULT NULL,
  `width` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `availableProductsDate` varchar(255) DEFAULT NULL,
  `relatedProducts` varchar(255) DEFAULT NULL,
  `tax_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `length_id` bigint(20) UNSIGNED DEFAULT NULL,
  `weights_id` bigint(20) UNSIGNED DEFAULT NULL,
  `option_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gift` varchar(30) DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `products`
--

INSERT INTO `products` (`id`, `name_ar`, `name_en`, `description_ar`, `description_en`, `metadata_ar`, `metadata_en`, `keywords_ar`, `keywords_en`, `price`, `status`, `ordering`, `quantity`, `min_quantity`, `discountFromAvailableProducts`, `unavailableProductStatus`, `mainImage`, `shipping`, `length`, `width`, `height`, `weight`, `availableProductsDate`, `relatedProducts`, `tax_type_id`, `category_id`, `length_id`, `weights_id`, `option_type_id`, `gift`, `created_at`, `updated_at`) VALUES
(93, 'حامل خشبي', 'holder', 'صضثيضصي', 'erdqwed', 'ضصيضص', 'wqeqwe', 'ضصثضثضص', 'qweqweqweqwe', '100', 1, NULL, 14, NULL, 1, 'available', 'Abdv29jGKEYcDOipThfPcm5fffUeY9P0swK5iaFN.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 18, 1, NULL, NULL, 'no', '2024-05-30 16:35:40', '2024-05-30 16:41:39'),
(94, 'ضصصثضصث', 'ضصقضصث', 'صضثضصث', 'ضصثضصثضص', 'ضصثضصثضص', 'ضصثضصثضصضثصصض', 'ضصثضصث', 'ضصثضصثضص', '24', 1, NULL, 33, NULL, 1, 'available', 'MLw0tN9eK9sw1T4qTvxthdQ5hB5ClLx3XrEpiiGj.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13, 1, NULL, NULL, 'no', '2024-05-30 16:43:51', '2024-05-30 16:44:04');

-- --------------------------------------------------------

--
-- بنية الجدول `product_discounts`
--

CREATE TABLE `product_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `product_discounts`
--

INSERT INTO `product_discounts` (`id`, `quantity`, `price`, `start_date`, `end_date`, `priority`, `product_id`, `created_at`, `updated_at`) VALUES
(19, '5', '50', '2023-02-09', '2024-10-21', '29', 19, '2023-03-21 10:30:22', '2023-03-21 10:30:22'),
(18, '2', '100', '2023-02-09', '2024-10-21', '14', 20, '2023-03-21 10:30:22', '2023-03-21 10:30:22'),
(22, '99', '99', '2023-03-09', '2023-03-16', '1', 22, '2023-03-27 00:56:49', '2023-03-27 00:56:49'),
(24, '119', '666', '2014-08-10', '2011-01-21', '45', 48, '2023-04-16 13:16:20', '2023-04-16 13:16:20');

-- --------------------------------------------------------

--
-- بنية الجدول `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `additionalImages` text DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `product_images`
--

INSERT INTO `product_images` (`id`, `additionalImages`, `product_id`, `created_at`, `updated_at`) VALUES
(7, 'sZ2Qz3Im7ffbGcvcvX6h39MkQ7XCnRCe7h0sUSUd.jpg', 19, '2023-03-07 16:36:52', '2023-03-07 16:36:52'),
(3, 'nptU4RuJbDYByNLq6xk6ULjAvWw8RCjSWv7dlvNT.jpg', 39, '2023-03-07 16:31:46', '2023-03-07 16:31:46'),
(6, 'bmdR0D9bOpP76RA4B0nCLv0dmMQohweIGQG7UPsQ.jpg', 19, '2023-03-07 16:36:52', '2023-03-07 16:36:52'),
(12, 'q9ZBwif6zGqsbrUmy1nFVlqGNxXEA1CoeCpUc6dB.jpg', 22, '2023-03-08 14:54:06', '2023-03-08 14:54:06'),
(20, '3VylcXeH338aLMB2SINB5emF00nRX6ZRCO7Ikvau.jpg', 22, '2023-03-09 11:46:11', '2023-03-09 11:46:11'),
(15, 'GttnXusbLXpmXPHrUkovL81IINWlF3J3REKmJwJD.jpg', 20, '2023-03-08 14:59:46', '2023-03-08 14:59:46'),
(13, 'on0Cb7w5XVGDwqWiY2wBmn6BW7wqf89GwjbnTlsD.png', 22, '2023-03-08 14:54:06', '2023-03-08 14:54:06'),
(14, '4YKrQlL1gW1xqLmpqlUKb0aR6npeCc2xtNIg3KC1.png', 22, '2023-03-08 14:54:56', '2023-03-08 14:54:56'),
(16, 'hvGoIbLOnxfsAv0eWLibmmMPQOVGAwIqHNxt6zIf.jpg', 20, '2023-03-08 14:59:46', '2023-03-08 14:59:46'),
(17, '6Fu4ZNkhPxG4KCPMJggr9xkLpJYMUfF3ZdgYBIN7.png', 20, '2023-03-08 14:59:47', '2023-03-08 14:59:47'),
(18, '6Wc9gileBNbosTtcmRJz5zKzP1LpSY07H4ZWHShU.jpg', 24, '2023-03-08 15:00:01', '2023-03-08 15:00:01'),
(19, 'X41Zq7rpINAeHJGuXLvHHNnwYFqDw8dIZCQK2juK.jpg', 24, '2023-03-08 15:00:01', '2023-03-08 15:00:01'),
(21, 'WJE3ypM7CeDDSTXZVTJdySvKhXqqx3Bxrk7Czdw1.png', 47, '2023-04-03 09:54:36', '2023-04-03 09:54:36'),
(22, 'rkdah97b81Z7rAVYIKZm1EkdqTnbvmHrDCasfCrH.jpg', 47, '2023-04-03 09:54:36', '2023-04-03 09:54:36'),
(23, 'RiCMma5W8bKHqQ64UBOMLl2N7FmNHwmL1S4sHXkG.png', 65, '2023-08-28 10:46:24', '2023-08-28 10:46:24'),
(24, 'wnIFFr8A1JE7hlmcNZY9svJgXmVRUU6zbTou7GyA.jpg', 68, '2023-09-06 12:56:50', '2023-09-06 12:56:50'),
(25, '3VLo9kUNyIh3wVwHLKOVfOGV8S27goF2xaQrGTle.jpg', 68, '2023-09-06 12:56:50', '2023-09-06 12:56:50'),
(26, '', 71, '2024-01-17 18:33:34', '2024-01-22 17:09:01'),
(29, 'sh0nm26diWeyt39TLZH7IFBQeiF4vX0sxr0NZXxV.jpg', 71, '2024-01-22 17:10:42', '2024-01-22 17:10:42'),
(27, '', 76, '2024-01-17 20:17:55', '2024-01-22 17:30:24'),
(28, '', 76, '2024-01-17 20:17:55', '2024-01-22 17:30:32'),
(30, 'LLFpCP6lIHHtUgc5LRtuZsxNLmnext9Bvx5je0fI.jpg', 76, '2024-01-22 17:31:19', '2024-01-22 17:31:19'),
(31, 'h3AW7EuSvr7VjUTUvvajCPci7LIRxmdiRvX7NPq7.jpg', 76, '2024-01-22 17:31:19', '2024-01-22 17:31:19'),
(32, 'OFeEDL1LuFKlRJXtuDdK1vXq77O1IRuPb4nNAfzm.jpg', 78, '2024-01-22 18:03:56', '2024-01-22 18:03:56'),
(33, 'dFtGDWCJzJMZLatZRguW1sC69UmJPQXCWueInlYF.jpg', 80, '2024-01-22 18:22:20', '2024-01-22 18:22:20'),
(34, 'krIZzMJpPtarb0mDD2NvsifouJs4RYRA7Hn0JDta.jpg', 80, '2024-01-22 18:22:20', '2024-01-22 18:22:20'),
(35, 'NamzwyHg3wpsEGt0uGsFRJST1XuYqySvjiVJGOhb.jpg', 81, '2024-01-22 18:32:46', '2024-01-22 18:32:46'),
(36, 'IDxZz3zHdYlCBW7twROvCRlmCowaxWsQwzxkvIx9.jpg', 81, '2024-01-22 18:32:46', '2024-01-22 18:32:46'),
(37, '9KrMdITgzorKSAHC1eBpeNXImUFTTnTEUgoVqYIu.jpg', 82, '2024-01-22 18:43:48', '2024-01-22 18:43:48'),
(38, 'ZvDiS6SHg8oby6Lu8jSto2Em6PKUDcPiMGtajBZK.jpg', 84, '2024-01-22 19:21:18', '2024-01-22 19:21:18'),
(39, 'OJNHs1Wiie4ucKYCdgnap5hv7JOkgAyt7cgFegZR.jpg', 86, '2024-02-10 10:43:52', '2024-02-10 10:43:52'),
(40, 'gci6ZW6sf7Y9w8yZWxCjgVVcYPpTEdfXPSCWR634.jpg', 86, '2024-02-10 10:43:52', '2024-02-10 10:43:52'),
(41, 'DYLf07U0vq24ic3NqanM0G9i1fKB52D1TRre3cik.jpg', 86, '2024-02-10 10:43:52', '2024-02-10 10:43:52'),
(42, 'vdkUfB3LiYj7vKruHLdoJRYeG2sPTgYymeT2Cpwq.jpg', 86, '2024-02-10 10:43:52', '2024-02-10 10:43:52'),
(43, 'qXutAyMhYvDbqqBd1VpsHzDyWQcOk2N5sS0LlGqd.jpg', 93, '2024-05-30 16:41:11', '2024-05-30 16:41:11');

-- --------------------------------------------------------

--
-- بنية الجدول `product_option`
--

CREATE TABLE `product_option` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `optionRequired` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=FIXED;

--
-- إرجاع أو استيراد بيانات الجدول `product_option`
--

INSERT INTO `product_option` (`id`, `product_id`, `option_id`, `optionRequired`, `created_at`, `updated_at`) VALUES
(1, 12, 2, 0, NULL, NULL),
(2, 13, 2, 0, NULL, NULL),
(3, 13, 2, 0, NULL, NULL),
(4, 14, 3, 1, NULL, NULL),
(5, 14, 3, 0, NULL, NULL),
(6, 15, 3, 1, NULL, NULL),
(7, 15, 3, 1, NULL, NULL),
(10, 17, 7, 1, NULL, NULL),
(24, 45, 5, 0, '2023-03-28 21:20:38', '2023-03-28 21:20:38'),
(30, 46, 4, 1, '2023-03-28 21:39:11', '2023-03-28 21:39:11'),
(29, 46, 5, 0, '2023-03-28 21:39:11', '2023-03-28 21:39:11');

-- --------------------------------------------------------

--
-- بنية الجدول `product_option_items`
--

CREATE TABLE `product_option_items` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `price` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `product_option_items`
--

INSERT INTO `product_option_items` (`id`, `product_id`, `product_option_id`, `option_value_id`, `price`, `created_at`, `updated_at`) VALUES
(10, 46, 29, 10, 5, '2023-03-28 21:39:11', '2023-03-28 21:39:11'),
(11, 46, 29, 11, 20, '2023-03-28 21:39:11', '2023-03-28 21:39:11'),
(12, 46, 30, 4, 10, '2023-03-28 21:39:11', '2023-03-28 21:39:11'),
(13, 46, 30, 5, 0, '2023-03-28 21:39:11', '2023-03-28 21:39:11'),
(14, 46, 30, 6, 0, '2023-03-28 21:39:11', '2023-03-28 21:39:11');

-- --------------------------------------------------------

--
-- بنية الجدول `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `rating` int(11) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `published` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `content`, `rating`, `product_id`, `user_id`, `published`, `created_at`, `updated_at`) VALUES
(1, 'Ipsam labore consequ', 5, 19, 224, 0, '2023-04-11 14:11:40', '2023-04-11 14:11:40'),
(2, 'Dolorem dicta aut co', 5, 34, 224, 0, '2023-04-11 14:16:42', '2023-04-11 14:16:42'),
(3, 'Amet voluptate exer', 4, 34, 224, 0, '2023-04-11 14:18:21', '2023-04-11 14:18:21'),
(4, 'Velit alias dignissi', 1, 19, 224, 0, '2023-04-11 14:28:45', '2023-04-11 14:28:45'),
(5, 'جيده', 2, 39, 224, 0, '2023-04-13 00:22:16', '2023-04-13 00:22:16'),
(6, 'جيده', 2, 39, 224, 0, '2023-04-13 00:22:16', '2023-04-13 00:22:16'),
(7, 'جيد', 5, 19, 224, 0, '2023-04-13 00:35:15', '2023-04-13 00:35:15'),
(8, 'جميل', 5, 59, 1, 0, '2023-08-24 08:38:44', '2023-08-24 08:38:44'),
(9, 'REST REVIEW', 3, 59, 263, 0, '2023-08-24 12:54:09', '2023-08-24 12:54:09'),
(10, 'good pro', 2, 59, 263, 0, '2023-08-24 13:07:45', '2023-08-24 13:07:45'),
(11, 'REST REVIEW', 3, 59, 263, 0, '2023-08-24 13:08:16', '2023-08-24 13:08:16'),
(12, 'Done', 2, 59, 263, 0, '2023-08-24 13:13:13', '2023-08-24 13:13:13'),
(13, 'ئيلثسفلاثف', 2, 60, 263, 0, '2023-08-24 13:15:47', '2023-08-24 13:15:47'),
(14, 'Test', 2, 59, 263, 0, '2023-08-27 13:07:27', '2023-08-27 13:07:27'),
(15, 'Test2', 2, 61, 263, 0, '2023-08-27 13:07:49', '2023-08-27 13:07:49'),
(16, 'Test2', 2, 61, 263, 0, '2023-08-27 13:13:50', '2023-08-27 13:13:50'),
(17, 'Test', 2, 61, 263, 0, '2023-08-27 13:14:29', '2023-08-27 13:14:29'),
(18, 'test', 2, 59, 263, 0, '2023-08-27 13:15:29', '2023-08-27 13:15:29'),
(19, 'test20', 2, 61, 263, 0, '2023-08-27 13:15:47', '2023-08-27 13:15:47'),
(20, 'test20', 2, 61, 263, 0, '2023-08-27 13:16:02', '2023-08-27 13:16:02'),
(21, 'test20', 2, 61, 263, 0, '2023-08-27 13:16:09', '2023-08-27 13:16:09'),
(22, 'test', 2, 59, 263, 0, '2023-08-27 13:23:04', '2023-08-27 13:23:04'),
(25, 'test', 2, 59, 263, 0, '2023-08-28 13:02:55', '2023-08-28 13:02:55'),
(24, 'good product', 2, 59, 263, 1, '2023-08-27 13:38:19', '2023-08-28 11:04:34'),
(26, 'test', 2, 60, 263, 0, '2023-08-28 13:28:04', '2023-08-28 13:28:04'),
(27, 'ئيلثسفلاثف', 2, 60, 263, 0, '2023-09-06 09:56:53', '2023-09-06 09:56:53'),
(28, 'test', 2, 59, 263, 0, '2023-09-06 15:55:18', '2023-09-06 15:55:18'),
(29, 'Test', 2, 59, 263, 0, '2023-09-07 07:52:54', '2023-09-07 07:52:54'),
(30, 'Test', 3, 59, 263, 0, '2023-09-07 08:04:34', '2023-09-07 08:04:34'),
(31, 'Test', 4, 59, 263, 1, '2023-09-07 08:05:35', '2023-09-07 08:16:16'),
(32, 'Test4', 2, 59, 263, 1, '2023-09-07 08:13:56', '2023-09-07 08:16:13'),
(33, 'Test5', 2, 59, 263, 1, '2023-09-07 08:14:26', '2023-09-07 08:16:07'),
(34, 'good', 2, 59, 292, 1, '2024-01-22 16:45:33', '2024-01-22 16:45:58'),
(35, 'ddd', 5, 82, 1, 0, '2024-04-24 12:51:27', '2024-04-24 12:51:27'),
(36, 'good', 5, 80, 1, 0, '2024-04-24 12:52:12', '2024-04-24 12:52:12'),
(37, 'ئيلثسفلاثف', 2, 60, 367, 0, '2025-01-22 11:45:22', '2025-01-22 11:45:22');

-- --------------------------------------------------------

--
-- بنية الجدول `product_special_offers`
--

CREATE TABLE `product_special_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `product_special_offers`
--

INSERT INTO `product_special_offers` (`id`, `price`, `priority`, `start_date`, `end_date`, `product_id`, `created_at`, `updated_at`) VALUES
(5, '900', '95', '2014-06-07', '2014-05-16', 20, '2023-03-08 14:59:46', '2023-03-08 14:59:46'),
(6, '5', '85', '2009-05-30', '2010-03-16', 20, '2023-03-08 14:59:46', '2023-03-08 14:59:46'),
(13, '66', '1', '2023-03-09', '2023-03-09', 22, '2023-03-27 00:56:49', '2023-03-27 00:56:49');

-- --------------------------------------------------------

--
-- بنية الجدول `product_specifications`
--

CREATE TABLE `product_specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `specification_id` bigint(20) UNSIGNED NOT NULL,
  `description_ar` varchar(255) DEFAULT NULL,
  `description_en` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `product_specifications`
--

INSERT INTO `product_specifications` (`id`, `product_id`, `specification_id`, `description_ar`, `description_en`, `created_at`, `updated_at`) VALUES
(1, 6, 2, 'Totam aliquam vitae', 'Nostrud est ut modi', NULL, NULL),
(2, 6, 1, 'Rerum doloremque mol', 'Totam odio iure eius', NULL, NULL),
(3, 7, 2, 'Quis cupiditate eum', 'At eum nulla velit t', NULL, NULL),
(4, 7, 1, 'Corporis dolorem mag', 'Eu reprehenderit do', NULL, NULL),
(5, 8, 2, 'Quis cupiditate eum', 'At eum nulla velit t', NULL, NULL),
(6, 8, 1, 'Corporis dolorem mag', 'Eu reprehenderit do', NULL, NULL),
(7, 9, 2, 'Cupidatat aliquip re', 'Accusantium adipisci', NULL, NULL),
(31, 24, 2, 'Cupidatat aliquip re', 'Accusantium adipisci', NULL, NULL),
(9, 10, 2, 'Cupidatat aliquip re', 'Accusantium adipisci', NULL, NULL),
(20, 20, 2, 'Cupidatat aliquip re', 'Accusantium adipisci', NULL, NULL),
(28, 23, 1, 'Mollit qui recusanda', 'Totam tenetur quo qu', NULL, NULL),
(30, 22, 2, 'Dolore aliqua Culpa', 'Tempor dignissimos e', NULL, NULL),
(39, 47, 3, 'Tempore molestias o', 'Architecto deserunt', NULL, NULL),
(38, 47, 1, 'Quia nostrud magni d', 'Sapiente facilis fac', NULL, NULL),
(41, 48, 1, 'Laudantium qui qui', 'Odio et veniam vero', NULL, NULL),
(51, 66, 4, 'احمر', NULL, NULL, NULL),
(50, 66, 4, 'احمر', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `publisher_payments_histories`
--

CREATE TABLE `publisher_payments_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` text NOT NULL,
  `payment_method_id` text NOT NULL,
  `account_holder_name` text NOT NULL,
  `account_number` text NOT NULL,
  `account_iban` text DEFAULT NULL,
  `account_swift_code` text DEFAULT NULL,
  `amount` text NOT NULL,
  `transaction_id` text NOT NULL,
  `from_details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- بنية الجدول `publisher_payment_methods`
--

CREATE TABLE `publisher_payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `account_holder_name` text NOT NULL,
  `account_number` text NOT NULL,
  `account_iban` text DEFAULT NULL,
  `account_swift_code` text DEFAULT NULL,
  `primary` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- بنية الجدول `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `guard` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `roles`
--

INSERT INTO `roles` (`id`, `name_ar`, `name_en`, `guard`, `created_at`, `updated_at`) VALUES
(1, 'الإدارة', 'administrator', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roles_id` varchar(255) NOT NULL,
  `permissions_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- بنية الجدول `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_fr` varchar(255) DEFAULT NULL,
  `main_section` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- بنية الجدول `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `linked_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `linked_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'siteTitle_ar', 'متجر مورال', NULL, NULL, '2023-02-18 14:50:00', '2024-03-31 13:37:39'),
(2, 'siteTitle_en', 'Mural e-commerce', NULL, NULL, '2023-02-18 14:50:00', '2024-03-25 13:33:03'),
(5, 'facebook', 'https://www.facebook.com/murale.store.sa/', NULL, NULL, '2023-02-18 14:50:00', '2024-03-31 14:16:35'),
(6, 'twitter', 'https://twitter.com/Murale_Store', NULL, NULL, '2023-02-18 14:50:00', '2024-03-31 14:16:35'),
(7, 'instagram', 'https://www.instagram.com/murale.store/', NULL, NULL, '2023-02-18 14:50:00', '2024-03-31 14:16:35'),
(8, 'youtube', 'https://www.youtube.com/@Murale_Store', NULL, NULL, '2023-02-18 14:50:00', '2024-03-31 14:16:35'),
(9, 'phone', '+966552446393', NULL, NULL, '2023-02-18 14:50:00', '2024-04-14 12:33:14'),
(10, 'mobile', '+966552446393', NULL, NULL, '2023-02-18 14:50:00', '2024-04-14 12:33:14'),
(11, 'email', 'info@murale.store', NULL, NULL, '2023-02-18 14:50:00', '2024-03-31 12:47:48'),
(12, 'address', 'mansoura matafi', NULL, NULL, '2023-02-18 14:50:00', '2023-03-09 10:52:55'),
(13, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d906.8139386376962!2d46.87226993180769!3d24.614868569050987!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e2fa7f5e23316fb%3A0x99845b41c24e215!2z2YXYtdmG2Lkg2LTYsdmD2Kkg2KfZhNin2KvYp9irINin2YTYsNmD2Yo!5e0!3m2!1sen!2seg!4v1714042193301!5m2!1sen!2seg\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, NULL, '2023-02-18 14:50:00', '2024-04-25 12:50:09'),
(14, 'username', 'dfghjk', NULL, NULL, '2023-02-18 14:50:00', '2023-03-09 10:53:27'),
(15, 'password', '123456789', NULL, NULL, '2023-02-18 14:50:00', '2023-03-09 10:53:27'),
(16, 'freeShippingTimeFrom', '89', NULL, NULL, '2023-02-18 14:50:00', '2023-03-09 10:53:28'),
(17, 'freeShippingTimeTo', '89', NULL, NULL, '2023-02-18 14:50:00', '2023-03-09 10:53:28'),
(18, 'otherShippingMethodTimeFrom', '787', NULL, NULL, '2023-02-18 14:50:00', '2023-03-09 10:53:28'),
(19, 'otherShippingMethodTimeTo', '898', NULL, NULL, '2023-02-18 14:50:00', '2023-03-09 10:53:28'),
(20, 'otherShippingMethodFees', '777', NULL, NULL, '2023-02-18 14:50:00', '2023-03-09 10:53:28'),
(21, 'freeShipping', '0', NULL, NULL, '2023-02-18 14:50:00', '2023-03-19 18:09:23'),
(22, 'otherShippingMethod', '1', NULL, NULL, '2023-02-18 14:50:00', '2023-03-09 10:53:28'),
(23, 'stopAllPublishers', '0', NULL, NULL, '2023-02-18 14:50:00', '2023-02-18 14:50:00'),
(24, 'autoBooksPublishing', '0', NULL, NULL, '2023-02-18 14:50:00', '2023-02-18 14:50:00'),
(25, 'publisherControlPublishStatus', '0', NULL, NULL, '2023-02-18 14:50:00', '2023-02-18 14:50:00'),
(26, 'logo', 'r4pkkOuPSC8CTCOvtIjZRMHIU26eccp0sQvzCZ8V.png', NULL, NULL, '2023-02-18 14:50:00', '2024-04-02 10:43:05'),
(27, 'siteDescription_ar', 'اختر هديتك من متجر مورال لمن تحب كما تحب و ستصل أينما تريد', NULL, NULL, '2023-02-27 10:41:35', '2024-03-25 13:33:03'),
(28, 'siteDescription_en', 'pick your gift', NULL, NULL, '2023-02-27 10:41:35', '2024-03-31 13:37:39'),
(29, 'siteKeywords_ar', 'متجر مورال', NULL, NULL, '2023-02-27 10:41:35', '2024-03-31 13:37:39'),
(30, 'siteKeywords_en', 'Murale e-commerce', NULL, NULL, '2023-02-27 10:41:35', '2024-03-31 13:37:39'),
(31, 'expreseShippingStatus', '1', NULL, NULL, '2023-03-09 10:53:27', '2023-03-09 10:53:27'),
(32, 'notificationIcon', 'ti-gift', NULL, NULL, '2023-03-19 18:09:23', '2023-03-19 18:11:12'),
(33, 'mainPageNotification1', 'Free Shipping on Orders $200+', NULL, NULL, '2023-03-19 18:09:23', '2023-03-23 21:33:43'),
(34, 'mainPageNotification2', '00 Gift Card for all the season', NULL, NULL, '2023-03-19 18:09:23', '2023-03-23 21:33:43'),
(35, 'mainPageNotification3', '00 Gift Card for all the season', NULL, NULL, '2023-03-19 18:09:23', '2023-03-23 21:33:43'),
(36, 'homeSliderTitle1_ar', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', NULL, NULL, '2023-03-19 18:09:23', '2024-04-03 13:59:10'),
(37, 'homeSliderTitle1_en', ' Saepe amet id qui  Saepe amet id qui  Saepe amet id qui  Saepe amet id qui Saepe amet id qui ', NULL, NULL, '2023-03-19 18:09:23', '2024-04-03 13:59:10'),
(38, 'homeSliderButtonTitle1_ar', 'أعرف المزيد', NULL, NULL, '2023-03-19 18:09:23', '2023-07-24 14:03:02'),
(39, 'homeSliderButtonTitle1_en', 'read more', NULL, NULL, '2023-03-19 18:09:23', '2023-07-24 14:03:02'),
(40, 'buttonLink1', 'https://www.najwantoys.com/products/86', NULL, NULL, '2023-03-19 18:09:23', '2024-02-10 10:50:31'),
(41, 'homeSliderTitle2_ar', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', NULL, NULL, '2023-03-19 18:09:23', '2024-04-07 10:19:46'),
(42, 'homeSliderTitle2_en', ' Saepe amet id qui  Saepe amet id qui  Saepe amet id qui  Saepe amet id qui Saepe amet id qui ', NULL, NULL, '2023-03-19 18:09:23', '2024-04-07 10:19:46'),
(43, 'homeSliderButtonTitle2_ar', 'تواصل معنا', NULL, NULL, '2023-03-19 18:09:23', '2023-07-24 14:03:02'),
(44, 'homeSliderButtonTitle2_en', 'contact us', NULL, NULL, '2023-03-19 18:09:23', '2023-07-24 14:03:02'),
(45, 'buttonLink2', '', NULL, NULL, '2023-03-19 18:09:23', '2023-07-24 14:09:19'),
(46, 'homeSliderTitle3_ar', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', NULL, NULL, '2023-03-19 18:09:23', '2024-04-07 10:19:46'),
(47, 'homeSliderTitle3_en', ' Saepe amet id qui  Saepe amet id qui  Saepe amet id qui  Saepe amet id qui Saepe amet id qui ', NULL, NULL, '2023-03-19 18:09:23', '2024-04-07 10:19:46'),
(48, 'homeSliderButtonTitle3_ar', 'أعرف المزيد', NULL, NULL, '2023-03-19 18:09:23', '2024-04-07 10:19:46'),
(49, 'homeSliderButtonTitle3_en', 'read more', NULL, NULL, '2023-03-19 18:09:23', '2024-04-07 10:19:46'),
(50, 'buttonLink3', '', NULL, NULL, '2023-03-19 18:09:23', '2023-07-24 14:03:02'),
(51, 'homeSliderTitle4_ar', '', NULL, NULL, '2023-03-19 18:09:23', '2023-07-24 14:03:02'),
(52, 'homeSliderTitle4_en', '', NULL, NULL, '2023-03-19 18:09:23', '2023-07-24 14:03:02'),
(53, 'homeSliderButtonTitle4_ar', '', NULL, NULL, '2023-03-19 18:09:23', '2023-07-24 14:03:02'),
(54, 'homeSliderButtonTitle4_en', '', NULL, NULL, '2023-03-19 18:09:23', '2023-07-24 14:03:02'),
(55, 'buttonLink4', '', NULL, NULL, '2023-03-19 18:09:23', '2023-07-24 14:03:02'),
(56, 'featureTitle_ar', '', NULL, NULL, '2023-03-19 18:09:23', '2023-03-19 18:09:23'),
(57, 'featureTitle_en', '', NULL, NULL, '2023-03-19 18:09:23', '2023-03-19 18:09:23'),
(58, 'featureDescription_ar', '', NULL, NULL, '2023-03-19 18:09:23', '2023-03-19 18:09:23'),
(59, 'featureDescription_en', '', NULL, NULL, '2023-03-19 18:09:23', '2023-03-19 18:09:23'),
(60, 'advertisementLink1', '', NULL, NULL, '2023-03-19 18:09:23', '2023-09-05 13:21:02'),
(61, 'advertisementLink2', 'https://najwantoys.com/products', NULL, NULL, '2023-03-19 18:09:23', '2023-09-05 13:21:02'),
(62, 'advertisementLink3', 'https://najwantoys.com/products', NULL, NULL, '2023-03-19 18:09:23', '2023-09-05 13:21:02'),
(63, 'advertisementLink4', '', NULL, NULL, '2023-03-19 18:09:23', '2023-09-05 13:21:02'),
(64, 'homeSliderImage1', 'egyQoDlCMzBNNYvEmOQ6Q2HzFFlerYa76qdpv65l.png', NULL, NULL, '2023-03-19 18:10:31', '2024-04-02 10:20:54'),
(135, 'giftsBannerHeader_en', '', NULL, NULL, '2023-09-06 16:49:48', '2023-09-06 16:49:48'),
(65, 'homeSliderImage2', 'dtM9iq33W0ZtpXTAXMRmPPfTW1sJZQszOgnHpDjU.png', NULL, NULL, '2023-03-19 18:10:31', '2024-04-02 10:20:54'),
(66, 'homeSliderImage3', '', NULL, NULL, '2023-03-19 18:10:31', '2024-04-07 10:19:06'),
(67, 'advertisementImage1', '', NULL, NULL, '2023-03-19 18:25:19', '2023-08-30 13:35:59'),
(68, 'advertisementImage2', 'QKAZnUS64yxdQlEFA7uOFx8ig3Ja65HuAikkAbBh.jpg', NULL, NULL, '2023-03-19 18:25:19', '2023-08-30 13:37:17'),
(69, 'advertisementImage3', 'WN55o8G33mYFXf9g00QjLA14DXhhtd8dZKROWTPH.jpg', NULL, NULL, '2023-03-19 18:25:19', '2023-08-30 13:37:17'),
(70, 'featureTitle1_ar', '', NULL, NULL, '2023-03-20 10:44:17', '2023-03-24 22:16:14'),
(71, 'featureTitle1_en', '', NULL, NULL, '2023-03-20 10:44:17', '2023-03-24 22:16:14'),
(72, 'featureDescription1_ar', '', NULL, NULL, '2023-03-20 10:44:17', '2023-03-24 22:16:14'),
(73, 'featureDescription1_en', '', NULL, NULL, '2023-03-20 10:44:17', '2023-03-24 22:16:14'),
(74, 'featureTitle2_ar', 'خدمه 7 * 24  0', NULL, NULL, '2023-03-20 10:44:17', '2023-03-23 21:37:06'),
(75, 'featureTitle2_en', '24 X 7 Service 0', NULL, NULL, '2023-03-20 10:44:17', '2023-03-23 21:37:06'),
(76, 'featureDescription2_ar', 'خدمة اون لاين 7 * 24 0', NULL, NULL, '2023-03-20 10:44:17', '2023-03-23 21:37:06'),
(77, 'featureDescription2_en', 'Online Service For 24 X 70', NULL, NULL, '2023-03-20 10:44:17', '2023-06-14 15:08:30'),
(78, 'featureTitle3_ar', 'عرض المهرجان 0', NULL, NULL, '2023-03-20 10:44:17', '2023-03-23 21:37:06'),
(79, 'featureTitle3_en', 'Festival Offer 0', NULL, NULL, '2023-03-20 10:44:17', '2023-03-23 21:37:06'),
(80, 'featureDescription3_ar', 'عرض مهرجان خاص جديد على الإنترنت 0', NULL, NULL, '2023-03-20 10:44:17', '2023-03-23 21:37:06'),
(81, 'featureDescription3_en', 'New Online Special Festival Offer 0', NULL, NULL, '2023-03-20 10:44:17', '2023-03-23 21:37:06'),
(82, 'featureTitle4_ar', 'عرض المهرجان 0', NULL, NULL, '2023-03-20 10:44:17', '2023-03-23 21:37:06'),
(83, 'featureTitle4_en', 'Festival Offer 0', NULL, NULL, '2023-03-20 10:44:17', '2023-03-23 21:37:06'),
(84, 'featureDescription4_ar', 'عرض مهرجان خاص جديد على الإنترنت 0', NULL, NULL, '2023-03-20 10:44:17', '2023-03-23 21:37:06'),
(85, 'featureDescription4_en', 'New Online Special Festival Offer 0', NULL, NULL, '2023-03-20 10:44:17', '2023-03-23 21:37:06'),
(86, 'productsTitle_ar', 'احدث المنتجات ', NULL, NULL, '2023-03-20 11:48:53', '2024-05-02 14:01:15'),
(87, 'productsTitle_en', 'products', NULL, NULL, '2023-03-20 11:48:53', '2024-05-02 14:01:15'),
(88, 'productsDescription_ar', 'لقد أوجدنا لك أفضل المنتجات وبأسعار تنافسية لا يمكنك إيجادها إلا بمتجرنا فقط، عاين آحدث ما قمنا بجلبه من أجلك بين أكثر من 1000 منتج خصيصاً لك', NULL, NULL, '2023-03-20 11:48:53', '2023-07-24 14:13:10'),
(89, 'productsDescription_en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s 00', NULL, NULL, '2023-03-20 11:48:53', '2023-03-23 21:36:06'),
(90, 'featureImage1', '', NULL, NULL, '2023-03-20 11:49:49', '2023-03-24 22:15:58'),
(91, 'featureImage2', '', NULL, NULL, '2023-03-20 11:49:49', '2024-04-07 10:19:57'),
(92, 'featureImage3', 'OnX5dMTxckb5J9M2O4Ws6Oh2zJW2ZTU1FcaBBVtN.png', NULL, NULL, '2023-03-20 11:49:49', '2023-03-20 11:49:49'),
(93, 'featureImage4', 'nmuEo83G7csaSSJIdwDcIETn5wskKqXBrqGlwTfv.png', NULL, NULL, '2023-03-20 11:49:49', '2023-03-20 11:49:49'),
(94, 'advertisementImage4', '', NULL, NULL, '2023-03-20 13:22:51', '2023-08-30 13:34:46'),
(134, 'giftsBannerHeader_ar', '', NULL, NULL, '2023-09-06 16:49:48', '2023-09-06 16:49:48'),
(95, 'middleBannerImage', '2DQMB59ECZQApyEo1VcbFJZv2TSlZgShLslt6AtL.png', NULL, NULL, '2023-03-20 13:26:46', '2024-04-07 10:02:00'),
(96, 'blogTitle_ar', 'الاقسام ', NULL, NULL, '2023-03-20 16:32:59', '2024-05-02 14:01:15'),
(97, 'blogTitle_en', 'Blogs', NULL, NULL, '2023-03-20 16:32:59', '2024-05-02 14:01:15'),
(98, 'address_ar', 'السعودية', NULL, NULL, '2023-03-21 10:02:39', '2023-07-24 14:20:06'),
(99, 'address_en', 'Saudi Arabia', NULL, NULL, '2023-03-21 10:02:39', '2024-04-25 12:43:48'),
(100, 'categoriesTitle_ar', 'الاقسام ', NULL, NULL, '2023-03-21 17:04:46', '2024-05-02 14:01:15'),
(101, 'categoriesTitle_en', 'sections', NULL, NULL, '2023-03-21 17:04:46', '2024-05-02 14:01:15'),
(102, 'aboutUsTitle_ar', 'من نحن', NULL, NULL, '2023-03-23 10:49:10', '2023-05-09 23:59:14'),
(103, 'aboutUsTitle_en', 'About Us', NULL, NULL, '2023-03-23 10:49:10', '2023-05-09 23:59:14'),
(104, 'aboutUsDescription_ar', '<p>Ad neque quae ullam .</p>', NULL, NULL, '2023-03-23 10:49:10', '2024-04-03 13:59:10'),
(105, 'aboutUsDescription_en', '<p>Omnis recusandae. Qu.</p>', NULL, NULL, '2023-03-23 10:49:10', '2024-04-03 13:59:10'),
(144, 'favicon', '80tMGj6t2rmVIjdIWL8uOuZOmIwg3dOZZkivDthe.png', NULL, NULL, '2024-04-02 10:26:45', '2024-04-02 10:26:45'),
(145, 'pinterest', 'https://pinterest.com', NULL, NULL, '2024-04-02 10:37:50', '2024-04-02 10:37:50'),
(146, 'reddit', 'https://reddit.com', NULL, NULL, '2024-04-02 10:37:50', '2024-04-02 10:37:50'),
(106, 'aboutUsLogo', '', NULL, NULL, '2023-03-23 10:49:10', '2024-04-02 10:13:20'),
(107, 'homeSliderImage4', '', NULL, NULL, '2023-03-23 21:33:43', '2023-07-24 13:34:38'),
(108, 'PayPalImage', 'kKrb71gGGeKC7GvPha2favpqg4kXmT6l8yjuNbGN.png', NULL, NULL, '2023-03-23 21:41:50', '2024-04-07 10:44:06'),
(109, 'MastercardImage', 'vmaEm2n8tlfg7mOgiyVrJmxjGVgtRniVEzKlrX6B.png', NULL, NULL, '2023-03-23 21:41:50', '2024-04-07 10:25:28'),
(110, 'VisaImage', 'EHsh1VRltysBtF9cCfcNTAULYDUJ8JrhVDOQR5iX.png', NULL, NULL, '2023-03-23 21:41:50', '2024-04-07 10:25:28'),
(111, 'paymentImage_1', 'eqdjoCiLS4ZD1vk5NEKKQ9qMVfO34z65gioAqg7W.png', NULL, NULL, '2023-03-24 00:16:21', '2024-04-07 10:49:25'),
(112, 'paymentImage_2', 'FMPmoDeQxq3hcPq83ipQ1oDR5Mjspu6RVmqDqJw9.png', NULL, NULL, '2023-03-24 00:16:21', '2024-04-07 10:49:25'),
(113, 'paymentImage_3', '10AZ3fsGau4ADb7Kq77tIuG0Ixz4QmFBdVqUgzA6.png', NULL, NULL, '2023-03-24 00:16:21', '2024-04-07 10:49:25'),
(114, 'paymentImage_4', '', NULL, NULL, '2023-03-25 21:42:56', '2023-03-25 23:44:37'),
(115, 'popupModal', 'u06ep0oGA4wDwLg8nRCiBYZ6n0aVb0vQj2nn6s1Q.jpg', NULL, NULL, '2023-04-05 14:31:27', '2024-04-02 10:03:43'),
(116, 'productsMainImage', 'JtRGUBcR02bFfhbh2AGMNXOJAHgufVaXQyMmOWmm.png', NULL, NULL, '2023-04-10 10:34:14', '2024-04-07 10:21:30'),
(117, 'mainPageNotification1_ar', 'شحن مجاني', NULL, NULL, '2023-04-11 13:11:24', '2023-06-14 15:08:30'),
(118, 'mainPageNotification1_en', 'Free Shipping', NULL, NULL, '2023-04-11 13:11:24', '2023-06-14 15:08:30'),
(119, 'mainPageNotification2_ar', 'بطاقة هدايا لجميع الموسم', NULL, NULL, '2023-04-11 13:11:24', '2023-04-11 13:11:24'),
(120, 'mainPageNotification2_en', 'Gift Card for all the season', NULL, NULL, '2023-04-11 13:11:24', '2023-04-11 13:11:24'),
(121, 'mainPageNotification3_ar', 'بطاقة هدايا لجميع الموسم', NULL, NULL, '2023-04-11 13:11:24', '2023-04-11 13:11:24'),
(122, 'mainPageNotification3_en', 'Gift Card for all the season', NULL, NULL, '2023-04-11 13:11:24', '2023-04-11 13:11:24'),
(123, 'advertisementCode_ar1', '<p>Pariatur? Ut sed a m.</p>', NULL, NULL, '2023-04-16 10:04:17', '2024-04-03 13:59:10'),
(124, 'advertisementCode_en1', '<p>Sit sint eum dolor q.</p>', NULL, NULL, '2023-04-16 10:04:17', '2024-04-03 13:59:10'),
(125, 'advertisementCode_ar2', '<p>Repellendus. Non eos.</p>', NULL, NULL, '2023-04-16 10:04:17', '2024-04-03 13:59:10'),
(126, 'advertisementCode_en2', '<p>Dolorem eum perspici.</p>', NULL, NULL, '2023-04-16 10:04:17', '2024-04-03 13:59:10'),
(127, 'advertisementCode_ar3', '<p>Minima quam et tempo.</p>', NULL, NULL, '2023-04-16 10:04:17', '2024-04-03 13:59:10'),
(128, 'advertisementCode_en3', '<p>Non suscipit adipisc.</p>', NULL, NULL, '2023-04-16 10:04:17', '2024-04-03 13:59:10'),
(129, 'advertisementCode_ar4', '<p>Maxime natus modi am.</p>', NULL, NULL, '2023-04-16 10:04:17', '2024-04-03 13:59:10'),
(130, 'advertisementCode_en4', '<p>Voluptate excepturi .</p>', NULL, NULL, '2023-04-16 10:04:17', '2024-04-03 13:59:10'),
(131, 'snapchat', 'https://www.snapchat.com/add/muralestore.sa', NULL, NULL, '2023-08-23 15:01:51', '2024-04-02 10:43:05'),
(132, 'tiktok', 'https://www.tiktok.com/@murale.store', NULL, NULL, '2023-08-23 15:01:51', '2024-04-02 10:43:05'),
(133, 'lastBannerImage', 'DRhivflpNp0qBxU7oI838nKzYeSF0Wuqtwaj5DgJ.png', NULL, NULL, '2023-08-24 07:58:38', '2024-04-07 10:03:18'),
(136, 'giftsBannerText_ar', '', NULL, NULL, '2023-09-06 16:49:48', '2023-09-06 16:49:48'),
(137, 'giftsBannerText_en', '', NULL, NULL, '2023-09-06 16:49:48', '2023-09-06 16:49:48'),
(138, 'chashBackShare', '', NULL, NULL, '2023-09-07 09:31:16', '2023-09-07 09:31:16'),
(139, 'giftsBannerImg', 'gOjs4QLVbij6yTTMvVlXcx3nwE38f64e7XGoNAAG.webp', NULL, NULL, '2023-09-07 09:31:16', '2024-04-07 10:00:09'),
(140, 'appAdvertisementImage1', 'qXjwQO1U5tBAhpourMFAg3mCxKC1vzCN7MKZtXcg.png', NULL, NULL, '2023-09-10 11:56:43', '2024-04-07 10:02:01'),
(141, 'appAdvertisementImage2', 'QbDa3hwsB6Wjf35A8CAeTyiG4ggg1ZWZd4Y5pMI6.png', NULL, NULL, '2023-09-10 11:56:43', '2024-04-07 10:03:57'),
(142, 'appHomeBanner', 'LmC6KQtMasm51Z8RAOJOMZd2tBJ6s40PcQP1NFih.png', NULL, NULL, '2023-09-10 11:56:43', '2024-04-07 10:16:15'),
(143, 'cashBackValue', '10', NULL, NULL, NULL, '2024-03-05 15:57:46');

-- --------------------------------------------------------

--
-- بنية الجدول `shipping_locations`
--

CREATE TABLE `shipping_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `shipping_locations`
--

INSERT INTO `shipping_locations` (`id`, `name_ar`, `name_en`, `price`, `created_at`, `updated_at`) VALUES
(1, 'سندوب', 'sandob', '500', '2023-04-08 23:32:16', '2023-04-08 23:32:16'),
(2, 'شربين', 'Sherbeen', '200', '2023-04-08 23:33:28', '2023-04-08 23:33:28'),
(3, 'الدقهليه', 'daqhlia', '100', '2023-04-09 10:42:01', '2023-04-09 10:42:01');

-- --------------------------------------------------------

--
-- بنية الجدول `shipping_locations_items`
--

CREATE TABLE `shipping_locations_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_location_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `governorate_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=FIXED;

--
-- إرجاع أو استيراد بيانات الجدول `shipping_locations_items`
--

INSERT INTO `shipping_locations_items` (`id`, `shipping_location_id`, `country_id`, `governorate_id`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 3, 1, NULL, NULL),
(2, 2, 3, 3, 1, NULL, NULL),
(3, 3, 3, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `specifications`
--

CREATE TABLE `specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `ordering` varchar(255) NOT NULL DEFAULT '0',
  `specification_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `specifications`
--

INSERT INTO `specifications` (`id`, `name_ar`, `name_en`, `ordering`, `specification_type_id`, `created_at`, `updated_at`) VALUES
(1, 'الوصف', 'description', '3', 1, '2023-02-20 10:25:31', '2023-02-20 10:27:52'),
(2, 'تجربة 1', 'Experiment 1', '1', 2, '2023-02-20 10:26:00', '2023-02-20 10:26:00'),
(3, 'تجربه', 'test', '7', 2, '2023-03-09 11:47:39', '2023-03-09 11:47:48'),
(4, 'لون', 'color', '2', 5, '2023-08-28 10:48:38', '2023-08-28 10:48:38'),
(5, 'العمر', 'age', '1', 6, '2023-08-28 20:22:00', '2023-08-28 20:22:00');

-- --------------------------------------------------------

--
-- بنية الجدول `specification_types`
--

CREATE TABLE `specification_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `specification_types`
--

INSERT INTO `specification_types` (`id`, `name_ar`, `name_en`, `ordering`, `created_at`, `updated_at`) VALUES
(1, 'التقنية', 'Technology', 1, '2023-02-19 11:58:41', '2023-02-19 11:58:41'),
(2, 'الذاكرة', 'memory', 3, '2023-02-19 11:58:56', '2023-02-27 15:17:18'),
(3, 'اللوحة الأم', 'Motherboard', 0, '2023-02-19 11:59:17', '2023-02-19 11:59:17'),
(4, 'تجربه', 'test', 8, '2023-03-09 11:48:06', '2023-03-09 11:48:06'),
(5, 'لون', 'color', 5, '2023-08-28 10:48:15', '2023-08-28 10:48:15'),
(6, 'العمر', 'age', 1, '2023-08-28 20:20:20', '2023-08-28 20:20:20');

-- --------------------------------------------------------

--
-- بنية الجدول `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `status`, `created_at`, `updated_at`) VALUES
(18, 'uaFOHD.ttdcwcp@tarboosh.shop', 1, '2024-02-17 16:37:17', '2024-02-17 16:37:17'),
(17, 'yOifHF.wwtdmqj@wheelry.boats', 1, '2024-02-15 07:36:55', '2024-02-15 07:36:55'),
(16, 'WJkfjb.dqqccpm@rushlight.cfd', 1, '2024-02-11 00:04:21', '2024-02-11 00:04:21'),
(15, 'BUemLD.pcttjqj@wheelry.boats', 1, '2024-02-10 03:08:58', '2024-02-10 03:08:58'),
(14, '29.01hk6n0r3bz6v05waawj4sachg@mail5u.run', 1, '2024-01-31 16:34:16', '2024-01-31 16:34:16'),
(19, 'HF0A_generic_b18a5b28_murale.store@serviseantilogin.com', 1, '2024-08-26 04:47:21', '2024-08-26 04:47:21'),
(20, 'iC1y_generic_b18a5b28_murale.store@serviseantilogin.com', 1, '2024-08-31 00:02:57', '2024-08-31 00:02:57'),
(21, 'tQrn_generic_b18a5b28_murale.store@serviseantilogin.com', 1, '2024-09-11 03:40:53', '2024-09-11 03:40:53'),
(22, 'bjezsjzrzue@dont-reply.me', 1, '2024-09-15 05:11:52', '2024-09-15 05:11:52'),
(23, 'darrellqe_medinadg@outlook.com', 1, '2024-09-21 08:48:22', '2024-09-21 08:48:22'),
(24, 'cochranpeggi52@gmail.com', 1, '2024-09-24 14:34:34', '2024-09-24 14:34:34'),
(25, 'codydeak6@outlook.com', 1, '2024-11-07 17:17:01', '2024-11-07 17:17:01'),
(26, 'arroyosyzigb947@gmail.com', 1, '2024-11-08 19:03:07', '2024-11-08 19:03:07'),
(27, 'kgjt_ccaa0e3164a502a5ace0e8c3d61582056c79abd4@trustmailticket.com', 1, '2024-11-09 18:50:20', '2024-11-09 18:50:20'),
(28, 'crewellosgerician@yahoo.com', 1, '2024-11-18 10:16:34', '2024-11-18 10:16:34'),
(29, 'fpotterkm@gmail.com', 1, '2024-11-20 20:14:51', '2024-11-20 20:14:51'),
(30, 'st.fiofab@yahoo.com', 1, '2024-11-23 18:34:17', '2024-11-23 18:34:17'),
(31, 'aikhanovahufhm@yahoo.com', 1, '2024-11-24 15:56:38', '2024-11-24 15:56:38'),
(32, 'reelilmjlue@dont-reply.me', 1, '2025-02-15 03:11:36', '2025-02-15 03:11:36'),
(33, 'akerleim1990@gmail.com', 1, '2025-02-15 18:58:25', '2025-02-15 18:58:25'),
(34, 'juikcway@do-not-respond.me', 1, '2025-02-16 04:39:02', '2025-02-16 04:39:02'),
(35, 'icwswghw@do-not-respond.me', 1, '2025-02-16 04:39:02', '2025-02-16 04:39:02'),
(36, 'rydyardf@gmail.com', 1, '2025-02-16 11:16:02', '2025-02-16 11:16:02'),
(37, 'villiwelch1987@gmail.com', 1, '2025-02-17 03:12:42', '2025-02-17 03:12:42'),
(38, 'sapfircr@gmail.com', 1, '2025-02-17 19:46:50', '2025-02-17 19:46:50'),
(39, 'donaldsonjustin28@gmail.com', 1, '2025-02-19 08:01:05', '2025-02-19 08:01:05'),
(40, 'tamagishabe@yahoo.com', 1, '2025-02-20 13:09:44', '2025-02-20 13:09:44'),
(41, 'whisperoui84chime48oi@gmail.com', 1, '2025-02-21 12:38:36', '2025-02-21 12:38:36'),
(42, 'bautistakristif29@gmail.com', 1, '2025-02-23 02:31:42', '2025-02-23 02:31:42'),
(43, 'mqndbnah@do-not-respond.me', 1, '2025-02-23 05:38:02', '2025-02-23 05:38:02'),
(44, 'bfezayej@do-not-respond.me', 1, '2025-02-23 05:38:02', '2025-02-23 05:38:02'),
(45, 'qle4xaeun7jdqn6@yahoo.com', 1, '2025-02-23 18:53:10', '2025-02-23 18:53:10'),
(46, 'obsidianuytalisman26@gmail.com', 1, '2025-02-24 14:26:19', '2025-02-24 14:26:19'),
(47, 'vxm4xnfl5rcgj@yahoo.com', 1, '2025-02-25 13:48:16', '2025-02-25 13:48:16');

-- --------------------------------------------------------

--
-- بنية الجدول `tax_costs`
--

CREATE TABLE `tax_costs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_type_id` bigint(20) UNSIGNED NOT NULL,
  `basedOn` enum('ShippingAddress','PaymentAddress','StoreAddress') NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=FIXED;

--
-- إرجاع أو استيراد بيانات الجدول `tax_costs`
--

INSERT INTO `tax_costs` (`id`, `tax_rate_id`, `tax_type_id`, `basedOn`, `priority`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'PaymentAddress', 1, NULL, NULL),
(2, 2, 1, 'StoreAddress', 1, NULL, NULL),
(3, 2, 2, 'PaymentAddress', 4, NULL, NULL),
(4, 2, 2, 'PaymentAddress', 4, NULL, NULL),
(5, 1, 3, 'StoreAddress', 90, NULL, NULL),
(6, 2, 4, 'StoreAddress', 20, NULL, NULL),
(7, 2, 5, 'StoreAddress', 72, NULL, NULL),
(8, 1, 5, 'StoreAddress', 72, NULL, NULL),
(9, 1, 6, 'ShippingAddress', 0, NULL, NULL),
(10, 2, 6, 'ShippingAddress', 0, NULL, NULL),
(11, 2, 7, 'ShippingAddress', 0, NULL, NULL),
(12, 2, 7, 'ShippingAddress', 0, NULL, NULL),
(13, 2, 8, 'PaymentAddress', 52, NULL, NULL),
(14, 2, 8, 'PaymentAddress', 52, NULL, NULL),
(37, 6, 9, 'PaymentAddress', 1, NULL, NULL),
(17, 1, 10, 'ShippingAddress', 55, NULL, NULL),
(18, 2, 10, 'ShippingAddress', 55, NULL, NULL),
(19, 1, 11, 'ShippingAddress', 0, NULL, NULL),
(20, 1, 11, 'ShippingAddress', 0, NULL, NULL),
(21, 1, 12, 'ShippingAddress', 0, NULL, NULL),
(22, 1, 12, 'ShippingAddress', 0, NULL, NULL),
(23, 1, 13, 'ShippingAddress', 0, NULL, NULL),
(24, 1, 13, 'ShippingAddress', 0, NULL, NULL),
(25, 1, 14, 'ShippingAddress', 0, NULL, NULL),
(26, 2, 14, 'ShippingAddress', 0, NULL, NULL),
(27, 1, 15, 'ShippingAddress', 0, NULL, NULL),
(28, 1, 15, 'ShippingAddress', 0, NULL, NULL),
(29, 1, 16, 'PaymentAddress', 43, NULL, NULL),
(30, 1, 16, 'PaymentAddress', 43, NULL, NULL),
(31, 2, 17, 'PaymentAddress', 34, NULL, NULL),
(32, 1, 17, 'PaymentAddress', 34, NULL, NULL),
(33, 1, 18, 'ShippingAddress', 9, NULL, NULL),
(34, 2, 18, 'ShippingAddress', 30, NULL, NULL),
(35, 1, 19, 'StoreAddress', 100, NULL, NULL),
(36, 2, 19, 'PaymentAddress', 200, NULL, NULL),
(38, 8, 21, 'StoreAddress', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `type` enum('percent','fixed') NOT NULL DEFAULT 'fixed',
  `geographicalArea` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `tax_rates`
--

INSERT INTO `tax_rates` (`id`, `name_ar`, `name_en`, `price`, `type`, `geographicalArea`, `created_at`, `updated_at`) VALUES
(6, 'السعر شامل الضريبة', 'The price includes tax', '0', 'fixed', 'UK VAT Zone', '2024-01-28 15:15:29', '2024-02-21 10:12:57'),
(8, 'xzcxz', 'zcxzxc', '10', 'percent', 'SA', '2024-04-14 12:57:58', '2024-04-14 12:57:58');

-- --------------------------------------------------------

--
-- بنية الجدول `tax_types`
--

CREATE TABLE `tax_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `description_ar` varchar(255) NOT NULL,
  `description_en` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `tax_types`
--

INSERT INTO `tax_types` (`id`, `name_ar`, `name_en`, `description_ar`, `description_en`, `created_at`, `updated_at`) VALUES
(1, 'بدون ضريبة', 'Downloadable Products', 'Downloadable', 'Downloadable', '2023-02-18 15:10:15', '2024-02-07 12:35:45'),
(9, 'سلع خاضعة للضريبة', 'Taxable Goods', 'البضائع الخاضعة للضريبة', 'Taxed goods', '2023-02-19 10:20:35', '2023-02-19 10:20:35'),
(21, 'تجربة', 'test', 'cc', 'cc', '2024-04-14 12:58:12', '2024-04-14 12:58:12');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `userName` varchar(60) DEFAULT NULL,
  `responsible` text DEFAULT NULL,
  `commission` varchar(10) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `role` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `block` int(11) DEFAULT 0,
  `photo` text DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `governorate` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `website` text DEFAULT NULL,
  `language` varchar(3) DEFAULT 'ar',
  `provider` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `verifyCode` tinyint(1) NOT NULL DEFAULT 0,
  `checkCode` varchar(255) DEFAULT NULL,
  `licenseId` text DEFAULT NULL,
  `licensePhoto` text DEFAULT NULL,
  `resetCode` text DEFAULT NULL,
  `birthdate` varchar(30) DEFAULT NULL,
  `google_id` varchar(30) DEFAULT NULL,
  `facebook_id` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `SocialToken` longtext CHARACTER SET ujis COLLATE ujis_japanese_ci DEFAULT NULL,
  `homeAddress` varchar(255) DEFAULT NULL,
  `workAddress` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `name`, `userName`, `responsible`, `commission`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `active`, `block`, `photo`, `country`, `governorate`, `city`, `phone`, `mobile`, `website`, `language`, `provider`, `provider_id`, `otp`, `verifyCode`, `checkCode`, `licenseId`, `licensePhoto`, `resetCode`, `birthdate`, `google_id`, `facebook_id`, `created_at`, `updated_at`, `SocialToken`, `homeAddress`, `workAddress`, `address`) VALUES
(1, 'محمد', 'admin', NULL, NULL, 'admin@admin.com', '1', '2024-05-09 09:24:42', '$2y$10$5BonMNM9UB.rpqFpR1Dkqe7kTlMaklhrFD35c26nNd03W6.0spIUy', NULL, 1, 0, 'Ixpb1KVr7R9yn6TuSFDx6Xm2W73ESYp3tS9eYf39.png', '9', NULL, 'المحتلين ولاد ال**ص', '01000000000', NULL, NULL, 'en', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 16:38:28', '2025-02-15 01:22:13', NULL, 'مصر ام الدنيا', 'فلسطين قلبي من جوا ربنا ينجيهم', NULL),
(322, 'Fulton Leonard', NULL, NULL, NULL, 'qopobo@mailinator.com', '2', NULL, '$2y$10$L.ficmleokH5iBEXRKKFWu8RjlPAwLpzmqVsmYXyPW2TUSAR8CGUC', NULL, 1, 0, NULL, NULL, NULL, NULL, '+1 (723) 834-7899', NULL, NULL, 'ar', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '1986-06-18', NULL, NULL, '2024-04-23 16:10:52', '2024-04-23 16:10:52', NULL, NULL, NULL, NULL),
(358, 'ahmed ramadan', NULL, NULL, NULL, 'ahmedromio233@gmail.com', '2', '2024-05-12 09:56:36', '$2y$10$5rKp8xH4lmdZ3csHp0zFjepJOzO1J8rwI60si9CN8d2KHBEA/rcby', NULL, 1, 0, NULL, NULL, NULL, NULL, '00966552446395', NULL, NULL, 'ar', NULL, NULL, 728317, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-12 09:56:03', '2024-05-12 09:56:36', NULL, NULL, NULL, NULL),
(359, 'aaaaaaaaaaa', NULL, NULL, NULL, 'amaniramadan3333@gmail.com', '2', NULL, '$2y$10$d.RDthJBlimHSFCR/ZOqXe3bdXpDkg03mzhaAs8WVVyI2gY5YyHMO', NULL, 1, 0, NULL, NULL, NULL, NULL, '00966552446395', NULL, NULL, 'ar', NULL, NULL, 236010, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-13 08:17:50', '2024-05-13 08:17:50', NULL, NULL, NULL, NULL),
(360, 'ahmed ramadan', NULL, NULL, NULL, 'ahmedramadan3333@outlook.com', '2', '2024-05-13 08:21:33', '$2y$10$hCNIy5rfuvI3fCIwzKZ.zuGrTcmsXeHZsOHKQPIFTAVnCCAIKthSC', NULL, 1, 0, NULL, NULL, NULL, NULL, '00966552446395', NULL, NULL, 'ar', NULL, NULL, 833564, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-13 08:21:07', '2024-05-13 08:21:33', NULL, NULL, NULL, NULL),
(361, 'Abdelrhman', NULL, NULL, NULL, 'abdelrhman.work.a@gmail.com', '2', NULL, '$2y$10$FP.GZxbIInnys90rXMrHZ.9vJ7Zkr0QmL9.XfAIrwDMK4fXAeMB/6', NULL, 1, 0, NULL, NULL, NULL, NULL, '00966552446395', NULL, NULL, 'ar', NULL, NULL, 208701, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-23 14:28:40', '2024-05-23 14:28:40', NULL, NULL, NULL, NULL),
(362, 'Arden Mccarthy', NULL, NULL, NULL, 'technmasrpmteam@gmail.com', '2', NULL, '$2y$10$uagbbtHtB1I7e6zm2MRqgOeFTNhcBWblg0Xi6gmrSi0O9JmsAjKuG', NULL, 1, 0, NULL, NULL, NULL, NULL, '00966552446393', NULL, NULL, 'ar', NULL, NULL, 547557, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-23 14:29:43', '2024-05-23 14:29:43', NULL, NULL, NULL, NULL),
(363, 'Muhammaf Abdulrazk', NULL, NULL, NULL, 'eng.muhammadabdulrazek@outlook.com', '2', NULL, '$2y$10$8QIkCNJrrjbA1b7SQ1rkM.XpX44p91bnWEVpg.CE3/2xPqIC7imy2', NULL, 1, 0, NULL, NULL, NULL, NULL, '0502907689', NULL, NULL, 'ar', NULL, NULL, 681458, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-30 13:29:50', '2024-05-30 13:29:50', NULL, NULL, NULL, NULL),
(364, 'Muhammad Abdulrazek', NULL, NULL, NULL, 'eng.muhammadabdulrazek2@outlook.com', '2', NULL, '$2y$10$6YMj//NvWuYq5si/TwFKV.T6bmubGRrFITnEEiqf7He5FwacTPNdq', NULL, 1, 0, NULL, NULL, NULL, NULL, '0507773885', NULL, NULL, 'ar', NULL, NULL, 687509, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-30 13:42:36', '2024-05-30 13:42:36', NULL, NULL, NULL, NULL),
(366, 'Arden Mccarthy', NULL, NULL, NULL, 'abdallahomarel@gmail.com', '2', '2024-05-30 14:14:02', '$2y$10$RRkbeIDVocWuZ6Q1G4Mv3.U52KM8QVUKk5j.3MnKmW42Xb5hfLHny', NULL, 1, 0, NULL, NULL, NULL, NULL, '0552446395', NULL, NULL, 'ar', NULL, NULL, 917106, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-30 14:13:20', '2024-05-30 14:14:02', NULL, NULL, NULL, NULL),
(367, 'محمد محمود', NULL, NULL, NULL, 'test2@test.com', NULL, NULL, '$2y$10$IiufOdfd1R3jYqzO6/dHQuL64q563uP9nLEOaLz08jtwRPgTDlX7m', NULL, 1, 0, 'WlsZz4vTGGTkrxRCrmXyZPqLDTwEjYLCRvNK6HDB.png', NULL, NULL, NULL, '123456789', NULL, NULL, 'ar', NULL, NULL, NULL, 0, NULL, NULL, NULL, '595998', NULL, NULL, NULL, '2025-01-22 11:06:15', '2025-01-22 11:11:52', NULL, NULL, NULL, 'عنوان تفصيلي'),
(368, 'soGLOsTh', NULL, NULL, NULL, 'akerleim1990@gmail.com', '2', NULL, '$2y$10$GLOzHG4g9AMEkc1cZ3GfGOy18j3PIe5juY7.ueLULVSkfoj8jKDOe', NULL, 1, 0, NULL, NULL, NULL, NULL, '3928027925', NULL, NULL, 'ar', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-02-15', NULL, NULL, '2025-02-15 18:58:41', '2025-02-15 18:58:41', NULL, NULL, NULL, NULL),
(369, 'MFuCyRcrr', NULL, NULL, NULL, 'rydyardf@gmail.com', '2', NULL, '$2y$10$Aau6iOABwpBZ3r0yi3PXYOQqcCU1blhW.kfJIl1ZtxZxf5s2Y7kZy', NULL, 1, 0, NULL, NULL, NULL, NULL, '3939724429', NULL, NULL, 'ar', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-02-16', NULL, NULL, '2025-02-16 11:16:17', '2025-02-16 11:16:17', NULL, NULL, NULL, NULL),
(370, 'vhUfjHlCMfy', NULL, NULL, NULL, 'villiwelch1987@gmail.com', '2', NULL, '$2y$10$09vD0NKbeONCkpX1StYG7urmOuKJ95GDIZ6z4iqKPq3D6MJX82nvK', NULL, 1, 0, NULL, NULL, NULL, NULL, '6249865347', NULL, NULL, 'ar', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-02-16', NULL, NULL, '2025-02-17 03:12:55', '2025-02-17 03:12:55', NULL, NULL, NULL, NULL),
(371, 'IlmzjwHSfD', NULL, NULL, NULL, 'sapfircr@gmail.com', '2', NULL, '$2y$10$tgnENRAb3VsGP6qyxrhzFOxNf4nRu.ekK9KRNxijpcKlxDlnYGtbq', NULL, 1, 0, NULL, NULL, NULL, NULL, '4936022695', NULL, NULL, 'ar', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-02-17', NULL, NULL, '2025-02-17 19:47:02', '2025-02-17 19:47:02', NULL, NULL, NULL, NULL),
(372, 'sOgWXnOCrnIHR', NULL, NULL, NULL, 'donaldsonjustin28@gmail.com', '2', NULL, '$2y$10$P0svBtdQkNLao9y3wleFmOlULeawRHm/NjwlpAAjd8bSiNGE5HdbW', NULL, 1, 0, NULL, NULL, NULL, NULL, '6036502392', NULL, NULL, 'ar', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-02-19', NULL, NULL, '2025-02-19 08:01:17', '2025-02-19 08:01:17', NULL, NULL, NULL, NULL),
(373, 'kAbRXekoHPa', NULL, NULL, NULL, 'tamagishabe@yahoo.com', '2', NULL, '$2y$10$8GIKo2GhOqtiyqQw1t2rDuOwPege41fKR5ywq2ZHvi2xcN.qtNBM2', NULL, 1, 0, NULL, NULL, NULL, NULL, '5188987032', NULL, NULL, 'ar', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-02-20', NULL, NULL, '2025-02-20 13:09:56', '2025-02-20 13:09:56', NULL, NULL, NULL, NULL),
(374, 'lHRtsInpLc', NULL, NULL, NULL, 'whisperoui84chime48oi@gmail.com', '2', NULL, '$2y$10$VSrv/6c9gfYTgm3vvj8EPeuRX3rRQMxrgOrsKOMdnvs00KeLcz.R6', NULL, 1, 0, NULL, NULL, NULL, NULL, '8749598206', NULL, NULL, 'ar', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-02-21', NULL, NULL, '2025-02-21 12:38:48', '2025-02-21 12:38:48', NULL, NULL, NULL, NULL),
(375, 'WEVTYrBYSocE', NULL, NULL, NULL, 'bautistakristif29@gmail.com', '2', NULL, '$2y$10$KwhvTk6sbMcbfYW16LbCr.r3TYbPdW.sUS7ZoQknizW3Do5wKeagG', NULL, 1, 0, NULL, NULL, NULL, NULL, '2149158077', NULL, NULL, 'ar', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-02-22', NULL, NULL, '2025-02-23 02:31:58', '2025-02-23 02:31:58', NULL, NULL, NULL, NULL),
(376, 'hmTMnazxlVMDtr', NULL, NULL, NULL, 'qle4xaeun7jdqn6@yahoo.com', '2', NULL, '$2y$10$nEnNEEXTMsdAIhTYAFSxB.tnF6u8HcWVlzdFbGgBRxz.7awNMYpkC', NULL, 1, 0, NULL, NULL, NULL, NULL, '3869413449', NULL, NULL, 'ar', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-02-23', NULL, NULL, '2025-02-23 18:53:38', '2025-02-23 18:53:38', NULL, NULL, NULL, NULL),
(377, 'ohVdELPdtOrFEnZ', NULL, NULL, NULL, 'obsidianuytalisman26@gmail.com', '2', NULL, '$2y$10$lI8iNV3G5TsVt3l.C4C3nukJVOmKcEgp1P7CWbzsybq5cZ6TViqqa', NULL, 1, 0, NULL, NULL, NULL, NULL, '9762078926', NULL, NULL, 'ar', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-02-24', NULL, NULL, '2025-02-24 14:26:36', '2025-02-24 14:26:36', NULL, NULL, NULL, NULL),
(378, 'snTQmtaizHOxL', NULL, NULL, NULL, 'vxm4xnfl5rcgj@yahoo.com', '2', NULL, '$2y$10$oH1UQ.6miiioe0zdBvTSBeSY4X6/7pEcD6MGPyz.MMKXtLWJtph16', NULL, 1, 0, NULL, NULL, NULL, NULL, '8705175225', NULL, NULL, 'ar', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-02-25', NULL, NULL, '2025-02-25 13:48:27', '2025-02-25 13:48:27', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `region` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `postalCode` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `postal_code`, `country`, `region`, `city`, `address`, `phone`, `name`, `first_name`, `last_name`, `email`, `postalCode`, `type`, `created_at`, `updated_at`) VALUES
(131, '360', '25252', '1', '1', '3', 'dfgvdfgdfgdf', '00966552446395', NULL, 'sdfsdfsdf', 'sdfsdfsdfsdf', 'ahmedramadan3333@outlook.com', NULL, 'shipping', '2024-05-13 08:26:14', '2024-05-13 08:26:14');

-- --------------------------------------------------------

--
-- بنية الجدول `user_payment_methods`
--

CREATE TABLE `user_payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `card_cvv` varchar(255) NOT NULL,
  `card_month` varchar(255) NOT NULL,
  `card_year` varchar(255) NOT NULL,
  `card_date` varchar(255) NOT NULL,
  `primary` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- بنية الجدول `weights`
--

CREATE TABLE `weights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `unit_weight_ar` varchar(255) NOT NULL,
  `unit_weight_en` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `primary` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- إرجاع أو استيراد بيانات الجدول `weights`
--

INSERT INTO `weights` (`id`, `title_ar`, `title_en`, `unit_weight_ar`, `unit_weight_en`, `value`, `primary`, `created_at`, `updated_at`) VALUES
(1, 'كيلو جرام', 'kilogram', 'كلغ', 'kg', '1', 0, '2023-02-19 16:41:23', '2023-03-09 10:57:56'),
(2, 'اونصة', 'ounce', 'اونص', 'ounce', '35.27400000', 0, '2023-02-19 16:41:50', '2023-02-19 16:41:50'),
(3, 'جرام', 'geram', 'ج', 'g', '1', 1, '2023-03-09 10:57:50', '2023-03-09 10:57:56');

-- --------------------------------------------------------

--
-- بنية الجدول `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=FIXED;

--
-- إرجاع أو استيراد بيانات الجدول `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(27, 1, 81, '2024-05-14 08:16:03', '2024-05-14 08:16:03'),
(28, 1, 83, '2024-05-14 08:18:18', '2024-05-14 08:18:18'),
(29, 366, 93, '2024-05-30 16:51:58', '2024-05-30 16:51:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `carts_cookie_id_product_id_unique` (`cookie_id`,`product_id`) USING BTREE,
  ADD KEY `carts_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `carts_product_id_foreign` (`product_id`) USING BTREE;

--
-- Indexes for table `cash_backs`
--
ALTER TABLE `cash_backs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `items_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `items_page_id_foreign` (`page_id`) USING BTREE,
  ADD KEY `items_menu_id_foreign` (`menu_id`) USING BTREE;

--
-- Indexes for table `lengths`
--
ALTER TABLE `lengths`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`) USING BTREE;

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `options_option_type_id_foreign` (`option_type_id`) USING BTREE;

--
-- Indexes for table `option_categories`
--
ALTER TABLE `option_categories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `option_types`
--
ALTER TABLE `option_types`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `option_types_option_category_id_foreign` (`option_category_id`) USING BTREE;

--
-- Indexes for table `option_values`
--
ALTER TABLE `option_values`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `option_values_option_id_foreign` (`option_id`) USING BTREE,
  ADD KEY `option_values_option_type_id_foreign` (`option_type_id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `order_addresses`
--
ALTER TABLE `order_addresses`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `order_addresses_order_id_foreign` (`order_id`) USING BTREE,
  ADD KEY `order_addresses_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `order_items_order_id_foreign` (`order_id`) USING BTREE,
  ADD KEY `order_items_product_id_foreign` (`product_id`) USING BTREE,
  ADD KEY `order_items_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `order_item_options`
--
ALTER TABLE `order_item_options`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indexes for table `polices`
--
ALTER TABLE `polices`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `products_tax_type_id_foreign` (`tax_type_id`) USING BTREE,
  ADD KEY `products_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `products_length_id_foreign` (`length_id`) USING BTREE,
  ADD KEY `products_weights_id_foreign` (`weights_id`) USING BTREE,
  ADD KEY `products_option_type_id_foreign` (`option_type_id`) USING BTREE;

--
-- Indexes for table `product_discounts`
--
ALTER TABLE `product_discounts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `product_discounts_product_id_foreign` (`product_id`) USING BTREE;

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `product_images_product_id_foreign` (`product_id`) USING BTREE;

--
-- Indexes for table `product_option`
--
ALTER TABLE `product_option`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `product_option_product_id_foreign` (`product_id`) USING BTREE,
  ADD KEY `product_option_option_type_id_foreign` (`option_id`) USING BTREE;

--
-- Indexes for table `product_option_items`
--
ALTER TABLE `product_option_items`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `product_reviews_product_id_foreign` (`product_id`) USING BTREE,
  ADD KEY `product_reviews_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `product_special_offers`
--
ALTER TABLE `product_special_offers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `product_special_offers_product_id_foreign` (`product_id`) USING BTREE;

--
-- Indexes for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `product_specifications_product_id_foreign` (`product_id`) USING BTREE,
  ADD KEY `product_specifications_specification_id_foreign` (`specification_id`) USING BTREE;

--
-- Indexes for table `publisher_payments_histories`
--
ALTER TABLE `publisher_payments_histories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `publisher_payment_methods`
--
ALTER TABLE `publisher_payment_methods`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `shipping_locations`
--
ALTER TABLE `shipping_locations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `shipping_locations_items`
--
ALTER TABLE `shipping_locations_items`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `shipping_locations_items_shipping_location_id_foreign` (`shipping_location_id`) USING BTREE,
  ADD KEY `shipping_locations_items_country_id_foreign` (`country_id`) USING BTREE,
  ADD KEY `shipping_locations_items_governorate_id_foreign` (`governorate_id`) USING BTREE,
  ADD KEY `shipping_locations_items_city_id_foreign` (`city_id`) USING BTREE;

--
-- Indexes for table `specifications`
--
ALTER TABLE `specifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `specifications_specification_type_id_foreign` (`specification_type_id`) USING BTREE;

--
-- Indexes for table `specification_types`
--
ALTER TABLE `specification_types`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tax_costs`
--
ALTER TABLE `tax_costs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `tax_costs_tax_rate_id_foreign` (`tax_rate_id`) USING BTREE,
  ADD KEY `tax_costs_tax_type_id_foreign` (`tax_type_id`) USING BTREE;

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tax_types`
--
ALTER TABLE `tax_types`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user_payment_methods`
--
ALTER TABLE `user_payment_methods`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `weights`
--
ALTER TABLE `weights`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `wishlists_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `wishlists_product_id_foreign` (`product_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cash_backs`
--
ALTER TABLE `cash_backs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `lengths`
--
ALTER TABLE `lengths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `option_categories`
--
ALTER TABLE `option_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `option_types`
--
ALTER TABLE `option_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `option_values`
--
ALTER TABLE `option_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `order_addresses`
--
ALTER TABLE `order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `order_item_options`
--
ALTER TABLE `order_item_options`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `polices`
--
ALTER TABLE `polices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `product_discounts`
--
ALTER TABLE `product_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product_option`
--
ALTER TABLE `product_option`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `product_option_items`
--
ALTER TABLE `product_option_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `product_special_offers`
--
ALTER TABLE `product_special_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_specifications`
--
ALTER TABLE `product_specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `publisher_payments_histories`
--
ALTER TABLE `publisher_payments_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publisher_payment_methods`
--
ALTER TABLE `publisher_payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `shipping_locations`
--
ALTER TABLE `shipping_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_locations_items`
--
ALTER TABLE `shipping_locations_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `specifications`
--
ALTER TABLE `specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `specification_types`
--
ALTER TABLE `specification_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tax_costs`
--
ALTER TABLE `tax_costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tax_types`
--
ALTER TABLE `tax_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `user_payment_methods`
--
ALTER TABLE `user_payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weights`
--
ALTER TABLE `weights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
